/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/RowLayout.java,v 1.2 2008/10/30 13:14:15 g137997 Exp $
 * 
 * RowLayout
 * Created on May 20, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * 
 */

package org.lxm.util;

import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Insets;
import java.awt.LayoutManager;

/**
 * This class lays out components one per row.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */
public class RowLayout implements LayoutManager
{
	private Dimension mSize = new Dimension();
	private int mHgap,mVgap;

	public RowLayout()
	{
		this(1,1);
	}
	
	public RowLayout(int hGap,int vGap)
	{
		this.mHgap = hGap;
		this.mVgap = vGap;
	}
	
	/*** @see java.awt.LayoutManager#addLayoutComponent(java.lang.String, java.awt.Component) */
	public void addLayoutComponent(String aName, Component aComp) {
		layoutContainer(aComp.getParent());
	}

	/*** @see java.awt.LayoutManager#removeLayoutComponent(java.awt.Component) */
	public void removeLayoutComponent(Component aComp) {}

	/*** @see java.awt.LayoutManager#layoutContainer(java.awt.Container) */
	public void layoutContainer(Container aParent) {
		int count = aParent.getComponentCount();
		Insets ins = aParent.getInsets();
		mSize.setSize(0,ins.top);
		for(int i = 0;i < count;i++) {
			if(i>0)mSize.height+=mVgap;
			Component comp = aParent.getComponent(i);
			Dimension d = comp.getPreferredSize();
			comp.setBounds(ins.left+mHgap,mSize.height,d.width,d.height);
			mSize.height+=d.height;
			mSize.width = Math.max(mSize.width,d.width);
		}
		mSize.width+=(ins.right+ins.left+mHgap*2);
		mSize.height+=ins.bottom;
	}

	/*** @see java.awt.LayoutManager#minimumLayoutSize(java.awt.Container) */
	public Dimension minimumLayoutSize(Container aParent) {
		layoutContainer(aParent);
		return mSize;
	}

	/*** @see java.awt.LayoutManager#preferredLayoutSize(java.awt.Container) */
	public Dimension preferredLayoutSize(Container aParent) {
		layoutContainer(aParent);
		return mSize;
	}
	
	//public static void main(String[] args) {
	//	JFrame jf = new JFrame("TEST");
	//	JPanel panel = new JPanelBuilder(new RowLayout(3,3)) {
	//		public void configure() {
	//			setBorder(BorderFactory.createTitledBorder("Test"));
	//			add(new JButton("TEST"));
	//			add(new JTextArea("This is a test",3,20));
	//			add(new JButton("Another Test"));
	//		}
	//	};
	//	jf.add(panel);
	//	jf.pack();
	//	jf.setVisible(true);
	//	jf.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	//}
}


/**
 * 
 * $Log: RowLayout.java,v $
 * Revision 1.2  2008/10/30 13:14:15  g137997
 * Minor Changes
 *
 * Revision 1.1  2007/08/16 17:39:40  g137997
 * Re-organized and added utilities.
 *
 * Revision 1.2  2007/05/22 15:08:50  g137997
 * Organized imports.
 *
 * Revision 1.1  2007/05/21 12:37:19  g137997
 * Initial check-in.
 *
 * 
 */