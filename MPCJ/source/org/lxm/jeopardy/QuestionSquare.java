/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/jeopardy/QuestionSquare.java,v 1.1 2006/02/13 22:14:08 g137997 Exp $
 * 
 * Question
 * Created on Nov 8, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.jeopardy;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Insets;
import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;
import java.awt.geom.AffineTransform;

import javax.swing.JButton;

public class QuestionSquare extends JButton
{
	private Font mBaseFont;
	
	public QuestionSquare(int aValue)
	{
		super(String.valueOf(aValue));
		setBackground(Color.BLUE);
		setForeground(Color.WHITE);
		
		addComponentListener(
			new ComponentAdapter() {
				public void componentResized(ComponentEvent evt) {
					if(mBaseFont==null)mBaseFont = getFont();
					
					Insets ins = getInsets();
					Dimension siz = getSize();
					float len = getFontMetrics(mBaseFont).stringWidth(getText());
					
					float scale = ((siz.width-ins.left-ins.right) / len) * 0.9f;
					
					AffineTransform tx = new AffineTransform();
					tx.scale(scale,scale);
					setFont(mBaseFont.deriveFont(tx));
				}
			}
		);
		
	}
}

/**
 * 
 * $Log: QuestionSquare.java,v $
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2005/11/08 20:31:44  g137997
 * Initial check-in.
 *
 * 
 */