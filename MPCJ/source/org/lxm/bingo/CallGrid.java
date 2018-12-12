/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/bingo/CallGrid.java,v 1.3 2014/09/16 18:55:34 g137997 Exp $
 * 
 * CallGrid
 * Created on Dec 14, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.bingo;

import java.awt.Dimension;
import java.awt.GridLayout;
import java.util.HashMap;
import java.util.Map;

import javax.swing.JPanel;

public class CallGrid extends JPanel
{
	private String mWord;
	private Map<String,CallColumn> mColumns = new HashMap();

	public CallGrid(String aWord)
	{
		this.mWord = aWord;
		setLayout(new GridLayout(0,5));
		for(int i = 0;i < 5;i++) {
			CallColumn column = new CallColumn(String.valueOf(aWord.charAt(i)),(i*15)+1);
			mColumns.put(String.valueOf(aWord.charAt(i)),column);
			add(column);
		}
	}
	
	public Dimension getPreferredSize() {
		return new Dimension(800,600);
	}
	
	public void setMarked(String aCellID,boolean aMarked) {
		mColumns.get(aCellID.substring(0,1)).setMarked(Integer.parseInt(aCellID.substring(1)),aMarked);
		repaint();
	}
}


/**
 * 
 * $Log: CallGrid.java,v $
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
 * Revision 1.1  2005/12/14 21:22:46  g137997
 * Added game call manager.
 *
 * 
 */