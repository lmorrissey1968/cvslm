/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/jeopardy/Board.java,v 1.1 2006/02/13 22:14:08 g137997 Exp $
 * 
 * Board
 * Created on Nov 8, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.jeopardy;

import java.awt.BorderLayout;

import javax.swing.JComponent;

import org.lxm.util.TestFrame;

public class Board extends JComponent
{
	public Board()
	{
		setLayout(new BorderLayout(0,0));
		add(new CategoryGrid(),BorderLayout.NORTH);
		add(new QuestionGrid(),BorderLayout.CENTER);
	}
	
	public static void main(String[] args) {
		new TestFrame(new Board());
	}


}


/**
 * 
 * $Log: Board.java,v $
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2005/11/08 20:31:44  g137997
 * Initial check-in.
 *
 * 
 */