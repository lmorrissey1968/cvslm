/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/ActionButton.java,v 1.2 2008/10/30 13:14:15 g137997 Exp $
 * 
 * ActionButton
 * Created on Mar 8, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * 
 */

package org.lxm.util;

import java.awt.Insets;
import java.awt.event.ActionListener;

import javax.swing.Icon;
import javax.swing.JButton;

public abstract class ActionButton extends JButton implements ActionListener
{
	public ActionButton(Icon aIcon) {
		super(aIcon);
		common();
	}

	public ActionButton(String aText, Icon aIcon) {
		super(aText, aIcon);
		common();
	}

	public ActionButton(String aText) {
		super(aText);
		common();
	}
	
	private void common() {
		setMargin(new Insets(0,3,0,3));
		addActionListener(this);
	}
}

/**
 * 
 * $Log: ActionButton.java,v $
 * Revision 1.2  2008/10/30 13:14:15  g137997
 * Minor Changes
 *
 * Revision 1.1  2007/08/16 17:39:40  g137997
 * Re-organized and added utilities.
 *
 * Revision 1.2  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.1  2007/03/08 19:55:46  g137997
 * Initial check-in.
 *
 * 
 */