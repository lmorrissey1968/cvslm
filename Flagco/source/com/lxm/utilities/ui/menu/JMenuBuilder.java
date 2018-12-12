/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/menu/JMenuBuilder.java,v 1.1 2007/09/11 19:11:16 g137997 Exp $
 * 
 * JMenuBuilder
 * Created on Mar 30, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.ui.menu;

import javax.swing.JMenu;

/**
 * The JMenu implementor of the JMenuBuilder_IF interface.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */ 
public abstract class JMenuBuilder extends JMenu implements JMenuBuilder_IF
{
	public JMenuBuilder() {
		configure();
	}

	public JMenuBuilder(String aLabel) {
		super(aLabel);
		configure();
	}
}

/**
 * 
 * $Log: JMenuBuilder.java,v $
 * Revision 1.1  2007/09/11 19:11:16  g137997
 * Changed export methodology.
 *
 * Revision 1.1  2007/03/30 16:24:33  g137997
 * Initial check-in.
 *
 * 
 */