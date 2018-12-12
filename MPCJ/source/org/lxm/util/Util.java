/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/Util.java,v 1.5 2007/10/17 18:42:36 g137997 Exp $
 * 
 * Utils
 * Created on Dec 14, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.util;

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.FontFormatException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Arrays;

import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTabbedPane;

public final class Util
{
	public static final String getString(String aPromptMessage,String aDefaultValue) {
		return JOptionPane.showInputDialog(aPromptMessage,aDefaultValue);
	}
	
	public static final Container flowContain(Object[] aObjects,int aAlignment) {
		Container c = new Container();
		c.setLayout(new FlowLayout(aAlignment,1,1));
		for (int i = 0; i < aObjects.length; i++){
			c.add( aObjects[i] instanceof Component ? (Component)aObjects[i] : new JLabel(aObjects[i].toString()) );
		}
		return c;
	}
	
	public static final int getInt(String aPromptMessage) {
		try {
			return Integer.parseInt(JOptionPane.showInputDialog(aPromptMessage,String.valueOf("1")));
		} catch(NumberFormatException exc) {
			return 0;
		}
	}

	public static final InputStream getResourceAsStream(
		Class base,
		String resourceName
	) throws IOException {
		return base.getResource(resourceName).openStream();
	}
	
	public static final Font getFont(InputStream is) throws FontFormatException, IOException {
		return Font.createFont(Font.TRUETYPE_FONT,is);
	}
	
	public static final Font getFont(URL furl) throws FontFormatException, IOException {
		return getFont(furl.openStream());
	}
	
	static final Font getFont(String resourceName) {
		try {
			return getFont(Util.class,"fonts/"+resourceName);
		} catch(Exception exc) {
			return null;
		}
	}
	
	public static final Font getFont(Class base,String resourceName) throws FontFormatException, IOException {
		return getFont(base.getResourceAsStream(resourceName));
	}
	
	public static final boolean yesNoDialog(Component parent) {
		return yesNoDialog(parent,"Confirm","Are you sure yo wish to do that?");
	}

	public static final boolean yesNoDialog(Component parent,String title,Object message) {
		return JOptionPane.showOptionDialog(
			parent,
			message,
			title,
			JOptionPane.YES_NO_OPTION,
			JOptionPane.QUESTION_MESSAGE,
			null,
			null,
			null
		)==JOptionPane.YES_OPTION;
	}

	public static class FlowLayoutContainer extends JComponent
	{
		public FlowLayoutContainer()
		{
			setLayout(new FlowLayout(FlowLayout.CENTER,1,1));
		}
		
		public FlowLayoutContainer add(Component c) {
			super.add(c);
			return this;
		}
	}

	public static class ScrollTabs extends JTabbedPane
	{
		public ScrollTabs()
		{
			setTabLayoutPolicy(JTabbedPane.SCROLL_TAB_LAYOUT);
		}
		
		public void addCard(JComponent comp) {
			add(String.valueOf(getTabCount()+1),comp);
		}
	}

	public static class TestFrame extends JFrame
	{
		public TestFrame(String aTitle,Component aComponent) 
		{
			this(aTitle,aComponent,true,true);
		}
		
		public TestFrame(String aTitle,Component aComponent,boolean visible,boolean closeable) 
		{
			super(aTitle);
			Container c = this.getContentPane();
			c.setLayout(new BorderLayout());
			c.add(aComponent,BorderLayout.CENTER);
			setDefaultCloseOperation(closeable ? JFrame.EXIT_ON_CLOSE : JFrame.DO_NOTHING_ON_CLOSE);
			pack();
			setLocationRelativeTo(null);
			setVisible(visible);
		}
	}

	public final static boolean conatainsWhiteSpace(String aValue) {
		char[] chars = aValue.toCharArray();
		for (int i = 0; i < chars.length; i++){
			if(Character.isWhitespace(chars[i]))return true;
		}
		return false;
	}

	public static final void swap(Object[] oa,int idx1,int idx2) {
		Object o = oa[idx1];
		oa[idx1] = oa[idx2];
		oa[idx2] = o;
	}
	
	public static final void shuffle(Object[] oa,int numTimes) {
		for(int i = 0;i < oa.length*numTimes;i++) {
			swap(
				oa,
				(int)(Math.random()*oa.length),
				(int)(Math.random()*oa.length)
			);
		}
	}
	
	public static final Object[][] split(Object[] oa,int numLists) {
		int size = oa.length / numLists;
		int xtra = oa.length % numLists;
		Object[][] oaa = new Object[numLists][];
		int idx = 0;
		for(int i = 0;i < numLists;i++) {
			oaa[i] = new Object[i<xtra ? size+1 : size];
			for(int j = 0;j < oaa[i].length;j++,idx++) {
				oaa[i][j] = oa[idx];
			}
		}
		return oaa;
	}
	
	public static void main(String[] args) {
		String[] cards = {
			"As","2s","3s","4s","5s","6s","7s","8s","9s","Xs","Js","Qs","Ks",
			"Ah","2h","3h","4h","5h","6h","7h","8h","9h","Xh","Jh","Qh","Kh",
			"Ac","2c","3c","4c","5c","6c","7c","8c","9c","Xc","Jc","Qc","Kc",
			"Ad","2d","3d","4d","5d","6d","7d","8d","9d","Xd","Jd","Qd","Kd"
		};
		

		shuffle(cards,7);
		Object[][] oa = split(cards,4);
		for(int i = 0;i < oa.length;i++) {
			System.out.println(Arrays.toString(oa[i]));
		}
	}
}


/**
 * 
 * $Log: Util.java,v $
 * Revision 1.5  2007/10/17 18:42:36  g137997
 * Re-organized.
 * Added true type font methods.
 *
 * Revision 1.4  2007/08/16 22:42:32  g137997
 * More work on new poker timer.
 *
 * Revision 1.3  2007/08/16 17:39:40  g137997
 * Re-organized and added utilities.
 *
 * Revision 1.2  2007/02/09 18:04:23  g137997
 * Made major enhancements to Poker Timer and supporting classes.
 *
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2006/01/30 13:01:15  g137997
 * Re-located Util class.
 *
 * Revision 1.3  2006/01/19 18:52:29  g137997
 * Made more enhancements.
 *
 * Revision 1.2  2005/12/14 21:29:21  g137997
 * Added prompted input for the card word.
 *
 * Revision 1.1  2005/12/14 21:22:46  g137997
 * Added game call manager.
 *
 * 
 */