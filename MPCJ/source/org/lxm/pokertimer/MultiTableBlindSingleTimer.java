/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/pokertimer/MultiTableBlindSingleTimer.java,v 1.5 2007/10/17 19:56:50 g137997 Exp $
 * 
 * MultiTableSingleTimer
 * Created on Aug 16, 2007
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
import java.awt.event.ActionEvent;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;

import org.lxm.util.ConfirmButton;
import org.lxm.util.DigitalDisplay;
import org.lxm.util.JPanelBuilder;
import org.lxm.util.TTF;

public class MultiTableBlindSingleTimer extends JFrame
{
	private CountdownTimer mMainTimer;
	private List<BlindEntry> mBlinds;
	private JPanel mTables;
	private Iterator<BlindEntry> mNextBlind;
	private int mNextTime;
	private DigitalDisplay mTimerLabel = new DigitalDisplay(TTF.FONT_3X5,40,"Next Increase In");
	
	public MultiTableBlindSingleTimer(List<BlindEntry> aBlinds)
	{
		super("Larry's Totally Awesome Texas Hold-Em Timer");
		this.mBlinds = aBlinds;
		this.mNextBlind = aBlinds.iterator();

		setLayout(new BorderLayout(0,0));
		mTimerLabel.setHorizontalAlignment(JTextField.CENTER);
		mTimerLabel.setForeground(Color.YELLOW);
		add(
			new JPanelBuilder(new BorderLayout(1,1)) {
				public void configure() {
					add(
						mTimerLabel,
						BorderLayout.NORTH
					);
					add(
						mMainTimer = new CountdownTimer(nextTime(),200),
						BorderLayout.CENTER
					);
				}
			},
			BorderLayout.WEST
		);
		add(
			this.mTables = new JPanel(new GridLayout(0,1)),
			BorderLayout.CENTER
		);
		add(
			new JPanelBuilder(new FlowLayout(FlowLayout.CENTER)) {
				public void configure() {
					add(
						new ConfirmButton("Add Additional Table") {
							public void actionPerformed(ActionEvent e) {
								addTable();
							}
						}
					);
				}
			},
			BorderLayout.SOUTH
		);
		mMainTimer.setDisplayColor(Color.YELLOW);
		addTable();
		
		setLocationRelativeTo(null);
		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		mMainTimer.addCountdownListener(
			new CountdownTimerListener() {
				public void timerExpired() {
					cycleTimer();
				}

				public void timerReset(int aMinutes, float aSeconds) {
				}

				public void timerStarted(int aMinutes, float aSeconds) {
				}

				public void timerStopped(int aMinutes, float aSeconds) {
				}
			}
		);
	}
	
	private void cycleTimer() {
		nextTime();
		mMainTimer.setTime(nextTime());
		mMainTimer.restartTimer();
	}
	
	private int nextTime() {
		if(mNextBlind.hasNext()) {
			this.mNextTime = mNextBlind.next().getTime();
		}
		return mNextTime;
	}

	private void addTable() {
		BlindDisplay newTable = new BlindDisplay(mBlinds);
		mMainTimer.addCountdownListener(newTable);
		mTables.add(newTable);
		pack();
	}

	public static void main(String[] args) throws Exception {
		if(args.length>0) {
			new MultiTableBlindSingleTimer(
				BlindEntry.readBlindSchedule(new URL(args[0]))
			);
		} else {
			JFileChooser choose = new JFileChooser(".");
			if(choose.showOpenDialog(null)==JFileChooser.APPROVE_OPTION) {
				new MultiTableBlindSingleTimer(
					BlindEntry.readBlindSchedule(choose.getSelectedFile().toURL())
				);
			}
		}

	}

}


/**
 * 
 * $Log: MultiTableBlindSingleTimer.java,v $
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