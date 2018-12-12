/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/Insert.java,v 1.1 2007/03/07 22:36:28 g137997 Exp $
 * 
 * Insert
 * Created on Jun 16, 2005
 *
 * © LXM LLC, (2005). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/**
 * This class implements Job_IF in the SQL insert capacity.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class Insert
{
	private String mTableName;
	private String mSQL;
	private Map<String,Object> mPairs = new HashMap<String,Object>();
	
	/**
	 * Constructor
	 * @param aTableName The table to which this inser applies.
	 */
	public Insert(String aTableName)
	{
		this.mTableName = aTableName;
	}
	
	/**
	 * Allows the adding of field=value pairs.
	 * @param aFieldName The name of the field.
	 * @param aValue The object representing the value for the field.
	 * @return A reference to this to allow chaining.
	 */
	public Insert setFieldValuePair(String aFieldName,Object aValue) {
		Object oldValue = mPairs.put(aFieldName,aValue);
		if(oldValue==null)this.mSQL = null;
		return this;
	}
	
	/*** @see com.lmco.adp.ncwdisp.job.Job_IF#execute(com.lmco.adp.ncwdisp.job.notify.Notification) */
	/*** @see com.lmco.adp.ncwdisp.job.Job_IF#execute(java.sql.Connection) */
	public void execute(Connection aConn) throws SQLException {
		String[] fields = mPairs.keySet().toArray(new String[mPairs.size()]);
		if(mSQL==null){
			StringBuffer sql = new StringBuffer();
			sql.append("insert into ").append(mTableName).append(" (");
			
			for(int i=0;i < fields.length;i++) {
				if(i>0)sql.append(',');
				sql.append(fields[i]);
			}
			
			sql.append(") values (");
			
			for(int i=0;i < fields.length;i++) {
				if(i>0)sql.append(',');
				sql.append('?');
			}
			
			sql.append(')');
			this.mSQL = sql.toString();
		}
		
		PreparedStatement ps = aConn.prepareStatement(mSQL);

		for(int i=0;i < fields.length;i++) {
			ps.setObject(i+1,mPairs.get(fields[i]));
		}
		
		ps.executeUpdate();
		ps.close();
	}
}


/**
 * 
 * $Log: Insert.java,v $
 * Revision 1.1  2007/03/07 22:36:28  g137997
 * Re-packaged existing classes a bit.
 *
 * Revision 1.1  2007/03/06 18:31:08  g137997
 * Initial check-in.
 *
 * Revision 1.11  2006/08/10 19:18:35  g137997
 * Disbaled -0, Nan, Infinity check.
 *
 * Revision 1.10  2006/07/31 20:00:52  g137997
 * Modified to catch -0.
 *
 * Revision 1.8  2006/07/31 19:54:03  g137997
 * Added a crappy hack to avoid Oracle shortcomings.
 *
 * Revision 1.7  2006/07/20 15:53:47  g137997
 * Took out unnecessary (implied) toString() call.
 *
 * Revision 1.6  2006/02/16 20:37:09  g137997
 * Added toString().
 *
 * Revision 1.5  2005/10/26 16:40:59  g137997
 * Changed return value on Job_IF methods dealing with Notification.
 *
 * Revision 1.4  2005/09/29 07:59:18  g596060
 * Part of splitting out OSA-Mission pieces into separate project.
 *
 * Revision 1.3  2005/09/27 14:49:31  g137997
 * Removed un-necessary exception throw and obsolete method.
 *
 * Revision 1.2  2005/09/26 16:37:23  g137997
 * Added a version of execute that does a notification but no insert to a database.
 *
 * Revision 1.1  2005/09/21 15:16:15  g137997
 * Re-located job related classes to new package.
 * Changed Insert to use TableUpdate object from notification sub-API.
 *
 * Revision 1.9  2005/09/20 09:28:35  g137997
 * Removed field order.
 *
 * Revision 1.8  2005/09/19 17:14:36  g137997
 * Fixed reversed null check.
 *
 * Revision 1.7  2005/09/19 17:03:03  g137997
 * Changed return type to Map instead of ordered array.
 *
 * Revision 1.6  2005/09/19 16:08:36  g137997
 * Added field/value pairs as data objects passed on updates.
 *
 * Revision 1.5  2005/08/23 18:12:33  g137997
 * Added toString() method(s).
 *
 * Revision 1.4  2005/07/14 18:23:50  g137997
 * Added logic to make this re-cycleable.
 *
 * Revision 1.3  2005/07/13 18:43:40  g137997
 * Removed diagnostic debug.
 *
 * Revision 1.2  2005/06/16 13:44:45  g137997
 * Initial version of DataCollectionManager API.
 *
 * Revision 1.1  2005/06/16 12:37:51  g137997
 * Initial check-in.
 *
 * 
 */