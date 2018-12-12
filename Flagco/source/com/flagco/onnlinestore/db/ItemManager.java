/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/ItemManager.java,v 1.17 2007/11/01 16:54:52 g137997 Exp $
 * 
 * ProductManager
 * Created on Mar 7, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.flagco.onnlinestore.db;

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.event.ActionEvent;
import java.io.File;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JTabbedPane;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

import com.lxm.utilities.db.DataBaseConnector;
import com.lxm.utilities.db.DatabasePanel;
import com.lxm.utilities.db.DataBaseConnector.DumpFileNameGenerator_IF;
import com.lxm.utilities.ui.ActionMenuItem;
import com.lxm.utilities.ui.UtilUI;
import com.lxm.utilities.ui.ConsoleFrame.ErrorHandler;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.17 $
 */
public class ItemManager extends JFrame implements ErrorHandler
{
	public static void main(String[] args) { new ItemManager(); }
	
	public static final String REVISION = "$Revision: 1.17 $";
	public static final String REVDATE = "$Date: 2007/11/01 16:54:52 $";
	
	
	/**
	 * Returns the revision string.
	 * @return the revision string.
	 */
	public static final String getVersionString() {
		int idx = REVDATE.indexOf(':')+1;
		return
			"Rev "+
			REVISION.substring(REVISION.indexOf(':')+1,REVISION.lastIndexOf('$')).trim()
			+" - "+
			REVDATE.substring(idx,REVDATE.indexOf(' ',idx+1)).trim()
		;
	}
	
	private JTabbedPane mTabs = new JTabbedPane();
	private DataBaseConnector mConnector = new DataBaseConnector(this);
	private Catalog mCatalog;
	private JMenuBar mMenuBar;
	
	public ItemManager()
	{
		super("Item Manager ("+getVersionString()+")");
		setLayout(new BorderLayout(1,1));
		add(new JLabel(UtilUI.getStandardImageIcon("logo.jpg")),BorderLayout.NORTH);
		add(mTabs,BorderLayout.CENTER);
		

		mTabs.add("Catalog Items",new Catalog(mConnector));
		mTabs.add("Categories",new Category(mConnector));
		mTabs.add("Attributes",new Attribute(mConnector));

		setJMenuBar(this.mMenuBar = new JMenuBar());
		mMenuBar.add(new FileMenu(mConnector));
	
		pack();
		setLocationRelativeTo(null);
		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		mTabs.addChangeListener(
			new ChangeListener() {
				public void stateChanged(ChangeEvent e) {
					try {
						Component component = mTabs.getSelectedComponent();
						if(component instanceof DatabasePanel) {
							DatabasePanel dbp = (DatabasePanel)component;
							dbp.refreshDependancies();
						}
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
	}

	
	public static class FileMenu extends JMenu
	{
		private DataBaseConnector mConnector;
		private ActionMenuItem mImportItem;

		public FileMenu(DataBaseConnector aConnector)
		{
			super("File");
			this.mConnector = aConnector;
			add(
				new ActionMenuItem("Export") {
					public void actionPerformed(ActionEvent e) {
						exportDatabase();
					}
				}
			);
			add(
				this.mImportItem = new ActionMenuItem("Import") {
					public void actionPerformed(ActionEvent e) {
						importDatabase();
					}
				}
			);
			mImportItem.setEnabled(false);
		}

		private void importDatabase() {
			try {
				File source = UtilUI.chooseFile(
					this,
					new File(mConnector.getConfigProperty("db.exportdir","."))
				);
				mConnector.mySQLImport(source);
			} catch(Exception exc) {
				Error.error(exc);
			}
		}

		private void exportDatabase() {
			try {
				mConnector.mySQLDump(
					new DumpFileNameGenerator_IF() {
						/*** @see com.lxm.utilities.db.DataBaseConnector.DumpFileNameGenerator_IF#getTargetFile(java.lang.String, java.lang.String) */
						public File getTargetFile(String host, String db) {
							SimpleDateFormat FMT = new SimpleDateFormat("yyyyMMddHHmmss");
							File base = new File(mConnector.getConfigProperty("db.exportdir","."));
							File target = UtilUI.chooseFile(null, base,new File(db+"_"+FMT.format(new Date())+".sql")); 
							if(target!=null)mConnector.setConfigProperty("db.exportdir",target.getParent());
							return target;
						}
					}
				);
			} catch(Exception exc) {
				Error.error(exc);
			}
		}
	}
	
}


/**
 * 
 * $Log: ItemManager.java,v $
 * Revision 1.17  2007/11/01 16:54:52  g137997
 * Changed revision string.
 *
 * Revision 1.16  2007/10/16 14:24:40  g137997
 * Reformatted version string.
 *
 * Revision 1.15  2007/10/16 14:18:03  g137997
 * Added revision to title bar.
 *
 * Revision 1.14  2007/10/16 14:11:41  g137997
 * Added revision number.
 *
 * Revision 1.13  2007/09/14 03:31:26  g137997
 * Modified export logic.
 *
 * Revision 1.12  2007/09/11 19:11:16  g137997
 * Changed export methodology.
 *
 * Revision 1.11  2007/09/10 12:04:35  g137997
 * Added type check for tab change handler.
 *
 * Revision 1.10  2007/08/08 21:41:45  g137997
 * Enabled FLAGCO logo.
 *
 * Revision 1.9  2007/05/22 15:10:30  g137997
 * Changed to use fewer connections.
 *
 * Revision 1.8  2007/05/12 12:15:45  g137997
 * Added refresh depandancies logic.
 *
 * Revision 1.7  2007/04/30 21:20:04  g137997
 * Disabled generic error dump.
 *
 * Revision 1.6  2007/04/26 21:33:18  g137997
 * Changed such that only errors go to the Console.
 *
 * Revision 1.5  2007/04/24 13:38:29  g137997
 * Work in progress.
 *
 * Revision 1.4  2007/03/27 23:52:27  g137997
 * Re-directing output to GUI Console.
 *
 * Revision 1.3  2007/03/21 22:06:47  g137997
 * Added Attribute tab.
 *
 * Revision 1.2  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.1  2007/03/16 04:33:23  g137997
 * Work in progress.
 *
 * Revision 1.3  2007/03/14 15:51:39  g137997
 * Changed to use new class for categories.
 *
 * Revision 1.2  2007/03/08 19:53:04  g137997
 * Moved tab panels to standalone classes.
 *
 * Revision 1.1  2007/03/07 23:36:22  g137997
 * Initial check-in.
 *
 * 
 */