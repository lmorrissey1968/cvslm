/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/bingo/BingoColumn.java,v 1.1 2006/02/13 22:14:08 g137997 Exp $
 * 
 * BingoGrid
 * Created on Nov 16, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.bingo;

import java.awt.Color;
import java.awt.Font;
import java.awt.GridLayout;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JLabel;
import javax.swing.JPanel;

public class BingoColumn extends JPanel
{
	private Font LETTER = new Font("Arial Bold",Font.BOLD,65);
	
	public BingoColumn(String aLetter,int aStart,boolean aFree)
	{
		super(new GridLayout(6,0,0,0));
		JLabel letter = new JLabel(aLetter,JLabel.CENTER);
		letter.setFont(LETTER);
		letter.setForeground(Color.RED);
		setBackground(Color.WHITE);
		add(letter);
		List<Integer> data = getNumbers(aStart);
		for(int i=0;i<data.size();i++) {
			if(i==2 && aFree) {
				add(new BingoSquare("FREE",false));
			} else {
				add(new BingoSquare(data.get(i),true));
			}
		}
	}

	private final static List<Integer> getNumbers(int aStart) {
		List<Integer> numbers = new ArrayList(15);
		for(int i = aStart;i < aStart+15;i++) {
			numbers.add(i);
		}
		
		List<Integer> column = new ArrayList(5);
		for(int i = 0;i < 5;i++) {
			column.add(numbers.remove((int)(Math.random()*numbers.size())));
		}
		
		return column;
	}
	
	public BingoSquare getSquare(int row) {
		return (BingoSquare)getComponent(row);
	}
}


/**
 * 
 * $Log: BingoColumn.java,v $
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.6  2006/01/30 13:02:38  g137997
 * Added diamond and circle logic.
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