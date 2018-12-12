/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/ItemAttributePanel.java,v 1.18 2007/11/01 16:41:16 g137997 Exp $
 * 
 * ItemAttributePanel
 * Created on Mar 26, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.flagco.onnlinestore.db;

import java.awt.BorderLayout;
import java.awt.Dimension;
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
import com.lxm.utilities.db.DatabasePanel.FieldPanel;
import com.lxm.utilities.ui.ModDetectingComboBoxEditor;

/**
 * This class list attributes for a catelog item.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.18 $
 */
public class ItemAttributePanel extends JPanel implements DataListener,CATALOG,ATTRIBUTE
{
	public static final String SELECT_ATTRIBUTE =
		"select a.attribute_cd,a.attribute_desc from attribute as a "+
		//"where attribute_cd in (" +
		//"  select attribute_cd " +
		//"  from category_attribute " +
		//"  where category_cd=?" +
		//") " +
		"inner join category_attribute as c on a.attribute_cd = c.attribute_cd " + 
		"where c.category_cd = ? "+ 
		"order by attribute_cd"
	;
	
	public static final String DELETE_DISOWNED = 
		"DELETE FROM item_attribute ia " + 
		"WHERE NOT EXISTS (" + 
		" SELECT * " + 
		" FROM catalog as c " +
		" INNER JOIN category_attribute as ca ON c.category_cd=ca.category_cd " + 
		" WHERE ia.itemno=c.itemno and ia.attribute_cd=ca.attribute_cd " + 
		") and ia.itemno=?" 
	;
		

	
	private DataBaseConnector mConnector;
	private Connection mConnection;
	
	private String mITEMNO;
	private Integer mCATEGORY_CD;
	private List<AttributeValueTextField> mAttributeDataFields = new ArrayList<AttributeValueTextField>();
	private FieldPanel mFields;


	public ItemAttributePanel(
		DataBaseConnector aConnector,
		DataRefreshManager aListener
	) {
		this.mConnector = aConnector;
		this.mConnection = mConnector.getConnection(true); 
		setLayout(new BorderLayout(1,1));
		setBorder(BorderFactory.createTitledBorder("Item Attributes"));
		add(
			new JScrollPane(
				this.mFields = new FieldPanel(),
				JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,
				JScrollPane.HORIZONTAL_SCROLLBAR_NEVER
			) {
				public Dimension getPreferredSize() {
					Dimension d = super.getPreferredSize();
					return new Dimension(d.width+40,200);
				}
			}
			,
			BorderLayout.CENTER
		);
		aListener.addDataListener(this);
	}
	
	public Dimension getPreferredSize() {
		Dimension d = super.getPreferredSize();
		return new Dimension(Math.max(d.width,150),Math.max(d.height,50));
	}
	
	public void refresh() throws SQLException {
		mFields.removeAll();
		mAttributeDataFields.clear();
		ResultSet rs = mConnector.executePreparedQuery(
			mConnection,
			SELECT_ATTRIBUTE,
			mCATEGORY_CD
		);
		while(rs.next()) {
			AttributeValueTextField field = new AttributeValueTextField(
				rs.getInt(ATTRIBUTE_CD)
			);
			mAttributeDataFields.add(field);
			mFields.addField(rs.getString(ATTRIBUTE_DESC),field);
		}
		getParent().validate();
	}

	/*** @see com.lxm.utilities.db.DataListener#select(java.sql.ResultSet) */
	public void select(ResultSet rs) throws SQLException {
		this.mITEMNO = rs.getString(ITEMNO);
		this.mCATEGORY_CD = new Integer(rs.getInt(CATEGORY_CD));
		refresh();
	}
	
	/*** @see com.lxm.utilities.db.DataListener#clear() */
	public void clear() throws SQLException {
		//TODO ItemAttributePanel.clear(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#delete(java.sql.ResultSet) */
	public void delete(ResultSet rs) throws SQLException {
		mConnector.executePreparedStatement(
			mConnection,
			"delete from item_attribute where itemno=?",
			rs.getString(ITEMNO)
		);
	}

	/*** @see com.lxm.utilities.db.DataListener#hasChanged() */
	public boolean hasChanged() {
		//TODO ItemAttributePanel.hasChanged(...)
		return false;
	}

	/*** @see com.lxm.utilities.db.DataListener#insert(java.sql.ResultSet) */
	public void insert(ResultSet aRs) throws SQLException {
		//TODO ItemAttributePanel.insert(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#reset() */
	public void reset() throws SQLException {
		//TODO ItemAttributePanel.reset(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#update(java.sql.ResultSet) */
	public void update(ResultSet rs) throws SQLException {
		for(Iterator<AttributeValueTextField> it = mAttributeDataFields.iterator();it.hasNext();) {
			it.next().save();
		}
		//mConnector.executePreparedStatement(
		//	mConnection,DELETE_DISOWNED,mITEMNO
		//);
	}
	
	private class AttributeValueTextField extends JComboBox
	{
		public static final String SELECT_VALUE =
			"select * from item_attribute " +
			"where itemno=? and attribute_cd=?"
		;
		public static final String SELECT_VALUE_OPTIONS =
			"select distinct attribute_value from item_attribute " +
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
			ResultSet rs = mConnector.executePreparedQuery(
				mConnection,
				SELECT_VALUE_OPTIONS,
				mATTRIBUTE_CD
			);
			while(rs.next())addItem(rs.getString("attribute_value"));
			rs.close();
			
			this.mRS = mConnector.executePreparedQuery(
				mConnection,
				SELECT_VALUE,
				ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_UPDATABLE,
				new Object[]{mITEMNO,mATTRIBUTE_CD}
			);
			
			if(mRS.next()) {
				this.mUpdatable = true;
				setSelectedItem(mRS.getString("attribute_value"));
			} else {
				setSelectedItem("");
			}
		}
		
		/*** @see javax.swing.JComboBox#getSelectedItem() */
		public String getSelectedString() {
			Object item = getSelectedItem();
			return item==null ? "" : (String)item;
		}
		
		public void save() throws SQLException {
			if(mUpdatable) {
				mRS.updateString("attribute_value", getSelectedString());
				mRS.updateRow();
			} else {
				mRS.moveToInsertRow();
				mRS.updateString("itemno",mITEMNO);
				mRS.updateInt("attribute_cd",mATTRIBUTE_CD);
				mRS.updateString("attribute_value", getSelectedString());
				mRS.insertRow();
			}
		}
	}
	
//	private class AttributeValueTextField extends ModDetectingTextField
//	{
//		public static final String SELECT_VALUE =
//			"select * from item_attribute " +
//			"where itemno=? and attribute_cd=?"
//		;
//		public static final String SELECT_VALUE_OPTIONS =
//			"select distinct attribute_value from item_attribute " +
//			"where attribute_cd=? order by attribute_value"
//		;
//		private int mATTRIBUTE_CD;
//		private ResultSet mRS;
//		private boolean mUpdatable = false;
//		
//		private JPopupMenu mMenu = new JPopupMenu();
//		
//		public AttributeValueTextField(int aATTRIBUTE_CD) throws SQLException 
//		{
//			super(30);
//			this.mATTRIBUTE_CD = aATTRIBUTE_CD;
//			load();
//			addMouseListener(
//				new MouseAdapter() {
//					public void mouseClicked(MouseEvent e) {
//						if(e.getButton()==MouseEvent.BUTTON3) {
//							showValuesMenu();
//						}
//					}
//				}
//			);
//		}
//		
//		private void showValuesMenu() {
//			mMenu.show(this,0,getHeight());
//		}
//		
//		public void load() throws SQLException {
//			this.mRS = mConnector.executePreparedQuery(
//				mConnection,
//				SELECT_VALUE,
//				ResultSet.TYPE_SCROLL_SENSITIVE,
//				ResultSet.CONCUR_UPDATABLE,
//				mITEMNO,
//				mATTRIBUTE_CD
//			);
//			
//			if(mRS.next()) {
//				this.mUpdatable = true;
//				setAndReset(mRS.getString("attribute_value"));
//			}
//			
//			ResultSet rs = mConnector.executePreparedQuery(
//				mConnection,
//				SELECT_VALUE_OPTIONS,
//				mATTRIBUTE_CD
//			);
//			while(rs.next()) {
//				mMenu.add(new ValueMenuItem(rs.getString("attribute_value"),this));
//			}
//			rs.close();
//		}
//		
//		private class ValueMenuItem extends JMenuItem implements ActionListener
//		{
//			private ModDetectingTextField mTextField;
//
//			public ValueMenuItem(String aLabel,ModDetectingTextField aTextField)
//			{
//				super(aLabel);
//				this.mTextField = aTextField;
//				addActionListener(this);
//			}
//
//			/*** @see java.awt.event.ActionListener#actionPerformed(java.awt.event.ActionEvent) */
//			public void actionPerformed(ActionEvent e) {
//				mTextField.setText(getText());
//			}
//		}
//		
//		public void save() throws SQLException {
//			if(mUpdatable) {
//				mRS.updateString("attribute_value", getText());
//				mRS.updateRow();
//			} else {
//				mRS.moveToInsertRow();
//				mRS.updateString("itemno",mITEMNO);
//				mRS.updateInt("attribute_cd",mATTRIBUTE_CD);
//				mRS.updateString("attribute_value", getText());
//				mRS.insertRow();
//			}
//		}
//	}

}


/**
 * 
 * $Log: ItemAttributePanel.java,v $
 * Revision 1.18  2007/11/01 16:41:16  g137997
 * Added scrollpane to attributes.
 * Fixed empty attribute default value.
 *
 * Revision 1.17  2007/10/12 17:11:13  g137997
 * Added logic to delete attributes for a deleted ITEMNO.
 *
 * Revision 1.16  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.15  2007/09/06 12:33:30  g137997
 * Modified to utilize new DataField_IF.
 *
 * Revision 1.14  2007/07/20 19:41:50  g137997
 * Added lookup function.
 *
 * Revision 1.13  2007/05/22 15:11:03  g137997
 * Changed to use fewer connections.
 * Added modified indicator to attribute fields.
 *
 * Revision 1.12  2007/05/22 13:09:30  g137997
 * Changed sizing.
 *
 * Revision 1.11  2007/05/21 14:49:50  g137997
 * Removed JScrollPane wrapper areound FieldPanel.
 *
 * Revision 1.10  2007/05/21 12:42:54  g137997
 * Modified sizing and layout logic.
 *
 * Revision 1.9  2007/05/18 15:39:51  g137997
 * Work in progress.
 *
 * Revision 1.8  2007/04/30 11:57:56  g137997
 * Combined SELECT and WHERE into one constant.
 *
 * Revision 1.7  2007/04/27 21:41:39  g137997
 * Finally added attribute value editing logic.
 *
 * Revision 1.6  2007/04/26 20:36:34  g137997
 * Fixed SQL that was not compatible with mySQL 4.0.x.
 *
 * Revision 1.5  2007/04/26 17:34:21  g137997
 * Lowercased all field names.
 *
 * Revision 1.4  2007/04/24 13:38:29  g137997
 * Work in progress.
 *
 * Revision 1.3  2007/03/27 20:35:35  g137997
 * Organized imports.
 *
 * Revision 1.2  2007/03/27 16:59:46  g137997
 * Added more attribute support.
 *
 * Revision 1.1  2007/03/27 12:36:17  g137997
 * Initial check-in.
 *
 * 
 */