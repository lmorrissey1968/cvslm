/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/ResultSetTableModel.java,v 1.5 2007/08/08 21:14:43 g137997 Exp $
 * 
 * ResultSetModel
 * Created on Mar 27, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.db;

import java.awt.FontMetrics;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;

import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;


/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.5 $
 */
public class ResultSetTableModel implements TableModel
{
	private Set<TableModelListener> mListeners = new HashSet<TableModelListener>();
	private ResultSet mRS;
	private ResultSetMetaData mMetaData;

	public ResultSetTableModel(ResultSet aRS) throws SQLException
	{
		this.mRS = aRS;
		this.mMetaData = mRS.getMetaData();
	}

	/*** @see javax.swing.table.TableModel#addTableModelListener(javax.swing.event.TableModelListener) */
	public void addTableModelListener(TableModelListener aListener) {
		mListeners.add(aListener);
	}
	
	/*** @see javax.swing.table.TableModel#removeTableModelListener(javax.swing.event.TableModelListener) */
	public void removeTableModelListener(TableModelListener aListener) {
		mListeners.remove(aListener);
	}

	/*** @see javax.swing.table.TableModel#getColumnClass(int) */
	public Class<?> getColumnClass(int aColumnIndex) {
		return Object.class;
	}

	/*** @see javax.swing.table.TableModel#getColumnCount() */
	public int getColumnCount()  {
		try {
			return mMetaData.getColumnCount();
		} catch(SQLException exc) {
			throw new Error(exc);
		}
	}

	/*** @see javax.swing.table.TableModel#getColumnName(int) */
	public String getColumnName(int aColumnIndex) {
		try {
			return mMetaData.getColumnName(aColumnIndex+1);
		} catch(SQLException exc) {
			throw new Error(exc);
		}
	}

	/*** @see javax.swing.table.TableModel#getRowCount() */
	public int getRowCount() {
		try {
			int save = mRS.getRow();
			mRS.last();
			int last = mRS.getRow();
			if(save==0) {
				mRS.beforeFirst();
			} else {
				mRS.absolute(save);
			}
			return last;
		} catch(SQLException exc) {
			throw new Error(exc);
		}
	}

	/*** @see javax.swing.table.TableModel#getValueAt(int, int) */
	public Object getValueAt(int aRowIndex, int aColumnIndex) {
		try {
			int save = mRS.getRow();
			mRS.absolute(aRowIndex+1);
			Object value = mRS.getObject(aColumnIndex+1); 			
			if(save==0) {
				mRS.beforeFirst();
			} else {
				mRS.absolute(save);
			}
			return value;
		} catch(SQLException exc) {
			throw new Error(exc);
		}
	}

	/*** @see javax.swing.table.TableModel#isCellEditable(int, int) */
	public boolean isCellEditable(int aRowIndex, int aColumnIndex) {
		return false;
	}

	/*** @see javax.swing.table.TableModel#setValueAt(java.lang.Object, int, int) */
	public void setValueAt(Object aValue, int aRowIndex, int aColumnIndex) {
		//try {
		//	mRS.absolute(aRowIndex+1);
		//	mRS.updateObject(aColumnIndex+1,aValue);
		//} catch(SQLException exc) {
		//	throw new Error(exc);
		//}
	}

	public int getColumnWidth(FontMetrics fm, int aColumnIndex) {
		try {
			int save = mRS.getRow();
			mRS.beforeFirst();
			int width = fm.stringWidth(mMetaData.getColumnName(aColumnIndex+1))+4;
			while(mRS.next()) {
				Object o = mRS.getObject(aColumnIndex+1);
				if(o!=null)width = Math.max(width,fm.stringWidth(o.toString()));
			}
			if(save==0) {
				mRS.beforeFirst();
			} else {
				mRS.absolute(save);
			}
			return width;
		} catch(SQLException exc) {
			throw new Error(exc);
		}
	}
}


/**
 * 
 * $Log: ResultSetTableModel.java,v $
 * Revision 1.5  2007/08/08 21:14:43  g137997
 * Added logic to set ResultSet row back to where it was.
 *
 * Revision 1.4  2007/03/27 22:12:04  g137997
 * Totally replaced old ResultSetTableModel with new one that just uses a ResultSet.
 *
 * 
 */