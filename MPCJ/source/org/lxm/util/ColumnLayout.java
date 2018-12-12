/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/ColumnLayout.java,v 1.2 2008/10/30 13:14:15 g137997 Exp $
 * 
 * ColumnLayout
 * Created on Apr 19, 2004
 *
 * © Lockheed Martin Corporation, (2004). All rights reserved
 * 
 */
 
package org.lxm.util;

import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Insets;
import java.awt.LayoutManager2;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JLabel;


/**
 * This crude layout manager allows components to be laid out in a columnar fasion.
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.2 $
 */
public class ColumnLayout implements LayoutManager2
{
	private List<Component>[] mColumns;
	private int mHGap;
	private int mVGap;
	
	private int mMinWidth;
	private int mMinHeight;

	public ColumnLayout(int aNumColumns, int aHGap, int aVGap) 
	{
		this.mHGap = aHGap;
		this.mVGap = aVGap;
		this.mColumns = new List[aNumColumns];
		for (int i = 0; i < mColumns.length; i++) mColumns[i] = new ArrayList<Component>();
	}

	public ColumnLayout(int aNumColumns) 
	{
		this(aNumColumns,1,1);
	}

	/*** @see java.awt.LayoutManager#removeLayoutComponent(java.awt.Component) */
	public void removeLayoutComponent(Component comp) {
		for (int i = 0; i < mColumns.length; i++) if(mColumns[i].remove(comp))break;
	}

	/*** @see java.awt.LayoutManager#layoutContainer(java.awt.Container) */
	public void layoutContainer(Container parent) {
		doLayout(parent,true);
	}
	
	private int getMinRows() {
		int min = Integer.MAX_VALUE;
		for (int i = 0; i < mColumns.length; i++) {
			min = Math.min(min,mColumns[i].size());
		}
		return min;
	}
	
	/*** @see java.awt.LayoutManager#addLayoutComponent(java.lang.String, java.awt.Component) */
	public void addLayoutComponent(String name, Component comp) {
		addLayoutComponent(comp,new Integer(name));
	}

	/*** @see java.awt.LayoutManager2#addLayoutComponent(java.awt.Component, java.lang.Object) */
	public void addLayoutComponent(Component comp, Object constraints) {
		mColumns[((Integer)constraints).intValue()].add(comp);
	}
	
	/*** @see java.awt.LayoutManager#minimumLayoutSize(java.awt.Container) */
	public Dimension minimumLayoutSize(Container parent) {
		return preferredLayoutSize(parent);
	}
	
	/*** @see java.awt.LayoutManager#preferredLayoutSize(java.awt.Container) */
	public Dimension preferredLayoutSize(Container parent) {
		doLayout(parent,false);
		return new Dimension(mMinWidth,mMinHeight);
	}
	
	/*** @see java.awt.LayoutManager2#maximumLayoutSize(java.awt.Container) */
	public Dimension maximumLayoutSize(Container target) {
		return preferredLayoutSize(target);
	}

	/*** @see java.awt.LayoutManager2#getLayoutAlignmentX(java.awt.Container) */
	public float getLayoutAlignmentX(Container target) {
		return 0;
	}

	/*** @see java.awt.LayoutManager2#getLayoutAlignmentY(java.awt.Container) */
	public float getLayoutAlignmentY(Container target) {
		return 0;
	}

	/*** @see java.awt.LayoutManager2#invalidateLayout(java.awt.Container) */
	public void invalidateLayout(Container target) {
		doLayout(target,true);
	}

	/**
	 * Convenience method for adding a row with a label column and a other column.
	 * @param aContainer The container to add to.
	 * @param aLabelText The label text for the row.
	 * @param aComponents The other components for the row.
	 */
	public final static void addLabeledRow(Container aContainer,String aLabelText,Object[] aComponents) {
		addColumn(aContainer,aLabelText,0);
		addColumn(aContainer,flowContain(aComponents,FlowLayout.LEFT),1);
	}
	
	public final static void addRow(Container aContainer,Object ... components) {
		for(int i = 0;i < components.length;i++) {
			if(components[i] instanceof Component) {
				addColumn(aContainer,(Component)components[i],i);
			} else {
				addColumn(aContainer,components[i].toString(),i);
			}
		}
	}
	
	public final static void addColumn(Container aContainer,String aLabelText,int aColumnIndex) {
		aContainer.add(new JLabel(aLabelText,JLabel.RIGHT),new Integer(aColumnIndex));
	}

	public final static void addColumn(Container aContainer,Component aComponent,int aColumnIndex) {
		aContainer.add(aComponent,new Integer(aColumnIndex));
	}

	/**
	 * Convenience method for adding a row with two columns.  
	 * @param aContainer The container to add to.
	 * @param aLabelText The label text for the row.
	 * @param aComponent The Component for the row.
	 */
	public static final void addLabeledRow(Container aContainer,String aLabelText,Component aComponent) {
		addLabeledRow(aContainer,aLabelText,new Object[]{aComponent});
	}

	public static final void addTwoColumnRow(Container aContainer,Component aCol1Component,Component aCol2Component) {
		aContainer.add(aCol1Component,new Integer(0));
		aContainer.add(aCol2Component,new Integer(1));
	}
	
	public static final Container flowContain(Object[] aObjects,int aAlignment) {
		Container c = new Container();
		c.setLayout(new FlowLayout(aAlignment,1,1));
		for (int i = 0; i < aObjects.length; i++){
			c.add( aObjects[i] instanceof Component ? (Component)aObjects[i] : new JLabel(aObjects[i].toString()) );
		}
		return c;
	}

	private void doLayout(Container parent, boolean active){
		Insets ins = parent.getInsets();
		int[] colWidth = new int[mColumns.length];
		int[] rowHeight = new int[getMinRows()];
		for (int col = 0; col < mColumns.length; col++) {
			for (int row = 0; row < mColumns[col].size(); row++) {
				Component c = (Component)mColumns[col].get(row);
				if(c!=null) {
					Dimension ps = c.getPreferredSize();
					colWidth[col] = Math.max( colWidth[col], ps.width );
					rowHeight[row] = Math.max( rowHeight[row], ps.height );
				}
			}
		}
		
		int totalHeight = ins.top + ins.bottom + mVGap*(rowHeight.length-1);
		for(int i = 0;i < rowHeight.length;i++)totalHeight+=rowHeight[i];
		
		int totalWidth = ins.left + ins.right + mHGap*(colWidth.length-1);
		for(int i = 0;i < colWidth.length;i++)totalWidth+=colWidth[i];			

		// Layout Components
		int yLoc = ins.top;
		for (int row = 0; row < rowHeight.length; row++) {
			int xLoc = ins.left;
			if(row>0)yLoc += mVGap;
			for (int col = 0; col < colWidth.length; col++) {
				Component c = mColumns[col].get(row);
				if(col>0)xLoc += mHGap;
				if(c!=null && active)c.setBounds(xLoc,yLoc,colWidth[col],rowHeight[row]);
				xLoc += colWidth[col];
			}
			yLoc += rowHeight[row];
		}
		this.mMinWidth = totalWidth;
		this.mMinHeight = totalHeight;
	}

	///**
	// * Unit Test Entry Point	
	// * @param args Command line arguments.
	// */
	//public static void main(String[] args) {
	//	JPanel jp = new JPanel(new ColumnLayout(3,7,2));
	//	jp.setBorder(BorderFactory.createLineBorder(Color.GREEN,5));
	//	
	//	jp.add(new JLabel("Button"),new Integer(0));
	//	jp.add(new JTextField("Text Field"),new Integer(0));
	//	jp.add(new JLabel("Who has the freakin' BUTTON?"),new Integer(0));
	//	
	//	jp.add(new JButton("BUTTON"),new Integer(1));
	//	jp.add(new JTextField("I Don't Know"),new Integer(1));
	//	jp.add(new JTextArea("This is a text area"),new Integer(1));
	//	
	//	jp.add(new JTextField("I am a Text Field"),new Integer(2));
	//	jp.add(new JTextArea("This is a text area"),new Integer(2));
	//	jp.add(new JButton("I am a Button"),new Integer(2));
	//	
	//	new UtilUI.TestFrame(jp);
	//}
}


/**
 * 
 * $Log: ColumnLayout.java,v $
 * Revision 1.2  2008/10/30 13:14:15  g137997
 * Minor Changes
 *
 * Revision 1.1  2007/08/16 17:39:40  g137997
 * Re-organized and added utilities.
 *
 * Revision 1.4  2007/05/21 14:49:20  g137997
 * Added new utility methods.
 *
 * Revision 1.3  2007/05/18 15:35:07  g137997
 * Minor change.
 *
 * Revision 1.2  2007/03/27 16:58:54  g137997
 * Changed to take Insets into consideration.
 *
 * Revision 1.1  2007/03/07 22:36:28  g137997
 * Re-packaged existing classes a bit.
 *
 * Revision 1.1  2007/03/07 22:06:35  g137997
 * Finshed getting logon panel to work.
 *
 * Revision 1.1  2005/07/18 17:05:22  g137997
 * Moved more common stuff to common project.
 *
 * Revision 1.2  2005/07/12 12:11:37  g137997
 * Moved commonly used utilities to new "Common Utilities" project.
 *
 * Revision 1.1  2005/05/25 10:20:43  g596060
 * Mods due to changing package name for OSA comm, entities, media, etc.,
 * classes and resources.
 *
 * Revision 1.7  2005/05/24 17:22:36  g596060
 * Mods due to changing package name for OSA utility classes.
 * Also, organized imports.
 *
 * Revision 1.6  2005/01/13 14:21:50  g137997
 * Added new version of addLabeledRow(...).
 *
 * Revision 1.5  2004/12/06 18:01:24  g137997
 * Fixed the "uneven rows" bug.
 *
 * Revision 1.4  2004/11/02 19:18:37  g137997
 * Added static utility methods.
 *
 * Revision 1.3  2004/06/28 16:14:56  g137997
 * Organized Imports
 *
 * Revision 1.2  2004/04/20 23:59:50  lxm01
 * Disabled unit test code (via commenting).
 *
 * Revision 1.1  2004/04/19 22:18:48  lxm01
 * Initial check-in.
 *
 * 
 */