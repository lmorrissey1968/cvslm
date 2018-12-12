/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/pokertimer/BlindTimer.java,v 1.4 2012/02/10 22:48:53 g137997 Exp $
 * 
 * Countdown
 * Created on Feb 9, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.pokertimer;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import org.lxm.util.ActionButton;
import org.lxm.util.ConfirmButton;
import org.lxm.util.DigitalDisplay;
import org.lxm.util.TTF;

public class BlindTimer extends JPanel
{
	private final DecimalFormat MINSEC = new DecimalFormat("00");
	private int mSeconds;
	private DigitalDisplay mTime = new DigitalDisplay(220,"00:00");
	private DigitalDisplay mLittle = new DigitalDisplay(TTF.FONT_3X5,100,"$00.00");
	private DigitalDisplay mBig = new DigitalDisplay(TTF.FONT_3X5,130,"$00.00");
	private TimerTask mTask;
	private Timer mTimer;

	private long mRestartDelay = 0;
	private int mIndex = 0;

	private JButton mStartStop,mRaiseBlinds;
	private List<BlindEntry> mSchedule;
	
	private static final Color[] COLORS = {
		Color.RED,Color.GREEN,Color.CYAN,
		Color.MAGENTA,Color.YELLOW,Color.ORANGE,
		Color.GRAY,Color.BLUE
	};
	
	public BlindTimer(
		List<BlindEntry> aSchedule, 
		Timer aTimer,
		int aTableNumber
	) {
		super(new BorderLayout(1,1));
		setBackground(Color.DARK_GRAY);
		this.mSchedule = aSchedule;
		this.mTimer = aTimer;
		
		mTime.setHorizontalAlignment(JTextField.CENTER);
		mTime.setBackground(Color.BLACK);
		
		JPanel controlButtonPanel = new JPanel(new GridLayout(0,1));
		
		controlButtonPanel.add(
			this.mStartStop = new ActionButton("Start") {
				public void actionPerformed(ActionEvent e) {
					if(mTask==null) {
						startTimer();
					} else {
						stopTimer();
					}
				}
			}
		);
		controlButtonPanel.add(
			this.mRaiseBlinds = new ConfirmButton("Blinds+") {
				public void actionPerformed(ActionEvent e) {
					raiseBlinds();
				}
			}
		);


		
		add(controlButtonPanel,BorderLayout.WEST);
		
		add(mTime,BorderLayout.CENTER);
		
		JPanel littleBigPanel = new JPanel(new GridLayout(0,1));
		littleBigPanel.add(mLittle); mLittle.setHorizontalAlignment(JTextField.RIGHT);
		littleBigPanel.add(mBig); mBig.setHorizontalAlignment(JTextField.RIGHT);
		
		add(littleBigPanel,BorderLayout.EAST);

		Color color = COLORS[(aTableNumber-1)%COLORS.length];
		add(new TimerLabel(aTableNumber,color),BorderLayout.NORTH);
		mTime.setForeground(color);
		mLittle.setForeground(color);
		mBig.setForeground(color);
		
		nextBlind();
	}

	private void nextBlind() {
		BlindEntry blind = mSchedule.get(mIndex++);
		this.mSeconds = blind.getTime();
		mLittle.setText(blind.getLittle());
		mBig.setText(blind.getBig());
		sync();
	}
	
	private void raiseBlinds() {
		stopTimer();
		nextBlind();
		startTimer();
	}

	private void sync() {
		mTime.setText(MINSEC.format(mSeconds/60)+":"+MINSEC.format(mSeconds%60));
	}
	
	private void startTimer() {
		mTimer.scheduleAtFixedRate(
			this.mTask = new TimerTask() {
				public void run() {
					mSeconds--;
					sync();
					if(mSeconds<20)Toolkit.getDefaultToolkit().beep();
					if(mSeconds==0)raiseBlinds();
				}
			}, 
			mRestartDelay, 
			1000
		);
		mStartStop.setText("Stop");
	}
	
	private void stopTimer() {
		if(mTask!=null) {
			this.mRestartDelay  = 1000-(System.currentTimeMillis()-mTask.scheduledExecutionTime());
			mTask.cancel();
			mTask=null;
			mStartStop.setText("Start");
		}
	}
	
	public static class TimerLabel extends JLabel
	{
		public TimerLabel(int aTableNumber,Color aColor)
		{
			super("Table "+aTableNumber);
			setHorizontalAlignment(JTextField.CENTER);
			setFont(new Font("Helvetica",Font.BOLD,30));
			setForeground(aColor);
		}
	}
	
	public static void main(String[] args) throws MalformedURLException, IOException {
		if(args.length>0) {
			JFrame frame = new JFrame("Blind Timer");
			frame.add(
				new BlindTimer(
					BlindEntry.readBlindSchedule(new URL(args[0])),
					new Timer(),
					1
				)
			);
			frame.pack();
			frame.setLocationRelativeTo(null);
			frame.setVisible(true);
			frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		}
	}
	

}

/**
 * 
 * $Log: BlindTimer.java,v $
 * Revision 1.4  2012/02/10 22:48:53  g137997
 * Increased font sizes
 *
 * Revision 1.3  2007/10/17 18:50:39  g137997
 * Changed to use modified DigitalDisplay.
 *
 * Revision 1.2  2007/08/16 17:41:07  g137997
 * Re-organization.
 * Work in progress on new timer version.
 *
 * Revision 1.2  2007/02/14 13:27:17  g137997
 * Added beep for last 20 seconds.
 *
 * Revision 1.1  2007/02/09 18:04:23  g137997
 * Made major enhancements to Poker Timer and supporting classes.
 *
 * Revision 1.1  2007/02/09 13:21:38  g137997
 * Initial check-in.
 *
 * 
 */