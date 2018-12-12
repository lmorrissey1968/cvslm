/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/DataRefreshManager.java,v 1.1 2007/09/10 17:30:37 g137997 Exp $
 * 
 * DataListener
 * Created on Mar 8, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public interface DataRefreshManager
{
	public void addDataListener(DataListener aListener);
	
	public void getRequested(String aFieldName,Object aValue);
	
	public void searchRequested(String aFieldName,Object aValue);
}


/**
 * 
 * $Log: DataRefreshManager.java,v $
 * Revision 1.1  2007/09/10 17:30:37  g137997
 * Class renamed more appropriately.
 *
 * Revision 1.6  2007/05/12 12:15:09  g137997
 * Organized imports.
 *
 * Revision 1.5  2007/03/16 19:38:57  g137997
 * Renamed method.
 *
 * Revision 1.4  2007/03/14 16:09:52  g137997
 * Renamed methods.
 *
 * Revision 1.3  2007/03/14 14:53:49  g137997
 * Re-named methods.
 *
 * Revision 1.2  2007/03/13 22:16:57  g137997
 * Continued adding functionality.
 *
 * Revision 1.1  2007/03/08 19:55:46  g137997
 * Initial check-in.
 *
 * 
 */;