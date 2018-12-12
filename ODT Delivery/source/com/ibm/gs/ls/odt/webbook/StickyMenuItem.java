package com.ibm.gs.ls.odt.webbook;


//Import Statements
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Label;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Vector;

import com.ibm.gs.ls.odt.utility.CheckedStateIndicator;

/**
 * StickyMenuItem.java
 *
 * Created: 10/12/2001
 *
 * @author Lawrence Morrissey
 * @version $Revision: 1.3 $    Last Updated: $Date: 2009/08/18 19:01:39 $ 
 * @see <relatedclassname>
 * 
 * 
 */

public class StickyMenuItem extends Label
{
	protected StickyPopupMenu mStickyPopupMenu;
	private ActionListener mListener;
	private CheckedStateIndicator mIndicator;
	
	
	public StickyMenuItem(String text)
	{
		super("    "+text,Label.LEFT);
		
		addMouseListener(new MouseAdapter(){
			public void mouseEntered(MouseEvent e)
			{
				revertAll();
				setBackground(Color.black);
				setForeground(Color.white);
				if(mStickyPopupMenu!=null){
					Rectangle ap = getParent().getParent().getBounds();
					Rectangle sm = mStickyPopupMenu.getBounds();
					Rectangle r  = getParent().getBounds();
					Rectangle p  = getBounds();

					
                    //r.x+r.width+sm.width>ap.width
                    //?
                    //r.x-sm.width
                    //:
                    //r.x+r.width

							
					//int x = r.x+r.width;
					int x = mStickyPopupMenu.isShiftLeftSet() ? r.x-sm.width : r.x+r.width ;
					int y = r.y+p.y;
					//int y = mStickyPopupMenu.isShiftLeftSet() ? : r.y+p.y ;
					
					mStickyPopupMenu.setLocation(x,y);
					mStickyPopupMenu.setVisible(true);
					
				}
			}
			
			public void mouseReleased(MouseEvent e)
			{
				if(mStickyPopupMenu==null){
					hideAncestors();
					repaint();
					mListener.actionPerformed(new ActionEvent(
						StickyMenuItem.this,
						ActionEvent.ACTION_PERFORMED,
						getText().trim()
					));
					//if(mListeners!=null)for(int i=0;i<mListeners.size();i++){
					//	ActionListener aListener = (ActionListener)mListeners.elementAt(i);
					//	aListener.actionPerformed(new ActionEvent(
					//		StickyMenuItem.this,
					//		ActionEvent.ACTION_PERFORMED,
					//		getText().trim()
					//	));
					//}
				}
			}
		});
	}
	
	public void setActionListener(ActionListener aListener)
	{
		this.mListener = aListener;
	}
	
	public void setCheckedStateIndicator(CheckedStateIndicator aIndicator)
	{
		this.mIndicator = aIndicator;
	}
	
	//public void addActionListener(ActionListener aListener)
	//{
	//	if(this.mListeners==null){
	//		this.mListeners = new Vector();
	//	}
	//	this.mListeners.addElement(aListener);
	//}
	
	//public void removeActionListener(ActionListener aListener)
	//{
	//	this.mListeners.removeElement(aListener);
	//}

	
	private void hideAncestors()
	{
		StickyPopupMenu ppm = (StickyPopupMenu)getParent();
		Vector reDisplay = new Vector();
		while(ppm!=null){
			reDisplay.insertElementAt(ppm,0);
			ppm.setVisible(false);
			ppm.mReDisplay = reDisplay;
			ppm = ppm.getParentMenu();
			
		}
	}
	
	private void revertAll()
	{
		((StickyPopupMenu)getParent()).revertAll();
	}
	
	protected void setSubmenu(StickyPopupMenu aStickyPopupMenu)
	{
		this.mStickyPopupMenu = aStickyPopupMenu;
	}
	
	public void paint(Graphics g)
	{
		super.paint(g);
		int y = (getSize().height/2)+1;
		int x = getSize().width-4;
		if(this.mIndicator!=null && this.mIndicator.isChecked())drawCheck(g,1,y);
		if(this.mStickyPopupMenu!=null)drawTriangle(g,x,y);
	}
	
	private void drawTriangle(Graphics g,int x,int y)
	{
		int[] xs = {x-2,x-2,x+2};
		int[] ys = {y-4,y+4,y};
		g.fillPolygon(xs,ys,3);
	}

	private void drawCheck(Graphics g,int x,int y)
	{
		for(int i=-2;i<=5;i++){
			g.drawLine(x+i+2,y-Math.abs(i)-1,x+i+2,y-Math.abs(i)+2);
		}
	}
	
} // StickyMenuItem