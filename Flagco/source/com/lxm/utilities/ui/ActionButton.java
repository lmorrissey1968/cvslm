/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/ActionButton.java,v 1.3 2007/08/08 21:13:38 g137997 Exp $
 * 
 * ActionButton
 * Created on Mar 8, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.ui;

import java.awt.Insets;
import java.awt.event.ActionListener;

import javax.swing.Icon;
import javax.swing.JButton;

/**
 * Class makes it easier to make an actionable JButton.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.3 $
 */ 
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
	
	private final void common() {
		setMargin(new Insets(0,3,0,3));
		init();
		addActionListener(this);
	}
	
	public void init() {}
}

/**
 * 
 * $Log: ActionButton.java,v $
 * Revision 1.3  2007/08/08 21:13:38  g137997
 * Added empty optional init() for anonymous implementers.
 *
 * Revision 1.2  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.1  2007/03/08 19:55:46  g137997
 * Initial check-in.
 *
 * 
 */