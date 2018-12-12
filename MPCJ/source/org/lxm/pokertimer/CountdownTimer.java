/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/pokertimer/CountdownTimer.java,v 1.6 2014/09/16 18:56:40 g137997 Exp $
 * 
 * CountdownTimer
 * Created on Aug 15, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.pokertimer;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.util.HashSet;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

import javax.swing.JComponent;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import org.lxm.util.ActionButton;
import org.lxm.util.DigitalDisplay;
import org.lxm.util.JPanelBuilder;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.6 $
 */
public class CountdownTimer extends JComponent {
	private TimerTask mTask;
	private Timer mTimer;
	private int mTime,mOriginalTime;
	private long mRestartDelay = 0;

	private DigitalDisplay mHMS,mTenths;
	private ActionButton mStartStop;
	
	private Set<CountdownTimerListener> mListeners = new HashSet<CountdownTimerListener>();

	public CountdownTimer(int aSeconds)
	{
		this(aSeconds,160);
	}
	
	public CountdownTimer(int aSeconds,int aSize) 
	{
		this(aSeconds,aSize,new Timer());
	}

	public CountdownTimer(int aSeconds,int aSize,boolean aIncludeButtons) 
	{
		this(aSeconds,aSize,new Timer(),aIncludeButtons);
	}
	
	public CountdownTimer(int aSeconds,int aSize,Timer aTimer)
	{
		this(aSeconds,aSize,aTimer,true);
	}
	
	public CountdownTimer(int aSeconds,int aSize,Timer aTimer,boolean aIncludeButtons)
	{
		setLayout(new BorderLayout());
		setTime(aSeconds);
		this.mTimer = aTimer;
		
		this.mHMS = new DigitalDisplay(aSize,"00:00:00"); 
		mHMS.setHorizontalAlignment(JTextField.CENTER);
		mHMS.setBackground(Color.BLACK);
		
		this.mTenths = new DigitalDisplay(aSize/3,"0"); 
		mTenths.setHorizontalAlignment(JTextField.CENTER);
		mTenths.setBackground(Color.BLACK);

		
		
		
		if(aIncludeButtons)add(
			new JPanelBuilder(new GridLayout(1,0)) {
				public void configure() {
					add(
						mStartStop = new ActionButton("Start") {
							public void actionPerformed(ActionEvent e) {
								if(mTask==null) {
									startTimer();
								} else {
									stopTimer();
								}
							}
						}					
					);
					add(
						new ActionButton("Set Time") {
							public void actionPerformed(ActionEvent e) {
								setTime(inputInteger("Time",getTime()));
								resetTimer();
							}
						}					
					);
					add(
						new ActionButton("Reset") {
							public void actionPerformed(ActionEvent e) {
								resetTimer();
							}
						}					
					);
				}
			},
			BorderLayout.SOUTH
		);
		add(
			new JPanelBuilder(new FlowLayout(FlowLayout.CENTER,0,0)) {
				public void configure() {
					add(mHMS);
					add(mTenths);
				}
			},
			BorderLayout.CENTER
		);
		sync();
	}
	
	public void setTime(int seconds) { this.mOriginalTime = this.mTime = seconds * 10; }
	public int getTime() { return mOriginalTime/10; }
	
	public void addCountdownListener(CountdownTimerListener aListener) {
		mListeners.add(aListener);
	}

	public void removeCountdownListener(CountdownTimerListener aListener) {
		mListeners.remove(aListener);
	}

	private void sync() {
		mHMS.setText(String.format("%02d:%02d:%02d",(mTime/36000),(mTime/600)%60,(mTime/10)%60));
		mTenths.setText(String.valueOf(mTime%10));
	}
	
	public void startTimer() {
		if(mTask==null) {
			notifyListenersStarted();
			mTimer.scheduleAtFixedRate(
				this.mTask = new TimerTask() {
					public void run() {
						mTime--;
						sync();
						if(mTime<20)Toolkit.getDefaultToolkit().beep();
						if(mTime==0) {
							mTask.cancel();
							notifyListenersExpired();
						}
					}
				}, 
				mRestartDelay, 
				100
			);
			if(mStartStop!=null)mStartStop.setText("Stop");
		}
	}
	
	public void stopTimer() {
		if(mTask!=null) {
			long sched = mTask.scheduledExecutionTime();
			mTask.cancel();
			long time = System.currentTimeMillis();
			this.mRestartDelay  = 100-(time-sched);
			mTask=null;
			if(mStartStop!=null)mStartStop.setText("Start");
			notifyListenersStopped();
		}
	}
	
	private void clearTimer() {
		this.mRestartDelay  = 0;
		if(mTask!=null) {
			mTask.cancel();
			mTask=null;
			if(mStartStop!=null)mStartStop.setText("Start");
			notifyListenersStopped();
		}
	}
	
	public void restartTimer() {
		resetTimer();
		startTimer();
	}

	public void resetTimer() {
		clearTimer();
		this.mTime = mOriginalTime;
		sync();
		for(CountdownTimerListener l : mListeners)l.timerReset(mTime/600,(mTime%600)/10f);
	}

	private void notifyListenersStarted() {
		for(CountdownTimerListener l : mListeners)l.timerStarted(mTime/600,(mTime%600)/10f);
	}
	
	private void notifyListenersStopped() {
		for(CountdownTimerListener l : mListeners)l.timerStopped(mTime/600,(mTime%600)/10f);
	}

	private void notifyListenersExpired() {
		for(CountdownTimerListener l : mListeners)l.timerExpired();
	}

	public void setDisplayColor(Color c) {
		mHMS.setForeground(c);
		mTenths.setForeground(c);
	}

	public static final int inputInteger(String msg,int defaultValue) {
		String value = JOptionPane.showInputDialog(msg,String.valueOf(defaultValue));
		return value==null ? defaultValue : Integer.parseInt(value);
	}
}




/**
 * 
 * $Log: CountdownTimer.java,v $
 * Revision 1.6  2014/09/16 18:56:40  g137997
 * Added hours.
 *
 * Revision 1.5  2007/10/17 19:56:50  g137997
 * Added tenths.
 *
 * Revision 1.4  2007/10/17 18:50:39  g137997
 * Changed to use modified DigitalDisplay.
 *
 * Revision 1.3  2007/08/17 11:43:35  g137997
 * Added more enhancements to new poker timer.
 *
 * Revision 1.2  2007/08/16 22:42:32  g137997
 * More work on new poker timer.
 *
 * Revision 1.1  2007/08/16 17:41:07  g137997
 * Re-organization.
 * Work in progress on new timer version.
 *
 * 
 */