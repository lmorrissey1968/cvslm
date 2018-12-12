/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/SearchWrapper.java,v 1.1 2007/09/10 19:47:19 g137997 Exp $
 * 
 * SearchWrapper
 * Created on Mar 7, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;

import javax.swing.JComponent;
import javax.swing.JPopupMenu;

import com.lxm.utilities.ui.ActionButton;
import com.lxm.utilities.ui.ActionMenuItem;
import com.lxm.utilities.ui.UtilUI;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class SearchWrapper extends JComponent
{
	private DataField_IF mField;
	private boolean mKeyFlag;
	private ActionButton mGSB;
	
	public SearchWrapper(
		DataField_IF aField
	) {
		this.mField = aField;

		setLayout(new FlowLayout(FlowLayout.LEADING,0,0));
		add(mField.getFieldComponent());
		add(
			this.mGSB = new ActionButton("Search",UtilUI.getStandardImageIcon("lightning3.gif")) {
				private JPopupMenu mMenu;
		
				public void actionPerformed(ActionEvent e) {
					mMenu.show(this,0,this.getHeight());
				}
				
				public void init() {
					this.mMenu = new JPopupMenu();
					mMenu.add(
						new ActionMenuItem("Matches") {
							public void actionPerformed(ActionEvent e) {
								mField.getManager().getRequested(mField.getFieldName(),mField.getFieldValue());
							}
						}
					);
					mMenu.add(
						new ActionMenuItem("Contains") {
							public void actionPerformed(ActionEvent e) {
								mField.getManager().searchRequested(mField.getFieldName(),mField.getFieldValue());
							}
						}
					);
				}
			}
		);
		mGSB.setFocusable(false);
	}
}


/**
 * 
 * $Log: SearchWrapper.java,v $
 * Revision 1.1  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * Revision 1.11  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.10  2007/09/10 12:04:59  g137997
 * Miscellaneous changes to organization.
 *
 * Revision 1.9  2007/09/06 12:33:08  g137997
 * Changed to use new DataField_IF.
 *
 * Revision 1.8  2007/08/08 21:14:13  g137997
 * Changed to be ABSOLUTE or FUZZY searchable at runtime.
 *
 * Revision 1.7  2007/05/18 15:37:24  g137997
 * Changed button to be NOT focusable.
 *
 * Revision 1.6  2007/03/16 19:38:21  g137997
 * Added different search modes.
 *
 * Revision 1.5  2007/03/14 16:09:01  g137997
 * Made search more robust.
 *
 * Revision 1.4  2007/03/14 14:54:06  g137997
 * Added formatting.
 *
 * Revision 1.3  2007/03/13 22:16:57  g137997
 * Continued adding functionality.
 *
 * Revision 1.2  2007/03/08 19:56:23  g137997
 * Added more required logic.
 *
 * Revision 1.1  2007/03/07 23:36:22  g137997
 * Initial check-in.
 *
 * 
 */