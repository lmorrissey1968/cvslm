/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/tabledef/CATALOG.java,v 1.3 2007/05/22 15:09:30 g137997 Exp $
 * 
 * PRODUCT
 * Created on Mar 8, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.flagco.onnlinestore.db.tabledef;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lxm.utilities.db.Table_IF;

/**
 * Defines a tables name and fields.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.3 $
 */
public interface CATALOG
{
	public static final String TableName = "catalog";
	
	public static final String ITEMNO = "itemno";
	public static final String MODEL = "model";
	public static final String DESCRIPTION = "description";
	public static final String PRICE = "price";
	public static final String WEIGHT = "weight"; 
	public static final String SHIPOK = "shipok"; 
	public static final String SHIPADD = "shipadd"; 
	public static final String BOXES = "boxes";
	public static final String CATEGORY_CD = "category_cd";
	
	public static final Table_IF TableDefinition = new Table_IF() {
		/*** @see com.lxm.utilities.db.Table_IF#getTableName() */
		public String getTableName() {
			return TableName;
		}
		
		/*** @see com.lxm.utilities.db.Table_IF#getFields() */
		public String[] getFields() {
			return new String[] {
				ITEMNO,
				MODEL,
				DESCRIPTION,
				PRICE,
				WEIGHT, 
				SHIPOK, 
				SHIPADD, 
				BOXES,
			};
		}

		/*** @see com.lxm.utilities.db.Table_IF#getLookupData(java.sql.Connection) */
		public ResultSet getLookupData(Connection conn) throws SQLException {
			return conn.createStatement().executeQuery(
				"select "+ITEMNO+","+MODEL+","+DESCRIPTION+" from "+TableName
			);
		}

		/*** @see com.lxm.utilities.db.Table_IF#getLookupItem(java.sql.ResultSet) */
		public LookupItem getLookupItem(ResultSet aRS) throws SQLException {
			return new LookupItem(aRS,ITEMNO) {
				private String mDescription;
				
				public String getComboBoxString() {
					return "["+getCode()+"] "+mDescription;
				}

				public void setDescription(ResultSet aRS) throws SQLException {
					this.mDescription = aRS.getString(MODEL)+" - "+aRS.getString(DESCRIPTION);
				}
			};
		}
	};
}


/**
 * 
 * $Log: CATALOG.java,v $
 * Revision 1.3  2007/05/22 15:09:30  g137997
 * Changed method signature for Table_IF requirement.
 *
 * Revision 1.2  2007/04/26 17:34:12  g137997
 * Lowercased all field names.
 *
 * Revision 1.1  2007/04/24 13:38:29  g137997
 * Work in progress.
 *
 * Revision 1.1  2007/03/19 21:00:23  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.1  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.1  2007/03/16 04:31:28  g137997
 * Renamed PRODUCTS to ITEMS.
 *
 * Revision 1.2  2007/03/14 15:51:16  g137997
 * Fixed comments.
 *
 * Revision 1.1  2007/03/08 19:56:30  g137997
 * Renamed.
 *
 * Revision 1.1  2007/03/08 19:53:18  g137997
 * Initial check-in.
 *
 * 
 */