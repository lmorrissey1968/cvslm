/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/menu/JMenuBuilder_IF.java,v 1.1 2007/09/11 19:11:16 g137997 Exp $
 * 
 * MenuBuilder_IF
 * Created on Mar 30, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.ui.menu;

import java.awt.Component;

import javax.swing.Action;
import javax.swing.JMenuItem;

/**
 * This ties JMenu and JPopupMenu together in a
 * common interface so that common blocks of code 
 * may be used to build a menus.   
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */ 
public interface JMenuBuilder_IF
{
    public Component add(Component c);
    
    public JMenuItem add(Action a);
    
    public JMenuItem add(String s);
    
    public JMenuItem add(JMenuItem menuItem);
    
    public void addSeparator();
    
	public void configure();
}

/**
 * 
 * $Log: JMenuBuilder_IF.java,v $
 * Revision 1.1  2007/09/11 19:11:16  g137997
 * Changed export methodology.
 *
 * Revision 1.1  2007/03/30 16:24:33  g137997
 * Initial check-in.
 *
 * 
 */