/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/ForeignKeyDataField.java,v 1.9 2007/10/12 17:09:32 g137997 Exp $
 * 
 * ForeignKeyDataField
 * Created on Mar 19, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.awt.Color;
import java.awt.Component;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JComboBox;

import com.lxm.utilities.db.Table_IF.LookupItem;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.9 $
 */
public class ForeignKeyDataField extends JComboBox implements DataListener,DataField_IF
{
	private DataBaseConnector mConnector;
	private Connection mConnection;
	private String mFieldName;
	private Table_IF mDefinition;
	private Integer mOriginalValue;
	private DataRefreshManager mManager;

	public ForeignKeyDataField(
		String aFieldName,
		DataRefreshManager aManager,
		DataBaseConnector aConnector,
		Table_IF aDefinition
	) {
		this.mFieldName = aFieldName;
		this.mConnector = aConnector;
		this.mConnection = aConnector.getConnection(true); 
		this.mDefinition = aDefinition;
		this.mManager = aManager;
		aManager.addDataListener(this);
		addItemListener(
			new ItemListener() {
				public void itemStateChanged(ItemEvent e) {
					if(e.getStateChange()==ItemEvent.SELECTED) {
						setBackground(hasChanged() ? Color.PINK : Color.WHITE);
					}
				}
			}
		);
	}
	
	private void refreshData(Integer code) throws SQLException {
		this.mOriginalValue = code;
		removeAllItems();
		if(code==null)addItem("<select>");
		
		ResultSet rs = mDefinition.getLookupData(mConnection);
		while(rs.next())addItem(mDefinition.getLookupItem(rs));
		rs.close();
		if(code!=null)setSelected(code);
	}
	
	public void setSelected(Integer code) {
		int num = getItemCount();
		for(int i = 0;i < num;i++) {
			Object o = getItemAt(i);
			if(o instanceof LookupItem) {
				LookupItem item = (LookupItem)o;
				if(item.getCode().equals(code)) {
					setSelectedItem(item);
					break;
				}
			}
		}
	}
	
	public Integer getSelectedCode() {
		Object o = getSelectedItem();
		return o instanceof LookupItem ? ((LookupItem)o).getCode() : null; 
	}

	public boolean hasChanged() {
		return !UtilDB.equals(mOriginalValue,getSelectedCode());
	}
	
	/*** @see com.lxm.utilities.db.DataListener#clear() */
	public void clear() throws SQLException {
		refreshData(null);
	}
	
	/*** @see com.lxm.utilities.db.DataListener#delete(java.sql.ResultSet) */
	public void delete(ResultSet rs) throws SQLException {
		//TODO CategoryAttributePanel.delete(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#update(java.sql.ResultSet) */
	public void update(ResultSet aRS) throws SQLException {
		if(hasChanged()) {
			aRS.updateObject(mFieldName,getSelectedCode());
			reset();
		}
	}

	/*** @see com.lxm.utilities.db.DataListener#insert(java.sql.ResultSet) */
	public void insert(ResultSet aRS) throws SQLException {
		aRS.updateObject(mFieldName,getSelectedCode());
	}

	/*** @see com.lxm.utilities.db.DataListener#reset() */
	public void reset() throws SQLException {
		refreshData(getSelectedCode());
	}

	/*** @see com.lxm.utilities.db.DataListener#select(java.sql.ResultSet) */
	public void select(ResultSet aRS) throws SQLException {
		int cp = aRS.getInt(mFieldName);
		Integer code = aRS.wasNull() ? null : new Integer(cp);
		refreshData(code);
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
		return mManager;
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getFieldValue() */
	public Object getFieldValue() {
		return getSelectedCode();
	}

	/*** @see com.lxm.utilities.db.DataField_IF#setFieldValue(java.lang.Object) */
	public void setFieldValue(Object aValue) {
		if(aValue instanceof Integer) {
			setSelected((Integer)aValue);
		}
	}

}


/**
 * 
 * $Log: ForeignKeyDataField.java,v $
 * Revision 1.9  2007/10/12 17:09:32  g137997
 * Added implementation of delete(rs) method for DataListener interface.
 *
 * Revision 1.8  2007/09/14 03:28:56  g137997
 * Publicized code getter and setter.
 *
 * Revision 1.7  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * Revision 1.6  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.5  2007/09/10 12:04:59  g137997
 * Miscellaneous changes to organization.
 *
 * Revision 1.4  2007/05/22 15:10:30  g137997
 * Changed to use fewer connections.
 *
 * Revision 1.3  2007/03/25 14:38:28  g137997
 * Several enhancements to support requirements.
 *
 * Revision 1.2  2007/03/19 21:01:14  g137997
 * Changed javadoc.
 *
 * Revision 1.1  2007/03/19 21:00:23  g137997
 * Continued to enhance all aspects if this tool.
 *
 * 
 */