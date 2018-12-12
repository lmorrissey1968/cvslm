/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/bingo/CallColumn.java,v 1.3 2014/09/16 18:55:34 g137997 Exp $
 * 
 * CallColumn
 * Created on Dec 14, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.bingo;

import java.awt.Font;
import java.awt.GridLayout;

import javax.swing.JLabel;
import javax.swing.JPanel;

public class CallColumn extends JPanel
{
	private Font LETTER = new Font("Arial Bold",Font.ITALIC,50);

	public CallColumn(String aLetter,int aStart)
	{
		super(new GridLayout(16,0,0,0));
		JLabel letter = new JLabel(aLetter,JLabel.CENTER);
		letter.setFont(LETTER);
		add(letter);
		for(int i=0;i<15;i++) {
			BingoSquare square = new BingoSquare(new Integer(i+aStart),false);
			add(square);
		}
	}
	
	public void setMarked(int index,boolean aMarked) {
		((BingoSquare)getComponent(((index-1)%15)+1)).setMarked(aMarked);
	}
}


/**
 * 
 * $Log: CallColumn.java,v $
 * Revision 1.3  2014/09/16 18:55:34  g137997
 * CVS module namespace changed.
 *
 * Revision 1.2  2007/08/16 17:40:30  g137997
 * Changes to reflect re-organized utilities.
 *
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2005/12/14 21:22:46  g137997
 * Added game call manager.
 *
 * 
 */