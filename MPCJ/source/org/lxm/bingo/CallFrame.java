/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/bingo/CallFrame.java,v 1.3 2014/09/16 18:55:34 g137997 Exp $
 * 
 * CallFrame
 * Created on Dec 14, 2005
 *
 * � Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.bingo;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.IOException;

import javax.swing.JDialog;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.filechooser.FileFilter;

import org.lxm.util.ActionButton;
import org.lxm.util.Util;


public class CallFrame extends JFrame
{
	public static final Dimension SCREEN = Toolkit.getDefaultToolkit().getScreenSize();
	//public static final int FACTOR = (int)(Math.min(SCREEN.height,SCREEN.width)*0.90);
	
	private CallGrid mGrid;
	private String[] mCallList;
	private int mIndex = 0;
	
	private CurrentNumber mCurrent = new CurrentNumber(CallFrame.this);

	
	private void previous() {
		if(mIndex>0) {
			mIndex--;
			mGrid.setMarked(mCallList[mIndex],false);
			if(mIndex>0) {
				mCurrent.setValue(mCallList[mIndex-1]);
			} else {
				mCurrent.setValue("");
			}
		}
	}
	
	private void next() {
		if(mIndex<mCallList.length) {
			mGrid.setMarked(mCallList[mIndex],true);
			mCurrent.setValue(mCallList[mIndex]);
			mIndex++;
		}
	}

	public CallFrame(String aWord)
	{
		super(aWord+" Call Marker");
		setLayout(new BorderLayout(1,1));
		
		add(
			this.mGrid = new CallGrid(aWord),
			BorderLayout.CENTER
		);
		add(
			new Util.FlowLayoutContainer()
			.add(
				new ActionButton("PREVIOUS") {
					public void actionPerformed(ActionEvent aE) {
						previous();
					}
				}
			)
			.add(
				new ActionButton("NEXT") {
					public void actionPerformed(ActionEvent aE) {
						next();
					}
				}
			),
			BorderLayout.SOUTH
		);
		
		setBounds(0,0,(int)(SCREEN.width*0.30),(int)(SCREEN.height*0.95));
		setVisible(true);
		addWindowListener(
			new WindowAdapter() {
				public void windowClosing(WindowEvent aE) {
					System.exit(0);
				}
			}
		);
	}

	public void setCallList(String[] aCallList) {
		this.mCallList = aCallList;
	}
	
	public class CurrentNumber extends JDialog
	{
		private BingoSquare mValue;

		public CurrentNumber(Frame aParent)
		{
			super(aParent,false);
			add(this.mValue = new BingoSquare("",false));
			mValue.addActionListener(
				new ActionListener() {
					public void actionPerformed(ActionEvent e) {
						next();
					}
				}
			);
			setBounds((int)(SCREEN.width*0.30),0,(int)(SCREEN.width*0.70),(int)(SCREEN.height*0.95));
		}
		
		public void setValue(String aValue) {
			mValue.setText(aValue);
			if(!isVisible())setVisible(true);
		}
	}
	
	public static void main(String[] args) throws IOException 
	{
		JFileChooser chooser = new JFileChooser(".");
		chooser.setFileFilter(
			new FileFilter() {
				public boolean accept(File f) {
					return f.isFile() && f.toString().toLowerCase().endsWith(".bing");
				}

				public String getDescription() {
					return "BINGO Call List";
				}
			}
		);
		if(chooser.showOpenDialog(null)==JFileChooser.APPROVE_OPTION) {
			CallListGenerator gen = CallListGenerator.getFromFile(chooser.getSelectedFile().toString());
			new CallFrame(gen.getWord()).setCallList(gen.getCallList());
		} else {
			String word = Util.getString("Word","BONUS");
			if(word!=null && word.length()==5) {
				CallListGenerator gen = new CallListGenerator(word);
				gen.writeFile("call"+System.currentTimeMillis()+".bing");
				new CallFrame(gen.getWord()).setCallList(gen.getCallList());
			}
		}
	}
}


/**
 * 
 * $Log: CallFrame.java,v $
 * Revision 1.3  2014/09/16 18:55:34  g137997
 * CVS module namespace changed.
 *
 * Revision 1.2  2007/08/16 17:40:30  g137997
 * Changes to reflect re-organized utilities.
 *
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.6  2006/01/30 13:02:16  g137997
 * Re-located Util class.
 *
 * Revision 1.5  2006/01/20 20:51:12  g137997
 * Added a file filter.
 *
 * Revision 1.4  2006/01/20 20:39:40  g137997
 * Re-located default positions for windows.
 * Modified next logic.
 * Added save for autogenerated call list to allow re-load.
 *
 * Revision 1.3  2006/01/19 17:50:40  g137997
 * Moved a call to inside of an if block to avoid array indexing issues.
 *
 * Revision 1.2  2006/01/18 22:17:57  g137997
 * Changed to only one instance of NextNumber for speed.
 *
 * Revision 1.1  2005/12/14 21:22:47  g137997
 * Added game call manager.
 *
 * 
 */