/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/ActionMenuItem.java,v 1.2 2007/09/10 12:02:16 g137997 Exp $
 * 
 * ActionMenuItem
 * Created on Aug 8, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.ui;

import java.awt.event.ActionListener;

import javax.swing.Action;
import javax.swing.Icon;
import javax.swing.JMenuItem;

/**
 * Class makes it easier to make an actionable JMenuItem.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */
public abstract class ActionMenuItem extends JMenuItem implements ActionListener
{
	public ActionMenuItem()
	{
		common();
	}

	public ActionMenuItem(Action a)
	{
		super(a);
		common();
	}

	public ActionMenuItem(Icon aIcon)
	{
		super(aIcon);
		common();
	}

	public ActionMenuItem(String aText, Icon aIcon)
	{
		super(aText, aIcon);
		common();
	}

	public ActionMenuItem(String aText, int aMnemonic)
	{
		super(aText, aMnemonic);
		common();
	}

	public ActionMenuItem(String aText)
	{
		super(aText);
		common();
	}
	
	private final void common() {
		init();
		addActionListener(this);
	}
	
	public void init() {}
}


/**
 * 
 * $Log: ActionMenuItem.java,v $
 * Revision 1.2  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.1  2007/08/08 21:11:38  g137997
 * Initial check-in.
 *
 * 
 */