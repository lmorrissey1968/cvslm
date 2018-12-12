/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/fued/ScoreBoard.java,v 1.4 2007/10/17 18:50:22 g137997 Exp $
 * 
 * ScoreBoard
 * Created on Jan 27, 2006
 *
 * © Lockheed Martin Corporation, (2006). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.fued;

import java.awt.Color;
import java.awt.GridLayout;
import java.awt.Rectangle;
import java.awt.Toolkit;
import java.awt.Window;
import java.awt.event.ActionEvent;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.text.DecimalFormat;
import java.util.Timer;
import java.util.TimerTask;

import javax.swing.BorderFactory;
import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.swing.border.TitledBorder;

import org.lxm.util.ActionButton;
import org.lxm.util.DigitalDisplay;
import org.lxm.util.IntegerTextField;
import org.lxm.util.Score;
import org.lxm.util.TTF;

public class ScoreBoard extends JFrame
{
	private Score mTeamA,mTeamB,mRound;
	private DigitalDisplay mTimer;

	public ScoreBoard()
	{
		construct();
		pack();
		setVisible(true);
		
		new Buttons();

		addWindowListener(
			new WindowAdapter() {
				public void windowClosing(WindowEvent aE) {
					System.exit(0);
				}
			}
		);
	}
	
	private void construct() {
		setLayout(new GridLayout(0,1));
		
		add(this.mTeamA = new Score(5,115));
		mTeamA.setBorder(makeBorder("Team A Score"));
		
		add(this.mTeamB = new Score(5,115));
		mTeamB.setBorder(makeBorder("Team B Score"));

		add(this.mRound = new Score(5,115,Color.RED));
		mRound.setBorder(makeBorder("Playoff Round"));

		add(this.mTimer = new DigitalDisplay(115,5,Color.CYAN));
		mTimer.setBorder(makeBorder("Timer"));
	}
	
	private TitledBorder makeBorder(String title) {
		TitledBorder tb = BorderFactory.createTitledBorder(title);
		tb.setTitleColor(Color.WHITE);
		tb.setTitleJustification(TitledBorder.CENTER);
		return tb;
	}
	
	private class Buttons extends Window
	{
		private IntegerTextField mExpression;
		private IntegerTextField mTimerSecs;

		public Buttons()
		{
			super(ScoreBoard.this);
			setLayout(new GridLayout(0,3));
			add(
				this.mExpression = new IntegerTextField(false,4)
			);
			mExpression.setFont(
				mExpression.getFont().deriveFont((float)20)
			);
			mTimer.setHorizontalAlignment(JTextField.CENTER);
			
			add(
				new ActionButton(">> R") {
					public void actionPerformed(ActionEvent e) {
						addToScore(mRound);
					}
				}
			);
			add(
				new ActionButton(">> A") {
					public void actionPerformed(ActionEvent e) {
						addToScore(mTeamA);
					}
				}
			);
			add(
				new ActionButton(">> B") {
					public void actionPerformed(ActionEvent e) {
						addToScore(mTeamB);
					}
				}
			);
			add(
				new ActionButton("R >> A") {
					public void actionPerformed(ActionEvent e) {
						mTeamA.addToValue(mRound.getValue());
						mRound.setValue(0);
					}
				}
			);
			add(
				new ActionButton("R >> B") {
					public void actionPerformed(ActionEvent e) {
						mTeamB.addToValue(mRound.getValue());
						mRound.setValue(0);
					}
				}
			);
			add(
				this.mTimerSecs = new IntegerTextField(false,3)
			);
			mTimerSecs.setFont(
				mExpression.getFont().deriveFont((float)20)
			);
			mTimerSecs.setValue(30);
			add(
				new ActionButton("T Start") {
					public void actionPerformed(ActionEvent e) {
						startTimer();
					}
				}
			);
			add(
				new ActionButton("T Cancel") {
					public void actionPerformed(ActionEvent e) {
						if(mTask!=null)mTask.cancel();
						mTimer.setText("");
					}
				}
			);
			
			mExpression.addKeyListener(
				new KeyAdapter() {
					public void keyTyped(KeyEvent ke) {
						switch(ke.getKeyChar()) {
							case 10 :
								mExpression.sync();
								addToScore(mRound);
								break;
							case 'a':
								mExpression.sync();
								addToScore(mTeamA);
								break;
							case 'b':
								mExpression.sync();
								addToScore(mTeamB);
								break;
						}
					}
				}
			);
			
			pack();
			setVisible(true);
			Rectangle b = ScoreBoard.this.getBounds();
			setLocation(b.x,b.y+b.height);
		}

		private void addToScore(Score s) {
			s.addToValue(mExpression.getValuePrimitive());
			mExpression.setValue(0);
			mExpression.selectAll();
		}
		
		private void startTimer() {
			if(mTask!=null)mTask.cancel();
			mTimerMgr.schedule(
				mTask = new TimerTask() {
					private int mTime = mTimerSecs.getValuePrimitive()+1;
					public void run() {
						mTimer.setText("0"+mTimerFormat.format(--mTime));
						Toolkit.getDefaultToolkit().beep();
						if(mTime==0) {
							mTask.cancel();
							mTimerMgr.schedule(
								new TimerTask() {
									public void run() {
										mTimer.setText("");
									}
								},
								5000
							);
						}
					}
				},
				0,1000
			);
		}
	}
	
	private Timer mTimerMgr = new Timer();
	private DecimalFormat mTimerFormat = new DecimalFormat(":00");
	private TimerTask mTask;
		
	
	public static void main(String[] args) {
		new ScoreBoard();
	}

}


/**
 * 
 * $Log: ScoreBoard.java,v $
 * Revision 1.4  2007/10/17 18:50:22  g137997
 * Uses convenience constructor for DigitalDisplay.
 *
 * Revision 1.3  2007/08/16 17:40:41  g137997
 * Changes to reflect re-organized utilities.
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