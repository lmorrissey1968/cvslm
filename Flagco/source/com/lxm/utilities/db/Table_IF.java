/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/Table_IF.java,v 1.2 2007/05/22 15:09:06 g137997 Exp $
 * 
 * TableDefinition
 * Created on Mar 17, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */
public interface Table_IF
{
	public String getTableName();
	
	public String[] getFields();

	public ResultSet getLookupData(Connection conn) throws SQLException;
	
	public LookupItem getLookupItem(ResultSet aRS) throws SQLException;
	
	
	
	public abstract static class LookupItem
	{
		public Integer mCode;
		
		public LookupItem(ResultSet aRS,String aCodeFieldName) throws SQLException {
			this.mCode = aRS.getInt(aCodeFieldName);
			setDescription(aRS);
		}

		public abstract void setDescription(ResultSet aRS) throws SQLException;
		
		public abstract String getComboBoxString();
		
		public Integer getCode() { return mCode; }
		
		/*** @see java.lang.Object#toString() */
		public String toString() { return getComboBoxString(); }
	}
}


/**
 * 
 * $Log: Table_IF.java,v $
 * Revision 1.2  2007/05/22 15:09:06  g137997
 * Changed method signature.
 *
 * Revision 1.1  2007/03/19 21:00:23  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.1  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * 
 */