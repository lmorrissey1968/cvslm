/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/DataListener.java,v 1.7 2007/10/12 17:08:47 g137997 Exp $
 * 
 * TableListener
 * Created on Mar 12, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.7 $
 */
public interface DataListener
{
	public void select(ResultSet rs) throws SQLException;
	
	public void update(ResultSet rs) throws SQLException;

	public void insert(ResultSet rs) throws SQLException;
	
	public void delete(ResultSet rs) throws SQLException;
	
	public void reset() throws SQLException;
	
	public void clear() throws SQLException;
	
	public boolean hasChanged();
}


/**
 * 
 * $Log: DataListener.java,v $
 * Revision 1.7  2007/10/12 17:08:47  g137997
 * Added delete(rs) method to DataListener interface.
 *
 * Revision 1.6  2007/03/25 14:38:28  g137997
 * Several enhancements to support requirements.
 *
 * Revision 1.5  2007/03/19 21:00:23  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.4  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.3  2007/03/14 16:08:26  g137997
 * Added new callbacks.
 * Renamed existing callbacks.
 *
 * Revision 1.2  2007/03/14 14:53:35  g137997
 * Re-named methods.
 *
 * Revision 1.1  2007/03/13 22:16:57  g137997
 * Continued adding functionality.
 *
 * 
 */