/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/Score.java,v 1.3 2007/10/17 18:50:02 g137997 Exp $
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


public class Score extends DigitalDisplay
{
	private int mValue;

	public Score(int aColumns, int aFontSize,Color aTextColor)
	{
		this(aColumns,aFontSize);
		setForeground(aTextColor);
	}
	
	public Score(int aColumns, int aFontSize)
	{
		super(aFontSize, aColumns);
		setHorizontalAlignment(RIGHT);
		setValue(0);
	}

	public void addToValue(int aAddend) {
		setValue(getValue()+aAddend);
	}
	
	public int getValue() {
		return mValue;
	}
	
	public void setValue(int aValue) {
		setText(String.valueOf(this.mValue = aValue));
	}
	
	public static void main(String[] args) {
		new Thread() {
			private int count = 0;
			private Score s = new Score(9,100);
			public void run() {
				new Util.TestFrame("Score",s);
				while(true) {
					try {
						Thread.sleep((long)(Math.random()*1000));
					} catch(InterruptedException exc) {
						exc.printStackTrace();
					}
					long time = System.currentTimeMillis();
					s.addToValue((int)(Math.random()*1000));
				}
			}
		}.start();
	}

}


/**
 * 
 * $Log: Score.java,v $
 * Revision 1.3  2007/10/17 18:50:02  g137997
 * Uses convenience constructor for DigitalDisplay.
 *
 * Revision 1.2  2007/02/09 18:04:23  g137997
 * Made major enhancements to Poker Timer and supporting classes.
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