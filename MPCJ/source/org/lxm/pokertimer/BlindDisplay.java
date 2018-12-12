/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/pokertimer/BlindDisplay.java,v 1.5 2008/01/04 04:21:40 g137997 Exp $
 * 
 * BlindDisplay
 * Created on Aug 16, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.pokertimer;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.util.Iterator;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.JComponent;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import org.lxm.util.ConfirmButton;
import org.lxm.util.DigitalDisplay;
import org.lxm.util.JPanelBuilder;
import org.lxm.util.TTF;

public class BlindDisplay extends JComponent implements CountdownTimerListener
{
	private static Color[] COLORS = { Color.RED,Color.GREEN,Color.CYAN,Color.MAGENTA };
	private static int COUNT = 0;
	
	private DigitalDisplay mLittle = new DigitalDisplay(70,"$00.00");
	private DigitalDisplay mBig = new DigitalDisplay(90,"$00.00");
	//private CountdownTimer mLimit = new CountdownTimer(0,20,false);
	private Iterator<BlindEntry> mNextBlind;
	protected ConfirmButton mRaise;
	private int mMinTimeIncrease;
	protected boolean mDelayed;
	private DigitalDisplay mTableID = new DigitalDisplay(TTF.FONT_3X5,40,"Table "+(++COUNT));
	private List<BlindEntry> mBlinds;

	public BlindDisplay(List<BlindEntry> aBlinds)
	{
		setLayout(new BorderLayout());
		setBorder(BorderFactory.createLineBorder(Color.BLUE,8));
		
		Color c = COLORS[(COUNT-1)%COLORS.length];
		
		this.mBlinds = aBlinds;
		this.mNextBlind = mBlinds.iterator();
		mLittle.setForeground(c);
		mLittle.setHorizontalAlignment(JTextField.RIGHT);
		mBig.setForeground(c);
		mBig.setHorizontalAlignment(JTextField.RIGHT);
		//mLimit.setDisplayColor(c);
		mTableID.setHorizontalAlignment(JTextField.CENTER);
		mTableID.setForeground(c);
		
		add(mTableID,BorderLayout.NORTH);
		
		
		add(
			new JPanelBuilder(new GridLayout(1,0)) {
				public void configure() {
					add(mLittle);
					add(mBig);
				}
			},
			BorderLayout.CENTER
		);
		
		add(
			new JPanelBuilder(new BorderLayout(1,1)) {
				public void configure() {
					//add(mLimit,BorderLayout.CENTER);
					add(
						mRaise = new ConfirmButton("Increase Blinds") {
							public void actionPerformed(ActionEvent e) {
								raiseBlinds();
							}
						},
						BorderLayout.EAST
					);
					add(
						mRaise = new ConfirmButton("Reset") {
							public void actionPerformed(ActionEvent e) {
								if(JOptionPane.showInputDialog(this,"Enter 'yes' to confim","no").equals("yes")) {
									resetBlinds();
								}
							}
						},
						BorderLayout.WEST
					);
				}
			},
			BorderLayout.SOUTH
		);
		syncBlinds();
		
		//mLimit.addCountdownListener(
		//	new CountdownTimerListener() {
		//		public void timerExpired() {
		//			mDelayed = false;
		//			mRaise.setEnabled(true);
		//		}
		//
		//		public void timerReset(int aMinutes, float aSeconds) {
		//			mDelayed = true;
		//			mRaise.setEnabled(false);
		//		}
		//
		//		public void timerStarted(int aMinutes, float aSeconds) {
		//		}
		//
		//		public void timerStopped(int aMinutes, float aSeconds) {
		//		}
		//	}
		//);
	}
	
	private void resetBlinds() {
		this.mNextBlind = mBlinds.iterator();
		syncBlinds();
	}
	
	private void raiseBlinds() {
		//mRaise.setEnabled(false);
		syncBlinds();
		//mLimit.setTime(mMinTimeIncrease);
		//mLimit.restartTimer();
	}
	
	private void syncBlinds() {
		if(mNextBlind.hasNext()) {
			BlindEntry entry = mNextBlind.next();
			mLittle.setText(entry.getLittle());
			mBig.setText(entry.getBig());
			this.mMinTimeIncrease = entry.getTime()/2;
		}
	}

	/*** @see org.lxm.pokertimer.CountdownTimerListener#timerExpired() */
	public void timerExpired() {
		if(!mDelayed)raiseBlinds();
	}

	/*** @see org.lxm.pokertimer.CountdownTimerListener#timerReset(int, float) */
	public void timerReset(int aMinutes, float aSeconds) {
	}

	/*** @see org.lxm.pokertimer.CountdownTimerListener#timerStarted(int, float) */
	public void timerStarted(int aMinutes, float aSeconds) {
		//if(mLimit.getTime()>0)mLimit.startTimer();
	}

	/*** @see org.lxm.pokertimer.CountdownTimerListener#timerStopped(int, float) */
	public void timerStopped(int aMinutes, float aSeconds) {
		//mLimit.stopTimer();
	}
}

/**
 * 
 * $Log: BlindDisplay.java,v $
 * Revision 1.5  2008/01/04 04:21:40  g137997
 * Disabled limiter timer.
 *
 * Revision 1.4  2007/10/17 19:56:50  g137997
 * Added tenths.
 *
 * Revision 1.3  2007/10/17 18:50:39  g137997
 * Changed to use modified DigitalDisplay.
 *
 * Revision 1.2  2007/08/17 11:43:35  g137997
 * Added more enhancements to new poker timer.
 *
 * Revision 1.1  2007/08/16 22:42:17  g137997
 * Initial check-in.
 *
 * 
 */