/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/ModelCategoryAttributePanel.java,v 1.11 2007/10/16 12:27:01 g137997 Exp $
 * 
 * ModelCategoryAttributePanel
 * Created on May 18, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.flagco.onnlinestore.db;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.JComboBox;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

import com.flagco.onnlinestore.db.tabledef.ATTRIBUTE;
import com.flagco.onnlinestore.db.tabledef.CATALOG;
import com.lxm.utilities.db.DataBaseConnector;
import com.lxm.utilities.db.DataListener;
import com.lxm.utilities.db.DataRefreshManager;
import com.lxm.utilities.ui.ActionButton;
import com.lxm.utilities.ui.ColumnLayout;
import com.lxm.utilities.ui.ConsoleFrame.ErrorHandler;
import com.lxm.utilities.ui.ModDetectingComboBoxEditor;
import com.lxm.utilities.ui.UtilUI;

public class ModelCategoryAttributePanel extends JPanel implements DataListener,ATTRIBUTE,CATALOG,ErrorHandler
{
	private DataBaseConnector mConnector;
	private Connection mConnection;
	private JPanel mFields;
	private String mMODEL;
	private Integer mCATEGORY_CD;
	private ResultSet mRS;
	
	private List<AttributeValueTextField> mAttributeDataFields = new ArrayList<AttributeValueTextField>();
	private ActionButton mAddButton;


	public ModelCategoryAttributePanel(
		DataBaseConnector aConnector,
		DataRefreshManager aListener
	) {
		setLayout(new BorderLayout(1,1));
		this.mConnector = aConnector;
		this.mConnection = mConnector.getConnection(true);
		setBorder(BorderFactory.createTitledBorder("Model Attributes"));
		aListener.addDataListener(this);

		add(
			this.mFields = new JPanel(new ColumnLayout(3,1,1)),
			BorderLayout.CENTER
		);
		
		this.mAddButton = new ActionButton(UtilUI.getStandardImageIcon("add_small.gif")) {
			public void actionPerformed(ActionEvent e) {
				addAttribute();
			}
		};
	}
	
	public Dimension getPreferredSize() {
		Dimension d = super.getPreferredSize();
		return new Dimension(Math.max(d.width,150),Math.max(d.height,50));
	}
	
	//private String getAttributeCodesForCategory() throws SQLException {
	//	return UtilDB.toIntList(
	//		mConnector.getPreparedStatement(
	//			mConnection,
	//			"select attribute_cd from category_attribute where category_cd=?",
	//			mCATEGORY_CD
	//		)
	//	);
	//}

	//private String getAttributeCodesForCatMod() throws SQLException {
	//	return UtilDB.toIntList(
	//		mConnector.getPreparedStatement(
	//			mConnection,
	//			"select attribute_cd from model_category_attribute where model=? and category_cd=?",
	//			mMODEL,
	//			mCATEGORY_CD
	//		)
	//	);
	//}

	public static final String SELECT_ATTRIBUTE = 
		"select attribute_cd,attribute_desc from attribute ";
	;
	
	public ResultSet getAttributesIn() throws SQLException {
		return mConnector.executePreparedQuery(
			mConnection,
			SELECT_ATTRIBUTE+
			"where attribute_cd in ("+
			"select attribute_cd from model_category_attribute where model=? and category_cd=?"+
			") order by attribute_cd",
			mMODEL,
			mCATEGORY_CD
		);
	}
	

	public ResultSet getAttributesNotIn() throws SQLException {
		return mConnector.executePreparedQuery(
			mConnection,
			SELECT_ATTRIBUTE+
			"where attribute_cd not in ("+
			"select attribute_cd from model_category_attribute where model=? and category_cd=?"+
			") and attribute_cd not in (" +
			"select attribute_cd from category_attribute where category_cd=?"+
			") order by attribute_cd",
			mMODEL,
			mCATEGORY_CD,
			mCATEGORY_CD
		);
	}
	
	private ResultSet getModelCategoryAttribute() throws SQLException {
		return mConnector.executePreparedQuery(
			mConnection,
			"select model,category_cd,attribute_cd,attribute_value "+
			"from model_category_attribute " +
			"where model=? and category_cd=? ",
			ResultSet.TYPE_SCROLL_SENSITIVE,
			ResultSet.CONCUR_UPDATABLE,
			new Object[]{mMODEL,mCATEGORY_CD}
		);
	}
	
	private ResultSet getModelCategoryAttributeDescriptions() throws SQLException {
		return mConnector.executePreparedQuery(
			mConnection,
			"select a.attribute_cd,a.attribute_desc from attribute as a "+
			"inner join model_category_attribute as c on a.attribute_cd = c.attribute_cd " + 
			"where c.model = ? and c.category_cd = ? "+
			"and a.attribute_cd not in (" +
			"select attribute_cd from category_attribute where category_cd=?"+
			") order by attribute_cd",
			mMODEL,
			mCATEGORY_CD,
			mCATEGORY_CD
		);
	}
	
	
	private void addAttribute() {
		try {
			AttributeList chooser = new AttributeList(
				getAttributesNotIn()
			) {
				public Object getItemObject(ResultSet rs) throws SQLException {
					return new AttributeListItem(rs);
				}
			};
			if(UtilUI.okCancelDialog(
				this, 
				"Choose Attribute to Add", 
				new JScrollPane(chooser)
			)) {
				Object[] items = chooser.getSelectedValues();
				for(int i = 0;i < items.length;i++) {
					AttributeListItem item = (AttributeListItem)items[i];
					item.insertAttribute(mRS,mMODEL,mCATEGORY_CD);
				}
				refresh();
			}
		} catch(SQLException exc) {
			Error.error(exc);
		}
	}
	
	/*** @see com.lxm.utilities.db.DataListener#select(java.sql.ResultSet) */
	public void select(ResultSet rs) throws SQLException {
		this.mMODEL = rs.getString(Catalog.MODEL);
		this.mCATEGORY_CD = rs.getInt(Catalog.CATEGORY_CD);
		refresh();
	}

	public void refresh() throws SQLException {
		this.mRS = getModelCategoryAttribute();
		mFields.removeAll();
		mAttributeDataFields.clear();
		ResultSet rs = getModelCategoryAttributeDescriptions();
		while(rs.next()) {
			int attribute_cd = rs.getInt(ATTRIBUTE_CD);
			AttributeValueTextField field = new AttributeValueTextField(attribute_cd);
			mAttributeDataFields.add(field);
			ColumnLayout.addRow(
				mFields,
				rs.getString(ATTRIBUTE_DESC),
				new RemoveButton(attribute_cd),
				field
			);
		}
		ColumnLayout.addRow(mFields,"",mAddButton,"");
		
		getParent().validate();
	}
	
	public class RemoveButton extends ActionButton
	{
		private int mATTRIBUTE_CD;

		public RemoveButton(int aATTRIBUTE_CD)
		{
			super(UtilUI.getStandardImageIcon("remove_small.gif"));
			this.mATTRIBUTE_CD = aATTRIBUTE_CD;
		}

		/*** @see java.awt.event.ActionListener#actionPerformed(java.awt.event.ActionEvent) */
		public void actionPerformed(ActionEvent e) {
			if(UtilUI.yesNoDialog(this,"Confirmation Required","Are you sure you wish to do this?")) {
				removeAttribute();
			}
		}
		
		private void removeAttribute() {
			try {
				mConnector.getPreparedStatement(
					mConnection,
					"delete from model_category_attribute " +
					"where model=? and category_cd=? and attribute_cd=? ",
					mMODEL,mCATEGORY_CD,mATTRIBUTE_CD
				).executeUpdate();
				refresh();
			} catch(SQLException exc) {
				Error.error(exc);
			}
		}
	}

	/*** @see com.lxm.utilities.db.DataListener#clear() */
	public void clear() throws SQLException {
		//TODO ModelCategoryAttributePanel.clear(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#delete(java.sql.ResultSet) */
	public void delete(ResultSet rs) throws SQLException {
		//TODO CategoryAttributePanel.delete(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#hasChanged() */
	public boolean hasChanged() {
		return false;
	}
	
	/*** @see com.lxm.utilities.db.DataListener#insert(java.sql.ResultSet) */
	public void insert(ResultSet rs) throws SQLException {
	}

	/*** @see com.lxm.utilities.db.DataListener#update(java.sql.ResultSet) */
	public void update(ResultSet rs) throws SQLException {
		for(Iterator<AttributeValueTextField> it = mAttributeDataFields.iterator();it.hasNext();) {
			it.next().save();
		}
	}

	/*** @see com.lxm.utilities.db.DataListener#reset() */
	public void reset() throws SQLException {
	}
	
	public static class AttributeListItem
	{
		private Integer mATTRIBUTE_CD;
		private String mATTRIBUTE_DESC;

		public AttributeListItem(ResultSet rs) throws SQLException
		{
			this.mATTRIBUTE_CD = new Integer(rs.getInt(ATTRIBUTE_CD));
			this.mATTRIBUTE_DESC = rs.getString(ATTRIBUTE_DESC);
		}
		
		public void insertAttribute(
			ResultSet rs,
			String aMODEL,
			Integer aCATEGORY_CD
		) throws SQLException {
			rs.moveToInsertRow();
			rs.updateObject(ATTRIBUTE_CD,mATTRIBUTE_CD);
			rs.updateObject(MODEL,aMODEL);
			rs.updateObject(CATEGORY_CD,aCATEGORY_CD);
			rs.insertRow();
		}
		
		/*** @see java.lang.Object#toString() */
		public String toString() {
			return mATTRIBUTE_DESC+" ("+mATTRIBUTE_CD+")";
		}
	}
	private class AttributeValueTextField extends JComboBox
	{
		public static final String SELECT_VALUE =
			"select * from model_category_attribute " +
			"where model=? and category_cd=? and attribute_cd=?"
		;
		
		public static final String SELECT_VALUE_OPTIONS =
			"select distinct attribute_value from model_category_attribute " +
			"where attribute_cd=? order by attribute_value"
		;

		private int mATTRIBUTE_CD;
		private ResultSet mRS;
		private boolean mUpdatable = false;
		
		public AttributeValueTextField(int aATTRIBUTE_CD) throws SQLException 
		{
			setEditable(true);
			setEditor(new ModDetectingComboBoxEditor(30));
			this.mATTRIBUTE_CD = aATTRIBUTE_CD;
			load();
		}
		
		public void load() throws SQLException {
			this.mRS = mConnector.executePreparedQuery(
				mConnection,
				SELECT_VALUE,
				ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_UPDATABLE,
				new Object[]{mMODEL,mCATEGORY_CD,mATTRIBUTE_CD}
			);
			if(mRS.next()) {
				this.mUpdatable = true;
				setSelectedItem(mRS.getString("attribute_value"));
			}
			
			ResultSet rs = mConnector.executePreparedQuery(
				mConnection,
				SELECT_VALUE_OPTIONS,
				mATTRIBUTE_CD
			);
			while(rs.next())addItem(rs.getString("attribute_value"));
			rs.close();
		}
		
		public void save() throws SQLException {
			if(mUpdatable) {
				mRS.updateString("attribute_value",(String)getSelectedItem());
				mRS.updateRow();
			} else {
				mRS.moveToInsertRow();
				mRS.updateString("model",mMODEL);
				mRS.updateInt("category_cd",mCATEGORY_CD);
				mRS.updateInt("attribute_cd",mATTRIBUTE_CD);
				mRS.updateString("attribute_value",(String)getSelectedItem());
				mRS.insertRow();
			}
		}
	}
	
//	private class AttributeValueTextField extends ModDetectingTextField
//	{
//		public static final String SELECT =
//			"select * from model_category_attribute " +
//			"where model=? and category_cd=? and attribute_cd=?"
//		;
//		private int mATTRIBUTE_CD;
//		private ResultSet mRS;
//		private boolean mUpdatable = false;
//		
//		public AttributeValueTextField(int aATTRIBUTE_CD) throws SQLException 
//		{
//			super(30);
//			this.mATTRIBUTE_CD = aATTRIBUTE_CD;
//			load();
//		}
//		
//		public void load() throws SQLException {
//			this.mRS = mConnector.executePreparedQuery(
//				mConnection,
//				SELECT,
//				ResultSet.TYPE_SCROLL_SENSITIVE,
//				ResultSet.CONCUR_UPDATABLE,
//				mMODEL,mCATEGORY_CD,mATTRIBUTE_CD
//			);
//			if(mRS.next()) {
//				this.mUpdatable = true;
//				setAndReset(mRS.getString("attribute_value"));
//			}
//		}
//		
//		public void save() throws SQLException {
//			if(mUpdatable) {
//				mRS.updateString("attribute_value", getText());
//				mRS.updateRow();
//			} else {
//				mRS.moveToInsertRow();
//				mRS.updateString("model",mMODEL);
//				mRS.updateInt("category_cd",mCATEGORY_CD);
//				mRS.updateInt("attribute_cd",mATTRIBUTE_CD);
//				mRS.updateString("attribute_value", getText());
//				mRS.insertRow();
//			}
//		}
//	}
}

/**
 * 
 * $Log: ModelCategoryAttributePanel.java,v $
 * Revision 1.11  2007/10/16 12:27:01  g137997
 * Discontinued use of toIntList().
 *
 * Revision 1.10  2007/10/12 17:11:36  g137997
 * Added implementation of delete(rs) method for DataListener interface.
 *
 * Revision 1.9  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.8  2007/09/10 12:05:19  g137997
 * Imports changed.
 *
 * Revision 1.7  2007/09/06 12:33:30  g137997
 * Modified to utilize new DataField_IF.
 *
 * Revision 1.6  2007/07/20 19:41:50  g137997
 * Added lookup function.
 *
 * Revision 1.5  2007/05/22 15:11:03  g137997
 * Changed to use fewer connections.
 * Added modified indicator to attribute fields.
 *
 * Revision 1.4  2007/05/22 13:09:30  g137997
 * Changed sizing.
 *
 * Revision 1.3  2007/05/21 14:50:39  g137997
 * Fixed validation issue when adding.
 * Added delete capability.
 *
 * Revision 1.2  2007/05/21 12:43:24  g137997
 * Added much of the necessary logic to make this work.
 *
 * Revision 1.1  2007/05/18 15:39:36  g137997
 * Initial check-in.
 *
 * 
 */