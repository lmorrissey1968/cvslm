/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/FormattedDataField.java,v 1.5 2007/10/12 17:09:32 g137997 Exp $
 * 
 * DataField
 * Created on Mar 8, 2007
 *
 * © LXM LLC, (2007). All rights reserved
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
import java.text.Format;

import javax.swing.JFormattedTextField;
import javax.swing.SwingUtilities;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.5 $
 */
public class FormattedDataField extends JFormattedTextField implements DataListener,DataField_IF
{
	private String mFieldName;
	private Object mOriginalValue;
	private DataRefreshManager mListener;

	public FormattedDataField(
		String aFieldName,
		DataRefreshManager aListener,
		Format aFormat
	) {
		super(aFormat);
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
					if(getText().equals(""))setValue(null);
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
	
	public boolean hasChanged() {
		return !UtilDB.equals(mOriginalValue,getValue());
	}

	/*** @see com.lxm.utilities.db.DataListener#select(java.sql.ResultSet) */
	public void select(ResultSet rs) throws SQLException {
		setValue(this.mOriginalValue = rs.getObject(mFieldName));
	}

	/*** @see com.lxm.utilities.db.DataListener#update(java.sql.ResultSet) */
	public void update(ResultSet rs) throws SQLException {
		if(hasChanged())insert(rs);
	}

	/*** @see com.lxm.utilities.db.DataListener#insert(java.sql.ResultSet) */
	public void insert(ResultSet rs) throws SQLException {
		rs.updateObject(mFieldName,getValue());
		setValue(this.mOriginalValue = getValue());
	}

	/*** @see com.lxm.utilities.db.DataListener#clear() */
	public void clear() throws SQLException {
		setValue(this.mOriginalValue = null);
	}

	/*** @see com.lxm.utilities.db.DataListener#delete(java.sql.ResultSet) */
	public void delete(ResultSet rs) throws SQLException {
		//TODO CategoryAttributePanel.delete(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#reset() */
	public void reset() throws SQLException {
		setValue(mOriginalValue);
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
	
	public FormattedDataField setStyle(
		int columns,
		int alignment,
		boolean editable
	) {
		setColumns(columns);
		setHorizontalAlignment(alignment);
		setEditable(editable);
		return this;
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getFieldValue() */
	public Object getFieldValue() {
		return super.getValue();
	}

	/*** @see com.lxm.utilities.db.DataField_IF#setFieldValue(java.lang.Object) */
	public void setFieldValue(Object aValue) {
		super.setValue(aValue);
	}

}


/**
 * 
 * $Log: FormattedDataField.java,v $
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
 * Revision 1.1  2007/09/06 12:32:26  g137997
 * Initial check-in.
 * Split out to replace DataField.
 *
 * Revision 1.11  2007/05/18 15:38:08  g137997
 * Added new constructor fields.
 *
 * Revision 1.10  2007/03/27 22:12:14  g137997
 * Organized imports.
 *
 * Revision 1.9  2007/03/25 14:38:28  g137997
 * Several enhancements to support requirements.
 *
 * Revision 1.8  2007/03/22 20:04:09  g137997
 * Work in progress.
 *
 * Revision 1.7  2007/03/20 17:53:39  g137997
 * Added an ampty string check on loss of focus keep field from reverting to stored previous value.
 *
 * Revision 1.6  2007/03/19 21:00:23  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.5  2007/03/14 16:10:06  g137997
 * Added new callbacks.
 * Renamed existing callbacks.
 *
 * Revision 1.4  2007/03/14 14:54:25  g137997
 * Added formatting.
 * Still need to add input validation.
 *
 * Revision 1.3  2007/03/14 11:56:00  g137997
 * Changed to extends a JFormattedTextField.
 *
 * Revision 1.2  2007/03/13 22:16:57  g137997
 * Continued adding functionality.
 *
 * Revision 1.1  2007/03/08 19:55:46  g137997
 * Initial check-in.
 *
 * 
 */