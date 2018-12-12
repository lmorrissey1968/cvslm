/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/tabledef/CATEGORY.java,v 1.6 2007/05/22 15:09:30 g137997 Exp $
 * 
 * CATEGORY
 * Created on Mar 14, 2007
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
 * @version $Revision: 1.6 $
 */
public interface CATEGORY
{
	public static final String TableName = "category";
	
	public static final String CATEGORY_CD = "category_cd"; 
	public static final String CATEGORY_DESC = "category_desc";
	public static final String TABLE_DESIGN_CD = "table_design_cd";
	
	public static final Table_IF TableDefinition = new Table_IF() {
		/*** @see com.lxm.utilities.db.Table_IF#getTableName() */
		public String getTableName() {
			return TableName;
		}
		
		/*** @see com.lxm.utilities.db.Table_IF#getFields() */
		public String[] getFields() {
			return new String[] {
				CATEGORY_CD,
				CATEGORY_DESC,
				TABLE_DESIGN_CD
			};
		}

		/*** @see com.lxm.utilities.db.Table_IF#getLookupData(java.sql.Connection) */
		public ResultSet getLookupData(Connection conn) throws SQLException {
			return conn.createStatement().executeQuery(
				"select "+CATEGORY_CD+","+CATEGORY_DESC+","+TABLE_DESIGN_CD+" from "+TableName+" order by "+CATEGORY_DESC
			);
		}

		/*** @see com.lxm.utilities.db.Table_IF#getLookupItem(java.sql.ResultSet) */
		public LookupItem getLookupItem(ResultSet aRS) throws SQLException {
			return new LookupItem(aRS,CATEGORY_CD) {
				private String mDescription;
				
				public String getComboBoxString() {
					return mDescription+" ("+getCode()+")";
				}

				public void setDescription(ResultSet aRS) throws SQLException {
					this.mDescription = aRS.getString(CATEGORY_DESC);
				}
			};
		}
	};
}


/**
 * 
 * $Log: CATEGORY.java,v $
 * Revision 1.6  2007/05/22 15:09:30  g137997
 * Changed method signature for Table_IF requirement.
 *
 * Revision 1.5  2007/05/18 15:39:23  g137997
 * Added fields.
 *
 * Revision 1.4  2007/04/26 17:34:12  g137997
 * Lowercased all field names.
 *
 * Revision 1.3  2007/03/19 21:00:24  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.1  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.1  2007/03/14 15:50:44  g137997
 * Initial check-in.
 *
 * 
 */