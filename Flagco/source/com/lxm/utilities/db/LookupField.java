/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/LookupField.java,v 1.2 2007/09/10 19:47:19 g137997 Exp $
 * 
 * ForeignKeyDataField
 * Created on September 10, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JComboBox;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */
public class LookupField extends JComboBox
{
	private String mFieldName;
	private DataBaseConnector mConnector;
	private DataRefreshManager mListener;

	public LookupField(
		String aFieldName,
		DataRefreshManager aListener,
		DataBaseConnector aConnector
	) {
		this.mFieldName = aFieldName;
		this.mConnector = aConnector;
		this.mListener = aListener;
		setEditable(true);
	}
	
	public void refreshData() throws SQLException {
		removeAllItems();
		addItem("<edit/select>");
		ResultSet rs = mConnector.executeQuery(
			mConnector.getConnection(false),
			"select "+mFieldName+" from XXX"
		);
		while(rs.next())addItem(rs.getObject(1));
		rs.close();
	}
}


/**
 * 
 * $Log: LookupField.java,v $
 * Revision 1.2  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * Revision 1.1  2007/09/10 17:30:55  g137997
 * Initial check-in.
 *
 */