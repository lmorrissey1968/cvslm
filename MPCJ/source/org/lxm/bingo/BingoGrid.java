/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/bingo/BingoGrid.java,v 1.1 2006/02/13 22:14:08 g137997 Exp $
 * 
 * BingoGrid
 * Created on Nov 16, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.bingo;

import java.awt.Dimension;
import java.awt.GridLayout;

import javax.swing.BorderFactory;
import javax.swing.JPanel;

public class BingoGrid extends JPanel
{
	public BingoGrid(String aWord)
	{
		setLayout(new GridLayout(0,5));
		setBorder(BorderFactory.createEmptyBorder(10,10,10,10));
		for(int i = 0;i < 5;i++) {
			add(new BingoColumn(String.valueOf(aWord.charAt(i)),(i*15)+1,i==2));
		}
	}

	public Dimension getPreferredSize() {
		return new Dimension(450,550);
	}

	public String getCode() {
		StringBuffer sb = new StringBuffer();
		for(int c=1;c<=5;c++)for(int r=1;r<=5;r++) {
			sb.append(getSquare(r,c).getCode());
		}
		return sb.toString();
	}

	
	public BingoSquare getSquare(int row,int col) {
		return ((BingoColumn)getComponent(col-1)).getSquare(row);
	}
}


/**
 * 
 * $Log: BingoGrid.java,v $
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.6  2006/02/02 13:23:07  g137997
 * Added getCode() method.
 *
 * Revision 1.5  2006/01/19 18:52:29  g137997
 * Made more enhancements.
 *
 * Revision 1.4  2006/01/18 22:02:45  g137997
 * Added bonus square.
 *
 * Revision 1.3  2005/12/14 21:22:46  g137997
 * Added game call manager.
 *
 * Revision 1.2  2005/11/17 22:42:18  g137997
 * Added major enhancements.
 *
 * Revision 1.1  2005/11/16 22:39:38  g137997
 * Initial check-in.
 *
 * 
 */