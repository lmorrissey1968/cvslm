/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/UtilDB.java,v 1.2 2007/10/16 12:26:11 g137997 Exp $
 * 
 * StringUtil
 * Created on Mar 19, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.db;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public final class UtilDB
{
	public static final String toDelimitedString(Object[] array,String delimiter) {
		StringBuilder sb = new StringBuilder();
		for(int i = 0;i < array.length;i++) {
			if(i>0)sb.append(delimiter);
			if(array[i]!=null)sb.append(array[i]);
		}
		return sb.toString();
	}
	
	//public static final String toIntList(PreparedStatement ps) throws SQLException {
	//	return toIntList(ps.executeQuery());
	//}
	
	public static final String toIntList(Connection conn,String sql) throws SQLException {
		return toIntList(conn.createStatement().executeQuery(sql));
	}
	
	public static final String toIntList(ResultSet rs) throws SQLException {
		StringBuilder sb = new StringBuilder("NULL");
		for(int i = 0;rs.next();i++) {
			sb.append(',');
			sb.append(rs.getInt(1));
		}
		return sb.toString();
	}
	
	public static final String getSelectStatement(String aTableName,String[] fields) {
		StringBuilder sb = new StringBuilder("select ");
		for(int i = 0;i < fields.length;i++) {
			if(i>0)sb.append(',');
			sb.append(fields[i]);
		}
		sb.append(" from ").append(aTableName);
		return sb.toString();
	}

	/**
	 * Tests Object equality even if one or both are null.
	 * @param o1 Object 1
	 * @param o2 Object 2
	 * @return true if the Objects are the same instance or are equivalent according to equals.
	 */
	public static final boolean equals(Object o1, Object o2) {
		return o1 == o2 ? true : (o1 == null || o2 == null) ? false : o1.equals(o2);
	}
	
	/**
	 * Converts a Throwable object's stack trace into a String.
	 * @param exc A Throwable implementor whose stack trace to String.
	 * @return A stack trace String.
	 */
	public static final String toStackTraceString(Throwable exc) {
		StringWriter sw = new StringWriter();
		exc.printStackTrace(new PrintWriter(sw));
		return sw.toString();
	}
}


/**
 * 
 * $Log: UtilDB.java,v $
 * Revision 1.2  2007/10/16 12:26:11  g137997
 * Discontinued use of toIntList().
 *
 * Revision 1.1  2007/09/10 12:03:10  g137997
 * Renamed class.
 *
 * Revision 1.5  2007/09/05 12:32:51  g137997
 * Added file/dir browsing utilities.
 *
 * Revision 1.4  2007/05/18 15:36:25  g137997
 * Added a version of getIntList that takes a prepared statement.
 *
 * Revision 1.3  2007/04/30 21:16:44  g137997
 * Added toStackTraceString(...) method.
 *
 * Revision 1.2  2007/04/26 21:31:57  g137997
 * Added toIntList methods.
 *
 * Revision 1.1  2007/03/19 21:00:23  g137997
 * Continued to enhance all aspects if this tool.
 *
 * 
 */