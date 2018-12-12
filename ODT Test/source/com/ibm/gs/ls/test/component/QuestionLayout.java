package com.ibm.gs.ls.test.component;

import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Insets;
import java.awt.LayoutManager;
import java.util.Vector;

public class QuestionLayout implements LayoutManager
{
	int gap;
	int lmarg = 0,rmarg = 0,tmarg = 0,bmarg = 0;
	Component body,feed;
	final static int VSPACE = 2;
	Vector	ansL = new Vector(6,4),
			ansR = new Vector(6,4);

	public QuestionLayout(int gap)
	{
		this.gap = gap;
	}

	public QuestionLayout()
	{
		this(0);
	}

	public QuestionLayout setMargins(int l,int r,int t,int b)
	{
		this.lmarg = l;
		this.rmarg = r;
		this.tmarg = t;
		this.bmarg = b;
		return this;
	}

	public void addLayoutComponent(String name,Component comp)
	{
		if(name.equals("Body")){
			body = comp;
		}else if(name.equals("Feed")){
			feed = comp;
		}else if(name.equals("Answer") || name.equals("Left")){
			ansL.addElement(comp);
		}else if(name.equals("Right")){
			ansR.addElement(comp);
		}
	}
	
	public void removeLayoutComponent(Component comp)
	{
	}
	
	public Dimension preferredLayoutSize(Container parent)
	{
		Dimension d = new Dimension(0,0);
		return parent.getSize();
	}
	
	public Dimension minimumLayoutSize(Container parent)
	{
		return preferredLayoutSize(parent);
	}

	public void layoutContainer(Container parent)
	{
		synchronized (parent.getTreeLock()){
			for(int i=0;i<parent.getComponentCount();i++)parent.getComponent(i).setVisible(false);
			Dimension d;
			Insets in = parent.getInsets();
			Dimension pd = parent.getSize();
			int aw = pd.width-(in.left+in.right)-(lmarg+rmarg);
			int ah = pd.height-(in.top+in.bottom)-(tmarg+bmarg);
			int x = in.left+lmarg;
			int y = in.top+tmarg;

			if(body!=null){
				body.setSize(aw,0);
				d = body.getPreferredSize();
				body.setBounds(x,y,d.width,d.height);
				y+=d.height+10;
			}
		
			if(feed!=null){
				feed.setSize(aw,0);
				d = feed.getPreferredSize();
				feed.setBounds(x,ah+in.top-d.height,d.width,d.height);
			}

			if(gap==0){
				for(int i=0;i<ansL.size();i++){
					Component c = (Component)ansL.elementAt(i);
					c.setSize(aw,0);
					d = c.getPreferredSize();
					c.setBounds(x,y,d.width,d.height); y+=(d.height+VSPACE);
				}
			}else{
				Component cL,cR;
				int rows = Math.min(ansL.size(),ansR.size());
				int acw = (aw-gap)/2;
				int wL = 0,wR = 0;
				for(int i=0;i<rows;i++){
					cL = (Component)ansL.elementAt(i);
					cL.setSize(acw,0);
					wL = Math.max(wL,cL.getMinimumSize().width);
					cR = (Component)ansR.elementAt(i);
					cR.setSize(acw,0);
					wR = Math.max(wR,cR.getMinimumSize().width);
				}
				int remL = acw-wL,remR = acw-wR;
				wL+=remR;wR+=remL;
				for(int i=0;i<rows;i++){
					cL = (Component)ansL.elementAt(i);
					cL.setSize(wL,0);
					cR = (Component)ansR.elementAt(i);
					cR.setSize(wR,0);

					Dimension dL = cL.getPreferredSize();
					Dimension dR = cR.getPreferredSize();
					int rowh = Math.max(dL.height,dR.height);
					int x2 = x+dL.width+gap;
					
					cL.setBounds(x ,y,dL.width,rowh);
					cR.setBounds(x2,y,dR.width,rowh);
					y+=(rowh+VSPACE);
				}
			}
			for(int i=0;i<parent.getComponentCount();i++)parent.getComponent(i).setVisible(true);
		}
	}
}