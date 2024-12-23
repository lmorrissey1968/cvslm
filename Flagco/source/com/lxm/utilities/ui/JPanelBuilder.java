/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/JPanelBuilder.java,v 1.1 2007/04/30 11:55:12 g137997 Exp $
 * 
 * JPanelBuilder
 * Created on Apr 27, 2007
 *
 * � LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.ui;

import java.awt.LayoutManager;

import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public abstract class JPanelBuilder extends JPanel
{
	public abstract void configure();

	public JPanelBuilder() {
		configure();
	}

	public JPanelBuilder(LayoutManager aLayout)
	{
		super(aLayout);
		configure();
	}

	public JPanelBuilder(boolean aIsDoubleBuffered)
	{
		super(aIsDoubleBuffered);
		configure();
	}

	public JPanelBuilder(LayoutManager aLayout, boolean aIsDoubleBuffered)
	{
		super(aLayout, aIsDoubleBuffered);
		configure();
	}
	
	public void addLabel(String aLabel) {
		add(new JLabel(aLabel));
	}
}


/**
 * 
 * $Log: JPanelBuilder.java,v $
 * Revision 1.1  2007/04/30 11:55:12  g137997
 * Initial check-in.
 *
 * Revision 1.1  2007/04/27 20:05:52  g137997
 * Initial check-in.
 *
 * 
 */