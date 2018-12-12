package com.ibm.gs.ls.odt.webbook;

import java.awt.Color;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.MediaTracker;
import java.awt.Menu;
import java.awt.MenuItem;
import java.awt.PopupMenu;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import java.util.Vector;

import com.ibm.gs.ls.odt.info.Info;
import com.ibm.gs.ls.odt.info.InfoLevel;
import com.ibm.gs.ls.odt.runtime.CourseData;
import com.ibm.gs.ls.odt.runtime.DataLoader;

public class WebBookMenu extends DataLoader implements MouseMotionListener,MouseListener,ActionListener,Runnable
{
	CourseData	cd;

	Image		img,img2,chk;
	HotSpot[]	hot;
	int			lastOver = -1;
	String		linkto,target;
	Info		io;
	Font		mif;
	MediaTracker track;

	boolean		altimg,marking,done = false,imgDone = false;



	public void init()
	{
		track = new MediaTracker(this);
		(cd = new CourseData(this)).start();
		linkto	= getParameter("linkto");
	   	target	= getParameter("target")==null?"_self":getParameter("target");
		marking = getParameter("marking")==null?false:getParameter("marking").equalsIgnoreCase("true");
		img2 = createImage(getSize().width,getSize().height);
	}

	public void doneNotify()
	{
		done = true;
		io = cd.getByID(cd.getVAR("submenu"));
	
		altimg  = io.getFlag("altimage").equalsIgnoreCase("true");
		img = cacheImage(io.getPath()+io.getFlag("menuimage"));
		chk = cacheImage(io.getPath()+io.getFlag("checkimage"));
		track.addImage(img, 1);
		track.addImage(chk, 2);
		new Thread(this).start();

	// - - - - -
		mif = getFont();
		String ff = io.getFlag("menufont");
		if(!ff.equals("")){
			StringTokenizer st = new StringTokenizer(ff,"|");
			try{
				mif = new Font(
					st.nextToken(),
					Integer.parseInt(st.nextToken().trim()),
					Integer.parseInt(st.nextToken().trim())
				);
			}catch(NoSuchElementException nsee){}
		}
	// - - - - -
		if(io.isInfoLevel() && io.getChildCount()>0){
			Info[] ioa = ((InfoLevel)io).getChildren();
			Vector hotv = new Vector(ioa.length);
			for(int i=0;i<ioa.length;i++){
				boolean makeMenu = ioa[i].isInfoLevel() && !ioa[i].getFlag("nomenu").equals("1");
				StringTokenizer st = new StringTokenizer(ioa[i].getFlag("coord"),"|");
				try{
					int			x = Integer.parseInt(st.nextToken().trim());
					int			y = Integer.parseInt(st.nextToken().trim());
					int			w = Integer.parseInt(st.nextToken().trim());
					int			h = Integer.parseInt(st.nextToken().trim());
					char			o = st.nextToken().trim().toUpperCase().charAt(0);
					PopupMenu p = makeMenu?getPopupMenu((InfoLevel)ioa[i]):null;
					if(p!=null)add(p);
					hotv.addElement(new HotSpot(ioa[i],x,y,w,h,p,o));
				}catch(NoSuchElementException nsee){}
			}
			hot = new HotSpot[hotv.size()];
			hotv.copyInto(hot);
		}
	
		addMouseListener(this);
		addMouseMotionListener(this);
		repaint();
	}
	
// ----------------------------------------------------------------

	public void run()
	{
		try{
			track.waitForAll();
			imgDone = true;
			repaint();
		}catch(InterruptedException exc){
			imgDone = false;
			exc.printStackTrace();
		}
	}

	public boolean imagesLoaded()
	{
		return imgDone;
	}
	
// ----------------------------------------------------------------
	public Info getAppletRootIO()
	{
		return this.io;
	}

// ----------------------------------------------------------------
	public CourseData getCourseData()
	{
		return this.cd;
	}

// ----------------------------------------------------------------

	public void actionPerformed(ActionEvent e)
	{
		Object o = e.getSource();
		if(o instanceof MenuItem){
			cd.gotoByID(((MenuItem)o).getName());
		}
		repaint();
	}
	

// ----------------------------------------------------------------

	public void mouseExited(MouseEvent e){}
	public void mousePressed(MouseEvent e){}
	public void mouseEntered(MouseEvent e){}
	public void mouseClicked(MouseEvent e){}
	public void mouseDragged(MouseEvent e){}

// ----------------------------------------------------------------

	public void mouseMoved(MouseEvent e)
	{
		int curOver = -1;
		for(int i=0;i<hot.length;i++){
			if(hot[i].getRegion().contains(e.getX(),e.getY()))curOver=i;
		}
		if(curOver!=lastOver){
			revertOne(lastOver);
			lastOver=curOver;
			Graphics g = getGraphics();
			if(curOver!=-1){
				Rectangle r = hot[curOver].getRegion();
				if(altimg){
					g.drawImage(img2,r.x,r.y,r.x+r.width,r.y+r.height,r.x,r.y,r.x+r.width,r.y+r.height,this);
					if(chk!=null && hot[curOver].io.hasBeenUsed())g.drawImage(chk,r.x,r.y,this);
				}else{
		  	  		g.setXORMode(Color.white);
					g.fillRect(r.x,r.y,r.width,r.height);
				}
				setCursor(new Cursor(Cursor.HAND_CURSOR));
			}else{
				setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
			}
		}
	}
	
// ----------------------------------------------------------------

	public void mouseReleased(MouseEvent e)
	{
		for(int i=0;i<hot.length;i++){
			HotSpot h = hot[i];
			if(h.getRegion().contains(e.getX(),e.getY())){
				revertOne(lastOver);
				if(h.getInfo().isContent() || h.getMenu()==null){
					cd.gotoIO(h.getInfo(),true);
					repaint();
				}else{
					Rectangle r = h.getRegion();
					switch(h.getOrientation()){
						case 'V':
							h.getMenu().show(this,r.x,r.y+r.height);
							break;
						case 'H':
						default:
							h.getMenu().show(this,r.x+r.width,r.y);
							break;
					}
					cd.setVAR("module",h.getMenu().getName());
				}
			}
		}
	}

// ----------------------------------------------------------------

	void revertOne(int n)
	{
		if(n!=-1){
			Graphics g = getGraphics();
			Rectangle r = hot[n].getRegion();
			g.drawImage(img,r.x,r.y,r.x+r.width,r.y+r.height,r.x,r.y,r.x+r.width,r.y+r.height,this);
			if(chk!=null && hot[n].io.hasBeenUsed())g.drawImage(chk,r.x,r.y,this);
		}
	}

// ----------------------------------------------------------------

	public void update(Graphics g)
	{
		paint(g);
	}

// ----------------------------------------------------------------

	public void paint(Graphics g)
	{
		try{
			if(done && imgDone){
	
				if(half && img2.getGraphics().drawImage(img,0,0,this) && altimg){
					makeHalves();
				}
				g.drawImage(img,0,0,this);
				if(hot!=null)for(int i=0;i<hot.length;i++)revertOne(i);
			}else{
				Rectangle dc = g.getClipBounds();
				g.setFont(new Font("Dialog",Font.BOLD,14));
				int bh = g.getClipBounds().height;
				int fh = g.getFontMetrics().getHeight();
				if(done){
					if(hot!=null)for(int i=0;i<hot.length;i++){
						Rectangle r = hot[i].getRegion();
						g.drawRect(r.x,r.y,r.width,r.height);
						g.setClip(r.x,r.y,r.width,r.height);
						g.drawString(hot[i].getName(),r.x+2,r.y+r.height-2);
						g.setClip(dc.x,dc.y,dc.width,dc.height);
					}
					g.drawString("LOADING GRAPHIC...",10,fh*2);
				}else{
					g.drawString("INITIALIZING...",10,fh*1);
				}
		   	}
		}catch(Exception exc){
			exc.printStackTrace();
		}
	}

// ----------------------------------------------------------------

	boolean half = true;

	void makeHalves()
	{
		half = false;
		Image tmp = img;
		int w = tmp.getWidth(this);
		int h = tmp.getHeight(this)/2;
		img  = createImage(w,h);
		img2 = createImage(w,h);
		img.getGraphics().drawImage(tmp,0,0,w,h,0,0,w,h,this);
		img2.getGraphics().drawImage(tmp,0,0,w,h,0,h,w,h*2,this);
	}

// ----------------------------------------------------------------

	PopupMenu getPopupMenu(Info io)
	{
		PopupMenu p = new PopupMenu(io.getName());
		p.setName(io.getID());
		makeMenu(p,io);
		return p;
	}

// ----------------------------------------------------------------

	void makeMenu(Menu m,Info io)
	{
		if(io.getChildCount()>0){
			Info[] v = ((InfoLevel)io).getChildren();
			for(int i=0;i<v.length;i++){
				boolean menu = !(v[i].hasFlag("nomenu") || v[i].getFlag("nomenu").equals("1") || v[i].getFlag("nomenu").equalsIgnoreCase("true") || !(v[i].getFlag("submenu").equals("")));
				if((v[i].isContent() && menu)||(v[i].isInfoLevel() && !menu)){
					MenuItem mi = new MarkableMenuItem(v[i].getName(),v[i].hasBeenUsed() && marking);
					mi.setName(v[i].getID());
					mi.setFont(mif);
					mi.addActionListener(this);
					m.add(mi);
				}
				else if(v[i].isInfoLevel()){
					Menu sm = new Menu(v[i].getName());
					sm.setName(v[i].getID());
					sm.setFont(mif);
					m.add(sm);
					makeMenu(sm,v[i]);
				}
			}
		}
		else{
			MenuItem mi = new MarkableMenuItem(io.getName(),io.hasBeenUsed() && marking);
			mi.setName(io.getID());
		}
	}
	
// ----------------------------------------------------------------

	private class HotSpot
	{
		Rectangle		bounds;
		char			or;
		PopupMenu		pm = null;
		Info			io = null;
	
		public HotSpot(Info io,int x,int y,int w,int h,PopupMenu pm,char or)
		{
			this.bounds	= new Rectangle(x,y,w,h);
			this.io = io;
			this.pm	= pm;
			this.or	= Character.toUpperCase(or);
		}
	
		public Rectangle getRegion() {
			return this.bounds;
		}
		
		public PopupMenu getMenu()
		{
			return this.pm;
		}
		
		public String getName() {
			return this.io.getName();
		}
	
		public Info getInfo() {
			return this.io;
		}
		
		public char getOrientation() {
			return this.or;
		}
	}
	
}

/**
 * 
 * $Log: WebBookMenu.java,v $
 * Revision 1.3  2007/02/02 14:49:25  g137997
 * Added call to CourseData (cd) start() since it is now required.
 * This should fix most of the race condidtion NPEs that were occuring.
 *
 * 
 */