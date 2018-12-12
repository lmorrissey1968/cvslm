/**
 * 
 * $Header: /repository/CVSLM/ODT\040Test/source/com/ibm/gs/ls/test/awt/BreakingFlowLayout.java,v 1.2 2004/06/14 17:49:44 g137997 Exp $
 * 
 * BreakingFlowLayout
 * Created on Oct 8, 2003
 *
 */
 
package com.ibm.gs.ls.test.awt;

import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Insets;
import java.awt.LayoutManager2;
import java.awt.Point;
import java.util.Vector;

/**
 * This class implements a FlowLayout with the capibility of having line breaks.
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.2 $
 */
public class BreakingFlowLayout implements LayoutManager2
{
	public final static String BREAK = "Break";
	private Vector mComponents = new Vector();
	private int mVgap;
	private int mHgap;


	/**
	 * Constructor
	 * @param mHgap Horizontal gap between mComponents in this layout.
	 * @param mVgap Vertical gap between mComponents in this layout.
	 */
	public BreakingFlowLayout(int aHgap,int aVgap) {
		this.mHgap = aHgap;
		this.mVgap = aVgap;
	}
	
	/**
	 * Constructor
	 */
	public BreakingFlowLayout() {
		this(1,1);
	}

	/*** @see java.awt.LayoutManager#removeLayoutComponent(java.awt.Component) */
	public void removeLayoutComponent(Component comp) {
		mComponents.removeElement(comp);
	}

	/*** @see java.awt.LayoutManager#layoutContainer(java.awt.Container) */
	public void layoutContainer(Container parent) {
		synchronized(parent.getTreeLock()){
			Insets insets = parent.getInsets();
			Point p = new Point(insets.left+mHgap,insets.top+mVgap);
			//int maxX = parent.getSize().width - insets.right ;
			int maxHeight = 0;
			for(int i=0;i<mComponents.size();i++){
				Object o = mComponents.elementAt(i);
				if(o instanceof Component){
					Component c = (Component)o;
					Dimension d = c.getPreferredSize();
					c.setSize(d);
					c.setLocation(p);
					p.x += d.width+mHgap;
					maxHeight = Math.max(maxHeight ,d.height);
				}else{
					p.x = insets.left+mHgap;
					p.y += maxHeight+mVgap;
					maxHeight = 0;
				}
			}
		}
	}

	/*** @see java.awt.LayoutManager#minimumLayoutSize(java.awt.Container) */
	public Dimension minimumLayoutSize(Container parent) {
		return preferredLayoutSize(parent);
	}

	/*** @see java.awt.LayoutManager#preferredLayoutSize(java.awt.Container) */
	public Dimension preferredLayoutSize(Container parent) {
		synchronized(parent.getTreeLock()){
			Dimension total = new Dimension(0,0);
			Dimension curRow = new Dimension(0,0);
			for(int i=0;i<mComponents.size();i++){
				Object o = mComponents.elementAt(i);
				if(o instanceof Component){
					Dimension curCom = ((Component)o).getPreferredSize();
					curRow.height = Math.max(curRow.height,curCom.height);
					curRow.width += (curCom.width+mHgap); // LEADING HERE
				}else{
					total.height += (curRow.height+mVgap); // LEADING HERE
					total.width = Math.max(total.width,curRow.width);
					curRow.width = curRow.height = 0;
				}
			}
			Insets insets = parent.getInsets();
			total.height += (curRow.height+mVgap) + (insets.top + insets.bottom + mVgap);
			total.width = Math.max(total.width,curRow.width) + (insets.left + insets.right + mHgap);
			return total;
		}
	}

	/*** @see java.awt.LayoutManager2#getLayoutAlignmentX(java.awt.Container) */
	public float getLayoutAlignmentX(Container target) {
		return 0.5f;
	}

	/*** @see java.awt.LayoutManager2#getLayoutAlignmentY(java.awt.Container) */
	public float getLayoutAlignmentY(Container target) {
		return 0.5f;
	}

	/*** @see java.awt.LayoutManager2#invalidateLayout(java.awt.Container) */
	public void invalidateLayout(Container target) {
	}

	/*** @see java.awt.LayoutManager2#maximumLayoutSize(java.awt.Container) */
	public Dimension maximumLayoutSize(Container target) {
		return new Dimension(Integer.MAX_VALUE, Integer.MAX_VALUE);
	}

	/*** @see java.awt.LayoutManager2#addLayoutComponent(java.awt.Component, java.lang.Object) */
	public void addLayoutComponent(Component comp, Object constraints) {
		synchronized (comp.getTreeLock()) {
			if ((constraints == null) || (constraints instanceof String)) {
				addLayoutComponent((String)constraints, comp);
			} else {
				throw new IllegalArgumentException("cannot add to layout: constraint must be a string (or null)");
			}
		}
	}
	
	/*** @see java.awt.LayoutManager#addLayoutComponent(java.lang.String, java.awt.Component) */
	public void addLayoutComponent(String name, Component comp) {
		mComponents.addElement(comp);
		if(name!=null && name.equals(BREAK)){
			mComponents.addElement(BREAK);
		}
	}

}

/**
 *
 * $Log: BreakingFlowLayout.java,v $
 * Revision 1.2  2004/06/14 17:49:44  g137997
 * Fixed incompatibilities for Microsoft JVM.
 *
 * Revision 1.1  2004/03/15 21:22:35  g137997
 * *** empty log message ***
 *
 *
 */