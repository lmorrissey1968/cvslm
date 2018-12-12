/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/ResultSetRow.java,v 1.3 2007/03/18 03:07:49 g137997 Exp $
 * 
 * ResultSetRow
 * Created on Mar 8, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.awt.FontMetrics;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ResultSetRow
{
	private Object[] mFieldValues;
	
	public ResultSetRow(ResultSet rs) throws SQLException {
		this(rs,rs.getMetaData().getColumnCount());
	}
	
	public ResultSetRow(ResultSet rs,int columnCount) throws SQLException {
		this.mFieldValues = new Object[columnCount];
		for(int i = 0;i < columnCount;i++) {
			mFieldValues[i] = rs.getObject(i+1);
		}
	}
	
	public Object getValue(int index) {
		return mFieldValues[index];
	}
	
	public int getWidth(FontMetrics fm,int index) {
		return mFieldValues[index]==null ? 0 : fm.stringWidth(mFieldValues[index].toString())+4; 
	}
	
	/*** @see java.lang.Object#toString() */
	public String toString() {
		StringBuffer sb = new StringBuffer();
		for(int i = 0;i < mFieldValues.length;i++) {
			if(i>0)sb.append(',');
			sb.append(mFieldValues[i]);
		}
		return sb.toString();
	}
}

/**
 * 
 * $Log: ResultSetRow.java,v $
 * Revision 1.3  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.2  2007/03/16 19:38:47  g137997
 * Added column width calculatuion based on FontMetric object.
 *
 * Revision 1.1  2007/03/08 19:55:46  g137997
 * Initial check-in.
 *
 * 
 */