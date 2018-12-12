/**
 * 
 * $Header: /repository/CVSLM/Poker\040Timer/source/com/lmorrissey/pokertimer/BlindTimer.java,v 1.1 2007/02/09 13:21:38 g137997 Exp $
 * 
 * BlindTimer
 * Created on Feb 9, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmorrissey.pokertimer;

import java.awt.GridLayout;
import java.util.Timer;

import javax.swing.JFrame;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class BlindTimer extends JFrame
{
	private Timer mTimer = new Timer();
	
	public BlindTimer()
	{
		super("Timers");
		setLayout(new GridLayout(0,1));
		add(new Countdown(1800,mTimer));
		add(new Countdown(1800,mTimer));
		
		pack();
		setVisible(true);
	}
	
	public static void main(String[] args) {
		new BlindTimer();
	}
	
	
	

}


/**
 * 
 * $Log: BlindTimer.java,v $
 * Revision 1.1  2007/02/09 13:21:38  g137997
 * Initial check-in.
 *
 * 
 */