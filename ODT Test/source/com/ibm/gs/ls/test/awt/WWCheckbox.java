package com.ibm.gs.ls.test.awt;

import java.awt.AWTEventMulticaster;
import java.awt.Graphics;
import java.awt.Polygon;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

public class WWCheckbox extends WWLabel implements MouseListener
{
    private ActionListener al;

	boolean checked = false;
	boolean dotbox = false;
	WWGroup group;
	
	public WWCheckbox(String text)
	{
		super(text);
		opaque = false;
		setVCenter(false);
		addMouseListener(this);
	}

	public void addNotify()
	{
		super.addNotify();
		int	wh = fm.getAscent()-(fm.getAscent()%2);
		setMargin(wh+5);
	}

	public void setGroup(WWGroup wwg)
	{
		this.group = wwg;
		group.add(this);
	}

	public void setState(boolean b)
	{
		if(b && group!=null)group.clear(this);
		this.checked = b;
		repaint();
	}

	public void setLolight(boolean b)
	{
		setForeground(b?defB.darker():defF);
	}

	public boolean getState()
	{
		return this.checked;
	}

	public void paint(Graphics g)
	{
		int	wh = fm.getAscent()-(fm.getAscent()%2);
		int y = (fm.getHeight()-wh)/2;
		int x = y + padding;
		setMargin(wh+5);
		super.paint(g);
		if(group==null){
			g.drawRect(x,y,wh,wh);
			if(checked){
				g.drawLine(x,y,x+wh,y+wh);
				g.drawLine(x,y+wh,x+wh,y);
			}
		}else{
			Polygon d = new Polygon();
			d.addPoint(x+wh/2,y);
			d.addPoint(x,y+wh/2);
			d.addPoint(x+wh/2,y+wh);
			d.addPoint(x+wh,y+wh/2);
			if(checked){
				g.fillPolygon(d);
			}else{
				g.drawPolygon(d);
			}
		}
		if(dotbox)drawDottedRect(g,0,0,getSize().width-2,getSize().height-2);
	}

	void drawDottedRect(Graphics g,int x,int y,int w,int h)
	{
		drawDotLine(g,'x',x,x+w,y);
		drawDotLine(g,'x',x,x+w,y+h);
		drawDotLine(g,'y',y,y+h,x);
		drawDotLine(g,'y',y,y+h,x+w);
	}

	void drawDotLine(Graphics g,char axis,int par1,int par2,int perp)
	{
		int s = Math.min(par1,par2); int e = Math.max(par1,par2);
		for(int a=s;a<=e;a+=3){
			if(axis=='x')	g.drawRect(a,perp,0,0);
			else			g.drawRect(perp,a,0,0);
		}
	}

	public void mousePressed(MouseEvent e)
	{
		if(isEnabled()){
			setState(group==null?!getState():true);
			if(al!=null){
				al.actionPerformed(new ActionEvent(this,ActionEvent.ACTION_PERFORMED,"ButtonClicked"));
			}
		}
	}

	public void mouseEntered(MouseEvent e)
	{
		if(isEnabled()){
			dotbox = true;repaint();
		}
	}
	
	public void mouseExited(MouseEvent e)
	{
		if(isEnabled()){
			dotbox = false;repaint();
		}
	}

	public void mouseClicked(MouseEvent e){}
	public void mouseReleased(MouseEvent e){}

	public void addActionListener(ActionListener l)
	{
		al = AWTEventMulticaster.add(al, l);
	}

	public void removeActionListener(ActionListener l)
	{
		al = AWTEventMulticaster.remove(al, l);
	}
}