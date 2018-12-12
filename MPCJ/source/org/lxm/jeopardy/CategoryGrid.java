/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/jeopardy/CategoryGrid.java,v 1.1 2006/02/13 22:14:08 g137997 Exp $
 * 
 * CategoryGrid
 * Created on Nov 8, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.jeopardy;

import java.awt.Color;
import java.awt.GridLayout;
import java.awt.geom.AffineTransform;

import javax.swing.JLabel;
import javax.swing.JPanel;

public class CategoryGrid extends JPanel
{
	private String[] mCats = {
		"Potent Potables","THERAPISTS","THE PEN IS MIGHTIER","Numbers","Animal Sounds","The Bible"	
	};
	
	public CategoryGrid()
	{
		super(new GridLayout(1,6));
		setBackground(Color.BLUE);
		AffineTransform tx = new AffineTransform();
		tx.scale(1.7,2.5);
		for(int col = 0;col < 6;col++) {
			JLabel cat = new JLabel(mCats[col],JLabel.CENTER);
			cat.setForeground(Color.WHITE);
			cat.setFont(cat.getFont().deriveFont(tx));
			add(cat);
		}
	}
	

}


/**
 * 
 * $Log: CategoryGrid.java,v $
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2005/11/08 20:31:43  g137997
 * Initial check-in.
 *
 * 
 */