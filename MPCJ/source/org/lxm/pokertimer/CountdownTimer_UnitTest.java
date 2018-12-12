/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/pokertimer/CountdownTimer_UnitTest.java,v 1.3 2014/09/16 18:56:40 g137997 Exp $
 * 
 * CountdownTimer_UnitTest
 * Created on Aug 15, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.pokertimer;

import javax.swing.JFrame;

public class CountdownTimer_UnitTest
{
	public static void main(String[] args) {
		CountdownTimer ct = new CountdownTimer(300,250);
		JFrame frame = new JFrame("Timer Test");
		frame.add(ct);
		ct.addCountdownListener(
			new CountdownTimerListener() {
				public void timerExpired() {
					System.out.println("EXPIRED");
				}

				public void timerReset(int aMinutes, float aSeconds) {
					System.out.println("RESET: "+aMinutes+":"+aSeconds);
				}

				public void timerStarted(int aMinutes, float aSeconds) {
					System.out.println("STARTED: "+aMinutes+":"+aSeconds);
				}

				public void timerStopped(int aMinutes, float aSeconds) {
					System.out.println("STOPPED: "+aMinutes+":"+aSeconds);
				}
				
			}
		);
		frame.pack();
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}

}


/**
 * 
 * $Log: CountdownTimer_UnitTest.java,v $
 * Revision 1.3  2014/09/16 18:56:40  g137997
 * Added hours.
 *
 * Revision 1.2  2007/10/17 19:56:50  g137997
 * Added tenths.
 *
 * Revision 1.1  2007/08/16 17:41:07  g137997
 * Re-organization.
 * Work in progress on new timer version.
 *
 * 
 */