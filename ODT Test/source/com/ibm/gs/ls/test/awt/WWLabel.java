package com.ibm.gs.ls.test.awt;

import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.util.StringTokenizer;
import java.util.Vector;

public class WWLabel extends Component
{
	public static final int CENTER = 0,LEFT = 1,RIGHT = 2;
	public static int id=0;

	protected static Color defB = new Color(210,210,210);
	protected static Color defF = new Color(0,0,0);

	String text;
	int fw,fh=-1,rw,rh,mw=0,padding = 3;
	int minLines = 1;
	int lmargin = 0;
	Vector v;
	FontMetrics fm;
	int just=LEFT;
	boolean border=false,rounded=true,limit=true,vcenter=true,opaque=false;

	public WWLabel(String text,int fw)
	{
		this.text = text;
		this.fw = fw;
		super.setBackground(defB);
		super.setForeground(defF);
		setName("wrapper"+(id++));
	}

	public WWLabel(String text)
	{
		this(text,-1);
		this.limit=false;
	}

	public void setMargin(int lm){ this.lmargin = lm; }
	public void setMinLines(int ml){ this.minLines = ml; }
	public void setFixedWidth(int w){ this.fw = w; }
	public void setFixedHeight(int h){ this.fh = h; }
	public void setMinWidth(int w){ this.mw=Math.max(this.mw,w); }
	public void setBorder(boolean b){ this.border = b; }
	public void setBorder(boolean b,boolean r){ this.border = b; this.rounded = r; }
	public void setJustification(int just){	this.just = just;repaint(); }
	public void setVCenter(boolean b){ this.vcenter = b; }
	public void setOpaque(boolean b){ this.opaque = b; }
	public void setTransparent(boolean b){ this.opaque = !b; }
	public void addNotify(){ fm = getFontMetrics(getFont());super.addNotify(); }
	public int getTextWidth(){ return fm!=null?fm.stringWidth(text)+padding*2+lmargin:0; }

	public void setForeground(Color c)
	{	
		super.setForeground(c);
		repaint();
	}

	public void setBackground(Color c)
	{
		super.setBackground(c);
		repaint();
	}

	public void setBGandFG(Color bg,Color fg)
	{
		super.setBackground(bg);
		super.setForeground(fg);
		repaint();
	}

	public void setText(String text)
	{
		this.text = text;
		rh = makeLines(getSize().width);
		invalidate();getParent().validate();
	}

	public void setLabel(String text){ setText(text); }
	public String getLabel(){ return this.text; }
	public String getText(){ return this.text; }

	public void append(String text)
	{
		setText(this.text+text);
	}

	public void setPadding(int padding)
	{
		this.padding = padding;
		rh = makeLines(getSize().width);
		if(getParent()!=null){
			invalidate();getParent().validate();
		}
	}

	public void setFont(Font f){
		super.setFont(f);
		fm = getFontMetrics(getFont());
		rh = makeLines(getSize().width);
		if(getParent()!=null){
			invalidate();getParent().validate();
		}
	}

//*********** OVERRIDDEN SIZING METHODS ***********
	public Dimension getPreferredSize()
	{
		rh = makeLines(limit?fw:getSize().width);
		Dimension d = new Dimension(limit?Math.max(fw,mw):getSize().width,rh);
		return d;
	}

	public Dimension getMinimumSize()
	{
		rw = Math.min(getTextWidth(),getSize().width);
		rh = makeLines(rw);
		Dimension d = new Dimension(rw,rh);
		return d;
	}

	public void setBounds(int x,int y,int w,int h)
	{
		if(limit)fw=w;
		rh = makeLines(w);
		super.setBounds(x,y,w,h);
	}

//*********** OVERRIDDEN DRAWING METHODS ***********
	public void update(Graphics g)
	{
		paint(g);
	}
	
	public void paint(Graphics g)
	{
		Dimension d = getSize();
		g.setFont(getFont());
		g.setClip(0,0,d.width,d.height);
		g.setColor(getBackground());
		if(opaque){
			if(rounded)	g.fillRoundRect(0,0,d.width-1,d.height-1,10,10);
			else		g.fillRect(0,0,d.width-1,d.height-1);
		}
		g.setColor(getForeground());
		int ao = (d.height-fm.getHeight()*v.size())/2;
		int y = fm.getAscent()-fm.getHeight()+(ao>0&&vcenter?ao:0);
		for(int i=0;i<v.size();i++){
			String line = (String)v.elementAt(i);
			int x = (just==RIGHT)?(fw-fm.stringWidth(line)):(just==CENTER)?(d.width-(fm.stringWidth(line)+padding*2))/2:0;
			g.drawString(line,x+padding+lmargin,y+=fm.getHeight());
		}
		if(border){
			if(rounded)	g.drawRoundRect(0,0,d.width-1,d.height-2,10,10);
			else		g.drawRect(0,0,d.width-1,d.height-2);
		}
	}

	int makeLines(int w)
	{
		v = new Vector(5,5);
		StringBuffer sb = new StringBuffer("");
		StringTokenizer st = new StringTokenizer(text);

		while(st.hasMoreTokens()){
			String cur = st.nextToken();
			mw = Math.max(mw,fm.stringWidth(cur)+getTotalPad());
			if(cur.equalsIgnoreCase("<BR>")){
				v.addElement(sb.toString().trim());
				sb.setLength(0);
			}else{
				if(fm.stringWidth(sb+cur) > w-getTotalPad()){
					v.addElement(sb.toString().trim());
					sb.setLength(0);
				}
				sb.append(cur+" ");
			}
		}
		v.addElement(sb.toString().trim());
		return fm.getHeight()*(Math.max(minLines,v.size()))+fm.getDescent()+fm.getLeading();
	}

	int getTotalPad(){ return padding*2+lmargin;}
}