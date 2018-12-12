/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/DataBaseConnector.java,v 1.14 2007/10/12 17:10:04 g137997 Exp $
 * 
 * DataBaseConnector
 * Created on Mar 6, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.awt.Component;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import com.lxm.utilities.ui.UtilUI;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.14 $
 */
public class DataBaseConnector
{
	private static final String CONFIG_FILE = "database.ini";

	private String mDriver;
	private String mURL;
	private String mUserID;
	private String mPassword;
	
	private Component mDialogParent;
	private LogonPanel mLogonPanel = new LogonPanel();
	private Properties mConfig = new Properties();

	private Connection mConnection;
	
	public DataBaseConnector(Component aDialogParent)
	{
		this.mDialogParent = aDialogParent;
		loadConfigDB();
	}

	private void loadConfigDB() {
		try {
			mConfig.load(new FileInputStream(CONFIG_FILE));
		} catch(IOException exc) {
			// OK if file is missing -- Nothing to do 
		}
		this.mDriver = mConfig.getProperty("db.driver","com.mysql.jdbc.Driver");
		this.mURL = mConfig.getProperty("db.url");
		this.mUserID = mConfig.getProperty("db.userid");
		this.mPassword = mConfig.getProperty("db.password");
	}
	
	private void saveConfigDB(boolean savePassword) {
		mConfig.setProperty("db.driver",mDriver);
		mConfig.setProperty("db.url",mURL);
		mConfig.setProperty("db.userid",mUserID);
		if(savePassword) {
			mConfig.setProperty("db.password",mPassword);
		} else {
			mConfig.remove("db.password");
		}
		saveConfig();
	}
	
	private void saveConfig() {
		try {
			mConfig.store(new FileOutputStream(CONFIG_FILE),CONFIG_FILE);
		} catch(IOException exc) {
			mLogonPanel.error(exc);
		}
	}
	
	public void setConfigProperty(String aKey, String aValue) {
		mConfig.setProperty(aKey,aValue);
		saveConfig();
	}
	
	public String getConfigProperty(String key) {
		return mConfig.getProperty(key);
	}
	
	public String getConfigProperty(String key,String defaultValue) {
		return mConfig.getProperty(key,defaultValue);
	}
	
	public boolean doLogonPanel() {
		mLogonPanel.setFields(mDriver, mURL, mUserID, mPassword);
		if(mLogonPanel.showLogonPanel(mDialogParent)) {
			this.mURL = mLogonPanel.getURL();
			this.mUserID = mLogonPanel.getUserID();
			this.mPassword = mLogonPanel.getPassword();
			saveConfigDB(mLogonPanel.shouldSavePassword());
			return true;
		} else {
			return false;
		}
	}
	
	public Connection getNewConnection(boolean autoCommit) {
		try {
			Class.forName(mDriver);
			Connection conn = DriverManager.getConnection(mURL,mUserID,mPassword);
			conn.setAutoCommit(autoCommit);
			return conn;
		} catch(Exception exc) {
			mLogonPanel.error(exc);
			if(doLogonPanel()) {
				return getConnection(autoCommit);
			} else {
				System.exit(0);
				return null;
			}
		}
	}
	
	public Connection getConnection(boolean autoCommit) {
		if(mConnection==null) {
			doLogonPanel();
			this.mConnection = getNewConnection(autoCommit);
		}
		return mConnection;
	}

	public ResultSet executeQuery(
		Connection conn,
		String sql
	) throws SQLException {
		return conn.createStatement().executeQuery(sql);
	}
	
	public ResultSet executeQuery(
		Connection conn,
		String sql,
		int resultSetType,
		int resultSetConcurrency
	) throws SQLException {
		return conn.createStatement(resultSetType,resultSetConcurrency).executeQuery(sql);
	}

	public ResultSet executePreparedQuery(
		Connection conn,
		String sql,
		int resultSetType,
		int resultSetConcurrency,
		Object...fields
	) throws SQLException {
		return getPreparedStatement(
			conn,
			sql,
			resultSetType,
			resultSetConcurrency,
			fields
		).executeQuery();
	}
	public int executePreparedStatement(
		Connection conn,
		String sql,
		Object...fields
	) throws SQLException {
		return getPreparedStatement(
			conn,
			sql,
			fields
		).executeUpdate();
	}
	
	public ResultSet executePreparedQuery(
		Connection conn,
		String sql,
		Object...fields
	) throws SQLException {
		return getPreparedStatement(
			conn,
			sql,
			fields
		).executeQuery();
	}
	
	public PreparedStatement getPreparedStatement(
		Connection conn,
		String sql,
		Object...fields
	) throws SQLException {
		return getPreparedStatement(
			conn,
			sql,
			ResultSet.TYPE_FORWARD_ONLY,
			ResultSet.CONCUR_READ_ONLY,
			fields
		);
	}
	
	public PreparedStatement getPreparedStatement(
		Connection conn,
		String sql,
		int resultSetType,
		int resultSetConcurrency,
		Object...fields
	) throws SQLException {
		PreparedStatement ps = conn.prepareStatement(sql,resultSetType,resultSetConcurrency);
		for(int i = 0;i < fields.length;i++)ps.setObject(i+1,fields[i]);
		return ps;
	}
	
	public void mySQLImport(final File source) throws Exception {
		int hidx = mURL.indexOf("//")+2;
		int didx = mURL.indexOf('/',hidx);
		String host = mURL.substring(hidx,didx);
		String db = mURL.substring(didx+1);

		String command = 
			"mysql TERD" + //db +
			" --host=" + host +
			" --user=" + mUserID +
			" --password=" + mPassword +
			" -e \"source "+source+"\""
		;
		System.out.println(command);
		final Process proc = Runtime.getRuntime().exec(command);

		new Thread() {
			public void run() {
				try {
					BufferedReader br = new BufferedReader(new InputStreamReader(proc.getInputStream()));
					for(String line;(line=br.readLine())!=null;)System.out.println(line);
					br.close();
				} catch(Exception e) {
				}
			}
		}.start();
	}

	public interface DumpFileNameGenerator_IF
	{
		public File getTargetFile(String aHost, String aDb);
	}
	
	public void mySQLDump(DumpFileNameGenerator_IF gen) throws IOException {
		int hidx = mURL.indexOf("//")+2;
		int didx = mURL.indexOf('/',hidx);
		String host = mURL.substring(hidx,didx);
		String db = mURL.substring(didx+1);
		
		File target = gen.getTargetFile(host,db);
		if(target!=null) {
			PrintWriter pw = new PrintWriter(target);
			
			Process proc = Runtime.getRuntime().exec(
				"mysqldump" +
				" --host=" + host +
				" --user=" + mUserID +
				" --password=" + mPassword +
				" -c "+db
			);
			BufferedReader br = new BufferedReader(new InputStreamReader(proc.getInputStream()));
			for(String line;(line=br.readLine())!=null;)pw.println(line);
			br.close();
			pw.close();
		}
	}
}


/**
 * 
 * $Log: DataBaseConnector.java,v $
 * Revision 1.14  2007/10/12 17:10:04  g137997
 * Added variable parameter method executePreparedStatememt().
 *
 * Revision 1.13  2007/09/14 03:30:54  g137997
 * Modified export and import.
 *
 * Revision 1.12  2007/09/11 19:11:16  g137997
 * Changed export methodology.
 *
 * Revision 1.11  2007/09/10 12:04:59  g137997
 * Miscellaneous changes to organization.
 *
 * Revision 1.10  2007/09/05 12:34:32  g137997
 * Added mySQLDump() method.
 *
 * Revision 1.9  2007/05/22 15:11:45  g137997
 * Modified to use only one connection (unless the user calls getNewConnection()).
 *
 * Revision 1.8  2007/05/21 12:39:30  g137997
 * Modified other getPreparedStatement() to take variable args.
 *
 * Revision 1.7  2007/05/18 15:36:01  g137997
 * Added getPreparedStatement(...) that takes variable length args.
 *
 * Revision 1.6  2007/04/30 21:19:42  g137997
 * Changed to use error handler in logon panel.
 *
 * Revision 1.5  2007/04/27 21:41:02  g137997
 * New version of getPreparedStatement().
 *
 * Revision 1.4  2007/04/26 21:32:54  g137997
 * Added two versions of getResultSet().
 *
 * Revision 1.3  2007/03/27 23:51:52  g137997
 * Added system exit when canceling logon dialog.
 *
 * Revision 1.2  2007/03/26 12:12:25  g137997
 * Added new convenience methods.
 *
 * Revision 1.1  2007/03/07 22:36:28  g137997
 * Re-packaged existing classes a bit.
 *
 * Revision 1.3  2007/03/07 22:27:01  g137997
 * Added save password capability.
 *
 * Revision 1.2  2007/03/07 22:06:35  g137997
 * Finshed getting logon panel to work.
 *
 * Revision 1.1  2007/03/07 12:37:46  g137997
 * Added some new stuff.
 * Moved classes to new packages.
 *
 * Revision 1.1  2007/03/06 18:31:08  g137997
 * Initial check-in.
 *
 * 
 */