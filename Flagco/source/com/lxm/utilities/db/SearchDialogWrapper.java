/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/SearchDialogWrapper.java,v 1.1 2007/09/10 20:46:39 g137997 Exp $
 * 
 * SearchDialogWrapper
 * Created on Sep 10, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.db;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;

import javax.swing.JComponent;
import javax.swing.JOptionPane;
import javax.swing.JPopupMenu;

import com.lxm.utilities.ui.ActionButton;
import com.lxm.utilities.ui.UtilUI;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class SearchDialogWrapper extends JComponent
{
	private DataField_IF mField;
	private DataField_IF mDialogField;
	private ActionButton mGSB;
	private String mDialogTitle;

	public SearchDialogWrapper(
		DataField_IF aField,
		DataField_IF aDialogField,
		String aDialogTitle
	) {
		this.mField = aField;
		this.mDialogField = aDialogField;
		this.mDialogTitle = aDialogTitle; 

		setLayout(new FlowLayout(FlowLayout.LEADING,0,0));
		add(mField.getFieldComponent());
		add(
			this.mGSB = new ActionButton("Search",UtilUI.getStandardImageIcon("lightning3.gif")) {
				private JPopupMenu mMenu;
				
				public void actionPerformed(ActionEvent e) {
					int action = JOptionPane.showOptionDialog(
						mField.getFieldComponent(),
						mDialogField.getFieldComponent(),
						"Search by '"+mDialogTitle+"'",
						JOptionPane.OK_CANCEL_OPTION,
						JOptionPane.QUESTION_MESSAGE,
						null,
						new Object[] {"Matches","Contains","Cancel"},
						null
					);
					switch(action){
						case 0:
							mDialogField.getManager().getRequested(mDialogField.getFieldName(),mDialogField.getFieldValue());
							break;
						case 1:
							mDialogField.getManager().searchRequested(mDialogField.getFieldName(),mDialogField.getFieldValue());
							break;
					}
				}
			}
		);
		mGSB.setFocusable(false);
	}
}


/**
 * 
 * $Log: SearchDialogWrapper.java,v $
 * Revision 1.1  2007/09/10 20:46:39  g137997
 * Initial check-in.
 *
 * 
 */