/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/TestFrame.java,v 1.2 2006/03/21 19:53:48 g137997 Exp $
 * 
 * TestFrame
 * Created on Nov 8, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.util;

import java.awt.Component;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JFrame;

public class TestFrame extends JFrame
{
	public TestFrame(Component c,boolean pack,boolean visible)
	{
		super("Test Frame");
		addWindowListener(
			new WindowAdapter() {
				public void windowClosing(WindowEvent aE) { System.exit(0); }
			}
		);
		add(c);
		setSize(800,600);
		setLocationRelativeTo(null);
		if(pack)pack();
		if(visible)setVisible(true);
	}
	
	public TestFrame(Component c)
	{
		this(c,true,true);
	}
}


/**
 * 
 * $Log: TestFrame.java,v $
 * Revision 1.2  2006/03/21 19:53:48  g137997
 * Added pack and visible flags.
 *
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2005/11/08 20:31:44  g137997
 * Initial check-in.
 *
 * 
 */