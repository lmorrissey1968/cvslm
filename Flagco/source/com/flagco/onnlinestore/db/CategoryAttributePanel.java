/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/CategoryAttributePanel.java,v 1.15 2007/10/16 13:06:50 g137997 Exp $
 * 
 * CategoryAttributes
 * Created on Mar 21, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.flagco.onnlinestore.db;

import java.awt.BorderLayout;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JPanel;
import javax.swing.JScrollPane;

import com.flagco.onnlinestore.db.tabledef.ATTRIBUTE;
import com.flagco.onnlinestore.db.tabledef.CATEGORY;
import com.lxm.utilities.db.DataBaseConnector;
import com.lxm.utilities.db.DataListener;
import com.lxm.utilities.db.DataRefreshManager;
import com.lxm.utilities.db.UtilDB;
import com.lxm.utilities.ui.AddRemoveContainer;
import com.lxm.utilities.ui.UtilUI;
import com.lxm.utilities.ui.ConsoleFrame.ErrorHandler;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.15 $
 */
public class CategoryAttributePanel extends JPanel implements DataListener,ATTRIBUTE,CATEGORY,ErrorHandler
{
	//public static final String WHERE_ATTRIBUTE_IN_CATEGORY =
	//	"where attribute_cd in (" +
	//	"  select attribute_cd " +
	//	"  from category_attribute " +
	//	"  where category_cd=?" +
	//	") " +
	//	"order by attribute_cd"
	//;

	//public static final String WHERE_ATTRIBUTE_NOT_IN_CATEGORY =
	//	"where attribute_cd not in (" +
	//	"  select attribute_cd " +
	//	"  from category_attribute " +
	//	"  where category_cd=?" +
	//	") " +
	//	"order by attribute_desc"
	//;
	
	//public static final String CATEGORY_ATTRIBUTE_MAPPING = 
	//	"select attribute_cd,category_cd " +
	//	"from category_attribute " +
	//	"where category_cd=? " +
	//	"order by attribute_cd"
	//;
	
	private static final String SELECT_ATTRIBUTE = 
		"select attribute_cd,attribute_desc from attribute ";
	;

	//private String getAttributeCodesForCategory() throws SQLException {
	//	return UtilDB.toIntList(
	//		mConnector.getPreparedStatement(
	//			mConnection,
	//			"select attribute_cd from category_attribute where category_cd=?",
	//			mCATEGORY_CD
	//		)
	//	);
	//}
	
	private ResultSet getAttributesInCategory() throws SQLException {
		return mConnector.executePreparedQuery(
			mConnection,
			SELECT_ATTRIBUTE+
			"where attribute_cd in ("+
			"select attribute_cd from category_attribute where category_cd=?"+
			") order by attribute_cd",
			ResultSet.TYPE_SCROLL_SENSITIVE,
			ResultSet.CONCUR_UPDATABLE,
			new Object[]{mCATEGORY_CD}
		);
	}

	private ResultSet getAttributesNotInCategory() throws SQLException {
		return mConnector.executePreparedQuery(
			mConnection,
			SELECT_ATTRIBUTE+
			"where attribute_cd not in ("+ 
			"select attribute_cd from category_attribute where category_cd=?"+
			") ",
			mCATEGORY_CD
		);
	}

	private ResultSet getCategoryAttributeMapping() throws SQLException {
		return mConnector.executePreparedQuery(
			mConnection,
			"select attribute_cd,category_cd " +
			"from category_attribute " +
			"where category_cd=? "+
			"order by attribute_cd",
			ResultSet.TYPE_SCROLL_SENSITIVE,
			ResultSet.CONCUR_UPDATABLE,
			new Object[]{mCATEGORY_CD}
		);
	}
	
	//public static final String CATEGORY_ATTRIBUTE_MAPPING(int category_cd) {
	//	return 
	//		"select attribute_cd,category_cd " +
	//		"from category_attribute " +
	//		"where category_cd="+category_cd+" "+
	//		"order by attribute_cd"
	//	;
	//}

	
	private DataBaseConnector mConnector;
	private Connection mConnection;
	
	private ResultSet mRS1;
	private ResultSet mRS2;
	private Integer mCATEGORY_CD;
	
	private AttributeList mAttributes = new AttributeList() {
		public Object getItemObject(ResultSet rs) throws SQLException {
			return new AttributeListItem(rs); 
		}
	};

	public CategoryAttributePanel(
		DataBaseConnector aConnector,
		DataRefreshManager aListener
	) {
		this.mConnector = aConnector;
		this.mConnection = mConnector.getConnection(true);
		aListener.addDataListener(this);
		setLayout(new BorderLayout(1,1));
		add(
			new AddRemoveContainer(new JScrollPane(mAttributes),"Attributes for Category",500,250) {
				public void add() {
					if(mCATEGORY_CD==null) {
						UtilUI.alert(this,"Message","No Category Selected!");
					} else {
						addAttribute();
					}
				}

				public void remove() {
					if(mCATEGORY_CD==null) {
						UtilUI.alert(this,"Message","No Category Selected!");
					} else {
						removeAttribute();
					}
				}
			}
		);
	}

	private void removeAttribute() {
		int[] idc = mAttributes.getSelectedIndices();
		try {
			for(int i = idc.length-1;i >= 0;i--) {
				mRS2.absolute(idc[i]+1);
				deleteAttributeFromItems(mRS2.getInt(CATEGORY_CD),mRS2.getInt(ATTRIBUTE_CD));
				mRS2.deleteRow();
				refresh();
			}
		} catch(SQLException exc) {
			Error.error(exc);
		}
		mAttributes.clearSelection();
	}
	
	private void deleteAttributeFromItems(int category_cd, int attribute_cd) throws SQLException {
		mConnector.executePreparedStatement(
			mConnection,
			"delete from item_attribute " + 
			"where itemno in (" + 
			"select itemno from catalog where category_cd=?"+ 
			") and attribute_cd=?",
			category_cd,attribute_cd
		);
	}

	private void addAttribute() {
		try {
			AttributeList chooser = new AttributeList(
				getAttributesNotInCategory()
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
					item.insertMapping(mRS2,mCATEGORY_CD);
				}
				refresh();
			}
		} catch(SQLException exc) {
			Error.error(exc);
		}
	}

	public void refresh() throws SQLException {
		this.mRS1 = getAttributesInCategory();
		this.mRS2 = getCategoryAttributeMapping();
		mAttributes.clear();
		mAttributes.refresh(mRS1);
	}
	
	/*** @see com.lxm.utilities.db.DataListener#select(java.sql.ResultSet) */
	public void select(ResultSet rs) throws SQLException {
		this.mCATEGORY_CD = new Integer(rs.getInt(CATEGORY_CD));
		refresh();
	}

	/*** @see com.lxm.utilities.db.DataListener#insert(java.sql.ResultSet) */
	public void insert(ResultSet rs) throws SQLException {
	}

	/*** @see com.lxm.utilities.db.DataListener#update(java.sql.ResultSet) */
	public void update(ResultSet rs) throws SQLException {
	}

	/*** @see com.lxm.utilities.db.DataListener#reset() */
	public void reset() throws SQLException {
	}

	/*** @see com.lxm.utilities.db.DataListener#clear() */
	public void clear() throws SQLException {
		this.mCATEGORY_CD=null;
		mAttributes.clear();
	}
	
	/*** @see com.lxm.utilities.db.DataListener#delete(java.sql.ResultSet) */
	public void delete(ResultSet rs) throws SQLException {
		// TODO 
	}

	/*** @see com.lxm.utilities.db.DataListener#hasChanged() */
	public boolean hasChanged() {
		return false;
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
		
		public void insertMapping(ResultSet rs,Integer aCATEGORY_CD) throws SQLException {
			rs.moveToInsertRow();
			rs.updateObject(ATTRIBUTE_CD,mATTRIBUTE_CD);
			rs.updateObject(CATEGORY_CD,aCATEGORY_CD);
			rs.insertRow();
		}
		
		/*** @see java.lang.Object#toString() */
		public String toString() {
			return mATTRIBUTE_DESC+" ("+mATTRIBUTE_CD+")";
		}
	}
}


/**
 * 
 * $Log: CategoryAttributePanel.java,v $
 * Revision 1.15  2007/10/16 13:06:50  g137997
 * Added logic to delete attributes from items in a category.
 *
 * Revision 1.14  2007/10/16 12:27:01  g137997
 * Discontinued use of toIntList().
 *
 * Revision 1.13  2007/10/12 17:12:05  g137997
 * Added implementation of delete(rs) method for DataListener interface.
 * Started prototyping the code.
 *
 * Revision 1.12  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.11  2007/09/10 12:05:19  g137997
 * Imports changed.
 *
 * Revision 1.10  2007/05/22 15:10:30  g137997
 * Changed to use fewer connections.
 *
 * Revision 1.9  2007/05/21 12:42:09  g137997
 * Moved AttributeList to standalone class.
 * Streamlined database code.
 *
 * Revision 1.8  2007/05/18 15:39:51  g137997
 * Work in progress.
 *
 * Revision 1.7  2007/04/30 21:21:52  g137997
 * Changed to use common error handler.
 *
 * Revision 1.6  2007/04/30 11:57:21  g137997
 * Made add/remove deal with multiple rows.
 *
 * Revision 1.5  2007/04/26 21:34:31  g137997
 * Compensated for the shortcomings of mySQL 4.0.26 such as not being able to do WHERE EXISTS (select...) and WHERE value IN (select...).
 *
 * Revision 1.4  2007/04/26 17:34:21  g137997
 * Lowercased all field names.
 *
 * Revision 1.3  2007/03/27 22:10:37  g137997
 * Organized imports.
 *
 * Revision 1.2  2007/03/26 12:13:01  g137997
 * Added ADD/REMOVE logic for attribute mapping.
 *
 * Revision 1.1  2007/03/25 14:38:03  g137997
 * Category to Attribute association work in progress.
 *
 * Revision 1.1  2007/03/22 20:04:09  g137997
 * Work in progress.
 *
 * 
 */