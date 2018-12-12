/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/RowSelectionDialog.java,v 1.2 2007/09/10 12:04:59 g137997 Exp $
 * 
 * RowSelectionDialog
 * Created on Aug 8, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.db;

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JDialog;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;

import com.lxm.utilities.ui.ActionButton;
import com.lxm.utilities.ui.JPanelBuilder;
import com.lxm.utilities.ui.UtilUI;

public class RowSelectionDialog extends JDialog
{
	private ResultSetTable mTable;
	private int mSelection = -1;

	public RowSelectionDialog(Component parent,ResultSet aRS) throws SQLException
	{
		super(JOptionPane.getFrameForComponent(parent),true);
		setDefaultCloseOperation(JDialog.DO_NOTHING_ON_CLOSE);
		setLayout(new BorderLayout(1,1));
		
		add(
			new JScrollPane(this.mTable = new ResultSetTable(aRS)),
			BorderLayout.CENTER
		);
		add(
			new JPanelBuilder(new FlowLayout(FlowLayout.CENTER)) {
				public void configure() {
					add(
						new ActionButton("OK",UtilUI.getStandardImageIcon("green_check.gif")) {
							public void actionPerformed(ActionEvent e) {
								int selection = mTable.getSelectedRow();
								if(selection>-1) {
									mSelection = selection+1;
									dispose();
								} else {
									UtilUI.alert(this,"ERROR","You must make a selection using one of the following methods:\n1) Highlighting a row and then clicking the OK button.\n2) By double clicking a row.");
								}
							}
						}
					);
					add(
						new ActionButton("CANCEL",UtilUI.getStandardImageIcon("red_x.gif")) {
							public void actionPerformed(ActionEvent e) {
								dispose();
							}
						}
					);
				}
			},
			BorderLayout.SOUTH
		);
		addWindowListener(
			new WindowAdapter() {
				public void windowClosing(WindowEvent e) {
					dispose();
				}
			}
		);

		mTable.addMouseListener(
			new MouseAdapter() {
				public void mouseClicked(MouseEvent e) {
					if(e.getClickCount()==2) {
						int selection = mTable.rowAtPoint(e.getPoint());
						if(selection>-1) {
							mSelection = selection+1;
							dispose();
						}
					}
				}
			}
		);
		
		setTitle(mTable.getRowCount()+" rows of data");

		Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
		setSize(Math.min((int)(screen.width*0.75),mTable.getTotalWidth()),(int)(screen.height*0.60));
		setLocationRelativeTo(parent);
		setVisible(true);
	}
	
	public int getSelection() {
		return mSelection;
	}
}

/**
 * 
 * $Log: RowSelectionDialog.java,v $
 * Revision 1.2  2007/09/10 12:04:59  g137997
 * Miscellaneous changes to organization.
 *
 * Revision 1.1  2007/08/08 21:12:43  g137997
 * Initial check-in.
 *
 * 
 */