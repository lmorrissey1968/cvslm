/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/SQLScriptRunner.java,v 1.1 2007/05/15 22:59:33 g137997 Exp $
 * 
 * SQLScriptRunner
 * Created on May 15, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.db;

import javax.swing.JFrame;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class SQLScriptRunner extends JFrame
{
	private DataBaseConnector mConnector = new DataBaseConnector(this);
	
	public SQLScriptRunner()
	{
		
	}

	public static void main(String[] args) {
		new SQLScriptRunner();
	}
}


/**
 * 
 * $Log: SQLScriptRunner.java,v $
 * Revision 1.1  2007/05/15 22:59:33  g137997
 * Initial check-in.
 *
 * 
 */