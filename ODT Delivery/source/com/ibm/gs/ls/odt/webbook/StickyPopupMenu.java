package com.ibm.gs.ls.odt.webbook;


//Import Statements
import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.GridLayout;
import java.awt.Panel;
import java.awt.Rectangle;
import java.awt.event.ActionListener;
import java.util.Vector;

import com.ibm.gs.ls.odt.utility.CheckedStateIndicator;

/**
 * StickyPopupMenu.java
 *
 * Created: 10/13/2001
 *
 * @author Lawrence Morrissey
 * @version $Revision: 1.3 $    Last Updated: $Date: 2009/08/18 19:01:39 $ 
 * @see <relatedclassname>
 * 
 */

public class StickyPopupMenu extends Panel
{
	////Instance Variables
	private StickyMenuItem mMenuItem;
	private StickyPopupMenu mParentMenu;
	protected Vector mReDisplay;
	
	private static boolean x_shift = false;
	private static boolean y_shift = false;
	

	/**
	 * Constructor
	 **/
	public StickyPopupMenu(String text)
	{
		setLayout(new GridLayout(0,1,0,0));
		this.setBackground(Color.lightGray);
		this.mMenuItem = new StickyMenuItem(text);	
		this.mMenuItem.setSubmenu(this);
	}
	

	public void addToContainer(Container c)
	{
		setVisible(false);
		c.add(this);
		FontMetrics fm = getFontMetrics(getFont());
		Component[] items = getComponents();
		int height = (fm.getHeight()+4)*items.length;
		int width = 0;
		for(int i=0;i<items.length;i++){
			StickyMenuItem item = (StickyMenuItem)items[i];
			int curWidth = fm.stringWidth(item.getText());
			if(curWidth>width)width = curWidth;
			if(item.mStickyPopupMenu!=null){
				item.mStickyPopupMenu.addToContainer(c);
			}
			
		}
		setSize(width+12,height);
		doLayout();
	}
	
	public boolean isShiftUpSet()
	{
		return y_shift;
	}

	public boolean isShiftLeftSet()
	{
		return x_shift;
	}
	
	public String getLabel()
	{
		return mMenuItem.getText().trim();
	}
	
	public void setCheckedStateIndicator(CheckedStateIndicator aIndicator)
	{
		mMenuItem.setCheckedStateIndicator(aIndicator);
	}
	
	public void paint(Graphics g)
	{
		super.paint(g);
		Dimension d = getSize();
		g.setColor(Color.black);
		g.drawRect(0,0,d.width-1,d.height-1);
	}

	protected void revertAll()
	{
		Component[] items = getComponents();
		for(int i=0;i<items.length;i++){
			StickyMenuItem item = (StickyMenuItem)items[i];
			item.setBackground(Color.lightGray);
			item.setForeground(Color.black);
			if(item.mStickyPopupMenu!=null){
				item.mStickyPopupMenu.setVisible(false);
				item.mStickyPopupMenu.revertAll();
			}
		}
	}
		
	private StickyMenuItem getStickyMenuItem()
	{
		return this.mMenuItem;
	}
	
	protected StickyPopupMenu getParentMenu()
	{
		return this.mParentMenu;
	}
	
	public void addItem(StickyPopupMenu anItem)
	{
		anItem.mParentMenu = this;
		add(anItem.getStickyMenuItem());
	}
	
	public void addItem(StickyMenuItem anItem)
	{
		add(anItem);
	}
	
	public StickyMenuItem addItem(String aLabel)
	{
		StickyMenuItem item = new StickyMenuItem(aLabel);
		addItem(item);
		return item;
	}
	
	public void addItem(String aLabel,ActionListener aListener)
	{
		StickyMenuItem item = addItem(aLabel);
		item.setActionListener(aListener);
		//item.addActionListener(aListener);
	}
	
	public void showAtCurrentLocation()
	{
		setVisible(true);
		if(mReDisplay!=null){
			for(int i=0;i<mReDisplay.size();i++){
				((Component)mReDisplay.elementAt(i)).setVisible(true);
			}
		}
	}
	
	public void showHorizontalTo(Rectangle h)
	{
		Rectangle p = getParent().getBounds();
		Rectangle m = getBounds();
		
		int x;
		if(h.x + h.width + m.width > p.width){
			x_shift = true;
			x = h.x - m.width;
		}else{
			x_shift = false;
			x = h.x + h.width;
		}
		
		int y;
		if(h.y + m.height > p.height){
			y_shift = true;
			y = h.y + h.height - m.height;
		}else{
			y_shift = false;
			y = h.y;
		}
			
		setLocation(x,y);
		showAtCurrentLocation();
	}

	public void showVerticalTo(Rectangle h)
	{
		Rectangle p = getParent().getBounds();
		Rectangle m = getBounds();
		
		int x;
		if(h.x + m.width > p.width){
			x_shift = true;
			x = h.x + h.width - m.width;
		}else{
			x_shift = false;
			x = h.x;
		}
		
		int y;
		if(h.y + h.height + m.height > p.height){
			y_shift = true;
			y = h.y - m.height;
		}else{
			y_shift = false;
			y = h.y + h.height;
		}
		setLocation(x,y);
		showAtCurrentLocation();
	}

	public void showAt(int x,int y)
	{
		setLocation(x,y);
		showAtCurrentLocation();
	}

	public void setVisible(boolean visible)
	{
		if(visible){
			Dimension d = getParent().getSize();
			Rectangle r = getBounds();
			
			int newY = (r.y+r.height>d.height)
				?
				d.height-r.height
				:
				r.y
			;
			//int newX = (r.x+r.width>d.width)
			//	?
			//	d.width-r.width
			//	:
			//	r.x
			//;
			//setLocation(newX,newY);
			setLocation(r.x,newY);
		}
		super.setVisible(visible);
	}
	
	public void hideIt()
	{
		setVisible(false);
		Component[] items = getComponents();
		for(int i=0;i<items.length;i++){
			StickyMenuItem item = (StickyMenuItem)items[i];
			if(item.mStickyPopupMenu!=null){
				item.mStickyPopupMenu.hideIt();
			}
		}
	}
	
	public void setActionListener(ActionListener aListener)
	{
		Component[] items = getComponents();
		for(int i=0;i<items.length;i++){
			StickyMenuItem item = (StickyMenuItem)items[i];
			item.setActionListener(aListener);
			if(item.mStickyPopupMenu!=null){
				item.mStickyPopupMenu.setActionListener(aListener);
			}
		}
	}
	
} // StickyPopupMenu