/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/DigitalDisplay.java,v 1.6 2007/10/17 18:49:30 g137997 Exp $
 * 
 * Score
 * Created on Jan 27, 2006
 *
 * © Lockheed Martin Corporation, (2006). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.util;

import java.awt.Color;
import java.awt.Font;

import javax.swing.JTextField;


public class DigitalDisplay extends JTextField
{
	public DigitalDisplay(int aFontSize,String aText)
	{
		this(TTF.FONT_DIGITAL,aFontSize,aText);
		
	}

	public DigitalDisplay(int aFontSize,int aColumns,Color aTextColor)
	{
		this(TTF.FONT_DIGITAL,aFontSize,aColumns,aTextColor);
	}
	
	public DigitalDisplay(int aFontSize,int aColumns)
	{
		this(TTF.FONT_DIGITAL,aFontSize,aColumns);
	}
	
	public DigitalDisplay(Font aFont,int aFontSize,String aText) 
	{
		this(aFont,aFontSize,aText.length());
		setText(aText);
	}

	public DigitalDisplay(Font aFont,int aFontSize,int aColumns,Color aTextColor)
	{
		this(aFont,aFontSize,aColumns);
		setForeground(aTextColor);
	}

	public DigitalDisplay(Font aFont,int aFontSize,int aColumns)
	{
		super(aColumns);
		setEditable(false);
		setBackground(Color.BLACK);
		setForeground(Color.GREEN);
		
		setFont(aFont.deriveFont((float)aFontSize));
		
		//addComponentListener(
		//	new ComponentAdapter() {
		//		public void componentResized(ComponentEvent e) {
		//			setFont(sBase.deriveFont((float)getSize().height));
		//		}
		//	}
		//);
	}
	
	public static void main(String[] args) {
		new TestFrame(new DigitalDisplay(40,"THIS IS A TEST"),true,true);
	}
}


/**
 * 
 * $Log: DigitalDisplay.java,v $
 * Revision 1.6  2007/10/17 18:49:30  g137997
 * Moved font loader and map code to utility.
 * Added convenience constuctors for DIGITAL font.
 *
 * Revision 1.5  2007/08/16 22:42:32  g137997
 * More work on new poker timer.
 *
 * Revision 1.4  2007/08/16 17:39:40  g137997
 * Re-organized and added utilities.
 *
 * Revision 1.3  2007/02/09 18:04:23  g137997
 * Made major enhancements to Poker Timer and supporting classes.
 *
 * Revision 1.2  2006/03/21 19:53:32  g137997
 * Added a main (entry point).
 *
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2006/01/30 13:00:59  g137997
 * Initial check-in.
 *
 * 
 */