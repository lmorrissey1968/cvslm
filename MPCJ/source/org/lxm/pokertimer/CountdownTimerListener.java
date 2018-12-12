/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/pokertimer/CountdownTimerListener.java,v 1.2 2007/10/17 19:56:50 g137997 Exp $
 * 
 * CountdownTimerListener
 * Created on Aug 15, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.pokertimer;

public interface CountdownTimerListener
{
	public void timerExpired();
	
	public void timerStarted(int minutes,float seconds);
	
	public void timerStopped(int minutes,float seconds);
	
	public void timerReset(int minutes,float seconds);
}

/**
 * 
 * $Log: CountdownTimerListener.java,v $
 * Revision 1.2  2007/10/17 19:56:50  g137997
 * Added tenths.
 *
 * Revision 1.1  2007/08/16 17:41:07  g137997
 * Re-organization.
 * Work in progress on new timer version.
 *
 * 
 */