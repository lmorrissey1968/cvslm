/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/menu/JPopupMenuBuilder.java,v 1.1 2007/09/11 19:11:16 g137997 Exp $
 * 
 * JPopupMenuBuilder
 * Created on Mar 30, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.ui.menu;

import javax.swing.JPopupMenu;

/**
 * The JPopupMenu implementor of the JMenuBuilder_IF interface.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */ 
public abstract class JPopupMenuBuilder extends JPopupMenu implements JMenuBuilder_IF
{
	public JPopupMenuBuilder() {
		configure();
	}

	public JPopupMenuBuilder(String aLabel) {
		super(aLabel);
		configure();
	}
}

/**
 * 
 * $Log: JPopupMenuBuilder.java,v $
 * Revision 1.1  2007/09/11 19:11:16  g137997
 * Changed export methodology.
 *
 * Revision 1.1  2007/03/30 16:24:33  g137997
 * Initial check-in.
 *
 * 
 */