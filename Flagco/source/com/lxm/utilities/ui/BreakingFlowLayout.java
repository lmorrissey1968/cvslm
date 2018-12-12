/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/BreakingFlowLayout.java,v 1.1 2007/09/10 12:02:16 g137997 Exp $
 * 
 * BreakingFlowLayout
 * Created on Oct 8, 2003
 *
 * © Lockheed Martin Corporation, (2003). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */
 
package com.lxm.utilities.ui;

import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Insets;
import java.awt.LayoutManager2;
import java.awt.Point;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JLabel;



/**
 * This class implements a FlowLayout with the capibility of having line breaks.
 * 
 * @author Lawrence Morrissey
 * @version 1.0
 */
public class BreakingFlowLayout implements LayoutManager2
{
	public final static String BREAK = "Break";
	private List mComponents = new ArrayList();
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
		mComponents.remove(comp);
	}

	/*** @see java.awt.LayoutManager#layoutContainer(java.awt.Container) */
	public void layoutContainer(Container parent) {
		synchronized(parent.getTreeLock()){
			Insets insets = parent.getInsets();
			Point p = new Point(insets.left+mHgap,insets.top+mVgap);
			//int maxX = parent.getSize().width - insets.right ;
			int maxHeight = 0;
			for(int i=0;i<mComponents.size();i++){
				Object o = mComponents.get(i);
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
				Object o = mComponents.get(i);
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
		mComponents.add(comp);
		if(name!=null && name.equals(BREAK)){
			mComponents.add(BREAK);
		}
	}
	
	/**
	 * Utility method that allows an array of object (presumably Component objects) to
	 * be added as one row of a BreakingFlowLayout container.
	 * NOTE: Any object in the array that is not a JComponent will be added as a label
	 *       derived from the objects toString() method. 
	 * @param aContainer The container to add too.
	 * @param aComponents The array of objects.
	 */
	public final static void addRow(Container aContainer,Object[] aComponents) {
		for (int i = 0; i < aComponents.length; i++) {
			Component c = aComponents[i] instanceof Component ? (Component)aComponents[i] : new JLabel(aComponents[i].toString());
			if(i<aComponents.length-1){
				aContainer.add(c);
			}else{
				aContainer.add(c,BREAK);
			}
		}
	}
	
	
	public static void addComponentRow(Container aContainer,Component aComponent) {
		aContainer.add(aComponent,BreakingFlowLayout.BREAK);
	}
	
	public static void addLabeledComponentRow(Container aContainer,String aLabelText,Component aComponent) {
		aContainer.add(new JLabel(aLabelText,JLabel.LEFT));
		aContainer.add(aComponent,BreakingFlowLayout.BREAK);
	}

	/**
	 * Convenience method for adding a row with a labeled component.  
	 * @param aContainer The container to add to.
	 * @param aLabelText The label text for the row.
	 * @param aComponent The Component for the row.
	 */
	public static void addPreLabeledRow(Container aContainer,String aLabelText,Component aComponent) {
		aContainer.add(
			new FlowContainer(FlowLayout.LEFT)
				.addComponent(new JLabel(aLabelText))
				.addComponent(aComponent)
			,
			BreakingFlowLayout.BREAK
		);
	}

	public static void addPostLabeledRow(Container aContainer,String aLabelText,Component aComponent) {
		aContainer.add(
			new FlowContainer(FlowLayout.LEFT)
				.addComponent(aComponent)
				.addComponent(new JLabel(aLabelText))
			,
			BreakingFlowLayout.BREAK
		);
	}

}

/**
 *
 * $Log: BreakingFlowLayout.java,v $
 * Revision 1.1  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.1  2007/03/25 14:36:52  g137997
 * Imported several usefull utilities from another development effort.
 *
 * Revision 1.1  2005/07/18 17:05:22  g137997
 * Moved more common stuff to common project.
 *
 * Revision 1.1  2005/05/25 10:20:43  g596060
 * Mods due to changing package name for OSA comm, entities, media, etc.,
 * classes and resources.
 *
 * Revision 1.9  2005/05/24 17:22:36  g596060
 * Mods due to changing package name for OSA utility classes.
 * Also, organized imports.
 *
 * Revision 1.8  2005/03/07 19:56:09  g137997
 * Added new utility methods.
 *
 * Revision 1.7  2005/01/13 14:24:02  g137997
 * Modified addRow() method to accept Object[] instead of Component[].
 *
 * Revision 1.6  2005/01/05 19:07:45  g137997
 * Modified addLabeledRow(...)
 *
 * Revision 1.5  2004/11/17 21:30:46  g137997
 * Added addLabeledRow() method.
 *
 * Revision 1.4  2004/03/19 01:08:54  lxm01
 * Created addRow(...) static helper method.
 *
 * Revision 1.3  2004/02/25 22:04:57  lxm01
 * Added some JavaDocs and renamed instance variables.
 *
 * Revision 1.2  2003/10/17 18:07:20  g137997
 * Added CVS Header and Footer
 *
 *
 */