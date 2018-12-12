/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/pokertimer/MultiTimer.java,v 1.2 2007/08/16 22:42:32 g137997 Exp $
 * 
 * BlindTimer
 * Created on Feb 9, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.pokertimer;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Timer;

import javax.swing.JComponent;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import org.lxm.util.ConfirmButton;
import org.lxm.util.Util;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */
public class MultiTimer extends JFrame
{
	private int count=1;
	private Timer mTimer = new Timer();
	private JPanel mTimerPanel;
	private List<BlindEntry> mSchedule;
	
	public MultiTimer(URL blinds) throws IOException
	{
		super("Timers");
		this.mSchedule = BlindEntry.readBlindSchedule(blinds);
		setLayout(new BorderLayout());
		
		this.mTimerPanel = new JPanel(new GridLayout(0,1));
		add(mTimerPanel,BorderLayout.CENTER);
		
		add(new JLabel(mSchedule.toString()),BorderLayout.NORTH);

		JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.CENTER));
		
		buttonPanel.add(
			new ConfirmButton("Add Additional Table") {
				public void actionPerformed(ActionEvent e) {
					addTimer();
				}
			}
		);
		//buttonPanel.add(
		//	new Util.ConfirmButton("Exit") {
		//		public void actionPerformed(ActionEvent e) {
		//			System.exit(0);
		//		}
		//	}
		//);
		add(buttonPanel,BorderLayout.SOUTH);
	
		addTimer();
		pack();
		
		setVisible(true);
		setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		addWindowListener(
			new WindowAdapter() {
				public void windowClosing(WindowEvent e) {
					if(Util.yesNoDialog(e.getWindow()))System.exit(0);
				}
			}
		);
	}
	
	
	public void addTimer() {
		mTimerPanel.add(new BlindTimer(mSchedule,mTimer,count++));
		pack();
		setLocationRelativeTo(null);
	}
	
	public final static DecimalFormat MONEY = new DecimalFormat("$0.00");
	
	public static void main(String[] args) throws MalformedURLException, IOException {
		if(args.length>0) {
			new MultiTimer(new URL(args[0]));
		} else {
			JFileChooser choose = new JFileChooser(".");
			if(choose.showOpenDialog(null)==JFileChooser.APPROVE_OPTION) {
				new MultiTimer(choose.getSelectedFile().toURL());
			}
		}
	}
}


/**
 * 
 * $Log: MultiTimer.java,v $
 * Revision 1.2  2007/08/16 22:42:32  g137997
 * More work on new poker timer.
 *
 * Revision 1.1  2007/08/16 17:41:07  g137997
 * Re-organization.
 * Work in progress on new timer version.
 *
 * Revision 1.1  2007/02/09 18:04:23  g137997
 * Made major enhancements to Poker Timer and supporting classes.
 *
 * Revision 1.1  2007/02/09 13:21:38  g137997
 * Initial check-in.
 *
 * 
 */