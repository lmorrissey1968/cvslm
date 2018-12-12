/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/ResultSetTable.java,v 1.6 2007/10/16 13:07:40 g137997 Exp $
 * 
 * ResultSetTable
 * Created on Mar 17, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.awt.Component;
import java.awt.FontMetrics;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JTable;
import javax.swing.table.TableColumnModel;

public class ResultSetTable extends JTable 
{
	private ResultSetTableModel mModel;
	private int mTotalWidth = 0;
	//private TableSorter mSorter;

	public ResultSetTable(ResultSet aRS) throws SQLException
	{
		setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
		setModel(
			//this.mSorter = new TableSorter(
				this.mModel = new ResultSetTableModel(aRS)
			//)
		);
		//mSorter.setTableHeader(getTableHeader());
		int num = mModel.getColumnCount();
		FontMetrics fm = getFontMetrics(getFont());
		TableColumnModel cModel = getColumnModel();
		
		for(int i = 0;i < num;i++) {
			int width = (int)(mModel.getColumnWidth(fm,i) * 1.2);
			cModel.getColumn(i).setPreferredWidth(width);
			this.mTotalWidth += width;
		}
	}
	
	public int getTotalWidth() {
		return mTotalWidth;
	}
	
	public static final int selectResultSetRow(Component parent,ResultSet aRS) throws SQLException {
		return new RowSelectionDialog(parent,aRS).getSelection();
	}
}

/**
 * 
 * $Log: ResultSetTable.java,v $
 * Revision 1.6  2007/10/16 13:07:40  g137997
 * Added disabled tabel sorter wrapper.
 *
 * Revision 1.5  2007/09/10 12:04:59  g137997
 * Miscellaneous changes to organization.
 *
 * Revision 1.4  2007/08/08 21:15:00  g137997
 * Improved search functionality.
 *
 * Revision 1.3  2007/03/19 21:00:23  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.2  2007/03/18 04:27:50  g137997
 * Enhanced to where selection from multiple rows may be done.
 *
 * Revision 1.1  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * 
 */