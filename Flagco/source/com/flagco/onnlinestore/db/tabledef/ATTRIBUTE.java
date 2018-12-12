/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/tabledef/ATTRIBUTE.java,v 1.3 2007/05/22 15:09:30 g137997 Exp $
 * 
 * ATTRIBUTE
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
 * @version $Revision: 1.3 $
 */
public interface ATTRIBUTE
{
	public static final String TableName = "attribute";
	
	public static final String ATTRIBUTE_CD = "attribute_cd"; 
	public static final String ATTRIBUTE_DESC = "attribute_desc";
	
	public static final Table_IF TableDefinition = new Table_IF() {
		/*** @see com.lxm.utilities.db.Table_IF#getTableName() */
		public String getTableName() {
			return TableName;
		}
		
		/*** @see com.lxm.utilities.db.Table_IF#getFields() */
		public String[] getFields() {
			return new String[] {
				ATTRIBUTE_CD,
				ATTRIBUTE_DESC
			};
		}

		/*** @see com.lxm.utilities.db.Table_IF#getLookupData(java.sql.Connection) */
		public ResultSet getLookupData(Connection conn) throws SQLException {
			return conn.createStatement().executeQuery(
				"select "+ATTRIBUTE_CD+","+ATTRIBUTE_DESC+" from "+TableName+" order by "+ATTRIBUTE_DESC
			);
		}

		/*** @see com.lxm.utilities.db.Table_IF#getLookupItem(java.sql.ResultSet) */
		public LookupItem getLookupItem(ResultSet aRS) throws SQLException {
			return new LookupItem(aRS,ATTRIBUTE_CD) {
				private String mDescription;
				
				public String getComboBoxString() {
					return mDescription+" ("+getCode()+")";
				}

				public void setDescription(ResultSet aRS) throws SQLException {
					this.mDescription = aRS.getString(ATTRIBUTE_DESC);
				}
			};
		}
	};
}


/**
 * 
 * $Log: ATTRIBUTE.java,v $
 * Revision 1.3  2007/05/22 15:09:30  g137997
 * Changed method signature for Table_IF requirement.
 *
 * Revision 1.2  2007/04/26 17:34:12  g137997
 * Lowercased all field names.
 *
 * Revision 1.1  2007/03/21 22:06:47  g137997
 * Added Attribute tab.
 *
 * 
 */