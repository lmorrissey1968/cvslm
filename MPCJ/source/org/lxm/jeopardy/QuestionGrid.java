/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/jeopardy/QuestionGrid.java,v 1.3 2014/09/16 18:55:34 g137997 Exp $
 * 
 * QuestionPanel
 * Created on Nov 8, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.jeopardy;

import java.awt.GridLayout;

import javax.swing.JPanel;

public class QuestionGrid extends JPanel
{
	
	public QuestionGrid()
	{
		super(new GridLayout(5,6));
		for(int row = 0;row < 5;row++)for(int col = 0;col < 6;col++) {
			add(new QuestionSquare((row+1)*100));
		}
	}
}


/**
 * 
 * $Log: QuestionGrid.java,v $
 * Revision 1.3  2014/09/16 18:55:34  g137997
 * CVS module namespace changed.
 *
 * Revision 1.2  2007/08/16 17:40:41  g137997
 * Changes to reflect re-organized utilities.
 *
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2005/11/08 20:31:43  g137997
 * Initial check-in.
 *
 * 
 */