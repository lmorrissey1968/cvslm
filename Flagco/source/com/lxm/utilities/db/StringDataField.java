/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/StringDataField.java,v 1.5 2007/10/12 17:09:32 g137997 Exp $
 * 
 * DataField
 * Created on Sep 5, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.db;

import java.awt.Color;
import java.awt.Component;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JTextField;
import javax.swing.SwingUtilities;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.5 $
 */
public class StringDataField extends JTextField implements DataListener,DataField_IF
{
	private String mFieldName;
	private String mOriginalValue;
	private DataRefreshManager mListener;
	
	private boolean mNullable = false;
	
	public StringDataField(
		String aFieldName,
		DataRefreshManager aListener
	){
		this.mFieldName = aFieldName;
		this.mListener = aListener;
		
		mListener.addDataListener(this);
		
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
				
				/*** @see java.awt.event.FocusAdapter#focusLost(java.awt.event.FocusEvent) */
				public void focusLost(FocusEvent e) {
					if(getText().equals(""))setFieldValue(null);
				}
			}
		);
		
		addKeyListener(
			new KeyAdapter() {
				public void keyTyped(KeyEvent e) {
					if(isEditable())setBackground(Color.PINK);
				}
			}
		);
	}

	/*** @see javax.swing.text.JTextComponent#setText(java.lang.String) */
	public void setText(String aText) {
		super.setText(aText);
		setBackground(hasChanged() ? Color.PINK : Color.WHITE);
	}
	
	/*** @see com.lxm.utilities.db.DataListener#insert(java.sql.ResultSet) */
	public void insert(ResultSet rs) throws SQLException {
		rs.updateObject(mFieldName,getFieldValue());
		setFieldValue(this.mOriginalValue = (String)getFieldValue());
	}

	/*** @see com.lxm.utilities.db.DataListener#reset() */
	public void reset() throws SQLException {
		setFieldValue(mOriginalValue);
	}

	/*** @see com.lxm.utilities.db.DataListener#select(java.sql.ResultSet) */
	public void select(ResultSet rs) throws SQLException {
		setFieldValue(this.mOriginalValue = rs.getString(mFieldName));
	}

	/*** @see com.lxm.utilities.db.DataListener#update(java.sql.ResultSet) */
	public void update(ResultSet rs) throws SQLException {
		if(hasChanged())insert(rs);
	}
	
	/*** @see com.lxm.utilities.db.DataListener#clear() */
	public void clear() throws SQLException {
		setText("");
		this.mOriginalValue = mNullable ? null : "";
	}

	/*** @see com.lxm.utilities.db.DataListener#delete(java.sql.ResultSet) */
	public void delete(ResultSet rs) throws SQLException {
		//TODO CategoryAttributePanel.delete(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#hasChanged() */
	public boolean hasChanged() {
		return !UtilDB.equals(mOriginalValue,getFieldValue());
	}
	
	/*** @see com.lxm.utilities.db.DataField_IF#setFieldValue(java.lang.String) */
	public void setFieldValue(Object text) {
		setText(text==null ? "" : text.toString());
	}
	
	/*** @see com.lxm.utilities.db.DataField_IF#getFieldValue() */
	public Object getFieldValue() {
		String value = getText();
		return mNullable ? (value.equals("") ? null : value) : value;
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getFieldComponent() */
	public Component getFieldComponent() {
		return this;
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getFieldName() */
	public String getFieldName() {
		return mFieldName;
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getManager() */
	public DataRefreshManager getManager() {
		return mListener;
	}
	
	public StringDataField setStyle(
		int columns,
		int alignment,
		boolean editable
	) {
		setColumns(columns);
		setHorizontalAlignment(alignment);
		setEditable(editable);
		return this;
	}
}


/**
 * 
 * $Log: StringDataField.java,v $
 * Revision 1.5  2007/10/12 17:09:32  g137997
 * Added implementation of delete(rs) method for DataListener interface.
 *
 * Revision 1.4  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * Revision 1.3  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.2  2007/09/10 12:04:59  g137997
 * Miscellaneous changes to organization.
 *
 * Revision 1.1  2007/09/06 12:32:25  g137997
 * Initial check-in.
 * Split out to replace DataField.
 *
 * 
 */