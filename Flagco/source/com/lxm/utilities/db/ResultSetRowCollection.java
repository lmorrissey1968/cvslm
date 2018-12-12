/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/ResultSetRowCollection.java,v 1.5 2007/03/18 04:27:50 g137997 Exp $
 * 
 * ResultSetRows
 * Created on Mar 8, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.awt.FontMetrics;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ResultSetRowCollection
{
	private String[] mColumnNames;
	private List<ResultSetRow> mData = new ArrayList<ResultSetRow>();
	private Map<String,Integer> mColumnNameMap = new HashMap<String,Integer>();
	private ResultSetMetaData mMeta;
	
	public ResultSetRowCollection(ResultSet aRS) throws SQLException
	{
		common(aRS);
		while(aRS.next())mData.add(new ResultSetRow(aRS,mColumnNames.length));
	}
	
	public ResultSetRowCollection(ResultSet aRS,int aMaxRows) throws SQLException
	{
		common(aRS);
		for(int i = 0;aRS.next()&&i<aMaxRows;i++)mData.add(new ResultSetRow(aRS,mColumnNames.length));
	}
	
	private void common(ResultSet aRS) throws SQLException {
		this.mMeta = aRS.getMetaData();
		int numCols = mMeta.getColumnCount();
		this.mColumnNames = new String[numCols];
		for(int i = 0;i < numCols;i++) {
			mColumnNames[i] = mMeta.getColumnName(i+1);
			mColumnNameMap.put(mColumnNames[i],i);
		}

	}

	public int getColumnCount() {
		return mColumnNames.length;
	}
	
	public String getColumnName(int aIndex) {
		return mColumnNames[aIndex];
	}

	public int getColumnWidth(FontMetrics fm,int aIndex) {
		int width = fm.stringWidth(mColumnNames[aIndex])+4;
		for(int i=0;i<mData.size();i++) {
			width = Math.max(width,mData.get(i).getWidth(fm,aIndex));
		}
		return width;
	}
	
	public int getRowCount() {
		return mData.size();
	}
	
	public ResultSetRow getRow(int aIndex) {
		return mData.get(aIndex);
	}
	
	public Object getData(int rowIdx,String colName) {
		return getData(rowIdx,mColumnNameMap.get(colName));
	}
	
	public Object getData(int rowIdx,int colIdx) {
		return getRow(rowIdx).getValue(colIdx);
	}
	
	/*** @see java.lang.Object#toString() */
	public String toString() {
		StringBuffer sb = new StringBuffer();
		for(int i = 0;i < mColumnNames.length;i++) {
			if(i>0)sb.append(',');
			sb.append(mColumnNames[i]);
		}
		sb.append('\n');
		for(int i=0;i<mData.size();i++) {
			if(i>0)sb.append('\n');
			sb.append(mData.get(i));
		}
		return sb.toString();
	}
}

/**
 * 
 * $Log: ResultSetRowCollection.java,v $
 * Revision 1.5  2007/03/18 04:27:50  g137997
 * Enhanced to where selection from multiple rows may be done.
 *
 * Revision 1.4  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.3  2007/03/16 19:38:47  g137997
 * Added column width calculatuion based on FontMetric object.
 *
 * Revision 1.2  2007/03/13 22:16:57  g137997
 * Continued adding functionality.
 *
 * Revision 1.1  2007/03/08 19:55:46  g137997
 * Initial check-in.
 *
 * 
 */