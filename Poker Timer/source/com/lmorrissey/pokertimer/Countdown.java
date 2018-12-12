/**
 * 
 * $Header: /repository/CVSLM/Poker\040Timer/source/com/lmorrissey/pokertimer/Countdown.java,v 1.1 2007/02/09 13:21:38 g137997 Exp $
 * 
 * Countdown
 * Created on Feb 9, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmorrissey.pokertimer;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;
import java.util.Timer;
import java.util.TimerTask;

import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Countdown extends JPanel implements ActionListener
{
	private DecimalFormat FMT = new DecimalFormat("00");

	private int mSeconds;
	private JTextField mDisplay = new JTextField("00:00");
	private TimerTask mTask;
	private Timer mTimer;

	private long mDelay = 0;
	private int mReset;

	private JButton mStartStop;
	
	
	public Countdown(
		int aSeconds, 
		Timer aTimer
	) {
		super(new BorderLayout(1,1));
		this.mReset = this.mSeconds = aSeconds;
		this.mTimer = aTimer;
		
		mDisplay.setHorizontalAlignment(JTextField.CENTER);
		mDisplay.setBackground(Color.BLACK);
		mDisplay.setForeground(Color.GREEN);
		mDisplay.setFont(mDisplay.getFont().deriveFont(Font.BOLD,160f));
		sync();
		
		this.mStartStop = new JButton("Start");
		mStartStop.addActionListener(this);

		add(mStartStop,BorderLayout.WEST);
		add(mDisplay,BorderLayout.CENTER);
	}
	
	private void sync() {
		mDisplay.setText(FMT.format(mSeconds/60)+":"+FMT.format(mSeconds%60));
	}
	
	public void start() {
		if(mTask==null) {
			mTimer.scheduleAtFixedRate(
				this.mTask = new TimerTask() {
					public void run() {
						mSeconds--;
						sync();
					}
				}, 
				mDelay, 
				1000
			);
			mStartStop.setText("Stop");
		} else {
			this.mDelay  = 1000-(System.currentTimeMillis()-mTask.scheduledExecutionTime());
			mTask.cancel();
			mTask=null;
			mStartStop.setText("Start");
		}
	}

	/*** @see java.awt.event.ActionListener#actionPerformed(java.awt.event.ActionEvent) */
	public void actionPerformed(ActionEvent aE) {
		start();
	}
}

/**
 * 
 * $Log: Countdown.java,v $
 * Revision 1.1  2007/02/09 13:21:38  g137997
 * Initial check-in.
 *
 * 
 */