package com.lxm.beat;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.Iterator;
import java.util.LinkedList;

import javax.swing.JFrame;
import javax.swing.JLabel;

import com.lmco.adp.utility.ui.ActionButton;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */
public class BeatCounter extends JFrame
{
	private JLabel mDisplay;
	private LinkedList mTimes = new LinkedList();
	private ActionButton mReset;


	public BeatCounter()
	{
		setLayout(new BorderLayout());
		
		add(
			this.mReset = new ActionButton("RESET") {
				public void actionPerformed(ActionEvent e) {
					mTimes.clear();
					mDisplay.setText("--");
				}
			},
			BorderLayout.NORTH
		);
		
		add(
			this.mDisplay = new JLabel("",JLabel.CENTER),
			BorderLayout.CENTER
		);
		
		mDisplay.setFont(mDisplay.getFont().deriveFont(200f));
		
		mReset.addKeyListener(
			new KeyAdapter() {
				public void keyPressed(KeyEvent e) {
					mTimes.add(System.currentTimeMillis());
					if(mTimes.size()>20)mTimes.removeFirst();
					calcBPM();
				}
			}
		);
		
		setSize(600,400);
		setLocationRelativeTo(null);
		setVisible(true);
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}
	
	private void calcBPM() {
		Iterator<Long> it = mTimes.iterator();
		long last = 0;
		int accum = 0;
		int i = 0;
		for(;it.hasNext();i++) {
			long cur = it.next();
			if(i>0)accum+=(cur-last);
			last = cur;
		}
		if(i>2) {
			int msPb = accum/(i-1);
			int bpm = (int)(60000f/msPb);
			mDisplay.setText(String.valueOf(bpm));
		} else {
			mDisplay.setText("--");
		}
	}
	
	
	public static void main(String[] args) {
		new BeatCounter();
	}
}


/**
 * 
 * $Log: BeatCounter.java,v $
 * Revision 1.2  2011/04/11 18:25:47  g137997
 * Changed initial size.
 *
 * Revision 1.1  2008/04/24 20:32:00  g137997
 * Initial check-in.
 *
 * 
 */