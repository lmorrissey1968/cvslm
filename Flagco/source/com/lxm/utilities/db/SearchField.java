/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/SearchField.java,v 1.14 2007/10/12 17:09:32 g137997 Exp $
 * 
 * SearchField
 * Created on Sep 10, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.db;

import java.awt.Component;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JTextField;
import javax.swing.SwingUtilities;

public class SearchField extends JTextField implements DataListener,DataField_IF
{
	private String mFieldName;
	private DataRefreshManager mManager;
	private boolean mNullable = false;

	public SearchField(
		String aFieldName,
		DataRefreshManager aManager
	){
		this.mFieldName = aFieldName;
		this.mManager = aManager;
		mManager.addDataListener(this);

		addFocusListener(
			new FocusAdapter() {
				public void focusGained(FocusEvent e) {
					SwingUtilities.invokeLater(
						new Runnable() {
							public void run() {
								selectAll();
							}
						}
					);
				}
			}
		);

	}
	
	public SearchField setStyle(
		int columns,
		int alignment,
		boolean editable
	) {
		setColumns(columns);
		setHorizontalAlignment(alignment);
		setEditable(editable);
		return this;
	}

	/*** @see com.lxm.utilities.db.DataListener#select(java.sql.ResultSet) */
	public void select(ResultSet rs) throws SQLException {
		setText(rs.getString(mFieldName));
	}

	/*** @see com.lxm.utilities.db.DataListener#clear() */
	public void clear() throws SQLException {
		setText("");
	}
	
	/*** @see com.lxm.utilities.db.DataListener#delete(java.sql.ResultSet) */
	public void delete(ResultSet rs) throws SQLException {
		//TODO CategoryAttributePanel.delete(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#hasChanged() */
	public boolean hasChanged() {
		return false;
	}
	
	/*** @see com.lxm.utilities.db.DataListener#reset() */
	public void reset() throws SQLException {
	}

	/*** @see com.lxm.utilities.db.DataListener#update(java.sql.ResultSet) */
	public void update(ResultSet rs) throws SQLException {
	}

	/*** @see com.lxm.utilities.db.DataListener#insert(java.sql.ResultSet) */
	public void insert(ResultSet rs) throws SQLException {
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getFieldComponent() */
	public Component getFieldComponent() {
		return this;
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getManager() */
	public DataRefreshManager getManager() {
		return mManager;
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getFieldValue() */
	public Object getFieldValue() {
		return getText();
	}

	/*** @see com.lxm.utilities.db.DataField_IF#setFieldValue(java.lang.Object) */
	public void setFieldValue(Object aValue) {
		setText(aValue==null ? "" : aValue.toString());
	}
	
	/*** @see com.lxm.utilities.db.DataField_IF#getFieldName() */
	public String getFieldName() {
		return mFieldName;
	}
}

/**
 * 
 * $Log: SearchField.java,v $
 * Revision 1.14  2007/10/12 17:09:32  g137997
 * Added implementation of delete(rs) method for DataListener interface.
 *
 * Revision 1.13  2007/09/10 20:46:27  g137997
 * Organized imports.
 *
 * Revision 1.12  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * 
 */