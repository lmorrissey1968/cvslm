package com.ibm.gs.ls.odt.webbook;

import java.awt.Color;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.MediaTracker;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.util.Hashtable;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import java.util.Vector;

import com.ibm.gs.ls.odt.info.Info;
import com.ibm.gs.ls.odt.info.InfoLevel;
import com.ibm.gs.ls.odt.runtime.CourseData;
import com.ibm.gs.ls.odt.runtime.DataLoader;

public class StickyWebBookMenu extends DataLoader implements MouseMotionListener,MouseListener,ActionListener,Runnable
{
	CourseData	cd;

	Image		img,img2,chk;
	HotSpot[]	hotArr;
	int			lastOver = -1;
	String		linkto,target;
	Info		io;
	Font		mif;
	MediaTracker track;

	boolean altimg,marking,done = false,imgDone = false;
	
	static Hashtable hotSpotCache = new Hashtable();
	static StickyPopupMenu mCurrentMenu;

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
				HotSpot aHotSpot = (HotSpot)hotSpotCache.get(ioa[i].getID());
				if(aHotSpot==null){
					try{
						StringTokenizer st = new StringTokenizer(ioa[i].getFlag("coord"),"|");
						StickyPopupMenu popup = null;
						int x = Integer.parseInt(st.nextToken().trim());
						int y = Integer.parseInt(st.nextToken().trim());
						int width = Integer.parseInt(st.nextToken().trim());
						int height = Integer.parseInt(st.nextToken().trim());
						char orient = st.nextToken().trim().toUpperCase().charAt(0);
						if(ioa[i].isInfoLevel()&&!ioa[i].getFlag("nomenu").equals("1")){
							popup = getPopupMenu((InfoLevel)ioa[i]);
						}
						aHotSpot = new HotSpot(ioa[i],x,y,width,height,popup,orient);
						hotSpotCache.put(ioa[i].getID(),aHotSpot);
					}catch(NoSuchElementException exc){}
				}
				
				hotv.addElement(aHotSpot);
				if(aHotSpot.getMenu()!=null){
					aHotSpot.getMenu().addToContainer(this);
					aHotSpot.getMenu().setActionListener(this);
				}

			}
			hotArr = new HotSpot[hotv.size()]; hotv.copyInto(hotArr);
		}
	
		addMouseListener(this);
		addMouseMotionListener(this);
	}
	
// ----------------------------------------------------------------

	public void run()
	{
		try{
			track.waitForAll();
			imgDone = true;
			Thread.sleep(1000);
			if(mCurrentMenu!=null)mCurrentMenu.showAtCurrentLocation();
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
		if(o instanceof StickyMenuItem){
			cd.gotoByID(((StickyMenuItem)o).getName());
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
		for(int i=0;i<hotArr.length;i++){
			if(hotArr[i].getRegion().contains(e.getX(),e.getY()))curOver=i;
		}
		if(curOver!=lastOver){
			revertOne(lastOver);
			lastOver=curOver;
			Graphics g = getGraphics();
			if(curOver!=-1){
				Rectangle r = hotArr[curOver].getRegion();
				if(altimg){
					g.drawImage(img2,r.x,r.y,r.x+r.width,r.y+r.height,r.x,r.y,r.x+r.width,r.y+r.height,this);
					if(chk!=null && hotArr[curOver].io.hasBeenUsed())g.drawImage(chk,r.x,r.y,this);
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
		mCurrentMenu = null;
		for(int i=0;i<hotArr.length;i++){
			HotSpot h = hotArr[i];
			if(h.getRegion().contains(e.getX(),e.getY())){
				revertOne(lastOver);
				if(h.getInfo().isContent() || h.getMenu()==null){
					cd.gotoIO(h.getInfo(),true);
					repaint();
				}else{
					Rectangle r = h.getRegion();
					mCurrentMenu = h.getMenu();
					switch(h.getOrientation()){
						case 'V':
							//h.getMenu().showAt(r.x,r.y+r.height);
							h.getMenu().showVerticalTo(r);
							break;
						case 'H':
						default:
							//h.getMenu().showAt(r.x+r.width,r.y);
							h.getMenu().showHorizontalTo(r);
							break;
					}
					cd.setVAR("module",h.getMenu().getName());
				}
			}else{
				h.getMenu().hideIt();
			}
		}
	}

// ----------------------------------------------------------------

	void revertOne(int n)
	{
		if(n!=-1){
			Graphics g = getGraphics();
			Rectangle r = hotArr[n].getRegion();
			g.drawImage(img,r.x,r.y,r.x+r.width,r.y+r.height,r.x,r.y,r.x+r.width,r.y+r.height,this);
			if(chk!=null && hotArr[n].io.hasBeenUsed())g.drawImage(chk,r.x,r.y,this);
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
				if(hotArr!=null)for(int i=0;i<hotArr.length;i++)revertOne(i);
			}else{
				Rectangle dc = g.getClipBounds();
				g.setFont(new Font("Dialog",Font.BOLD,14));
				int bh = g.getClipBounds().height;
				int fh = g.getFontMetrics().getHeight();
				if(done){
					if(hotArr!=null)for(int i=0;i<hotArr.length;i++){
						Rectangle r = hotArr[i].getRegion();
						g.drawRect(r.x,r.y,r.width,r.height);
						g.setClip(r.x,r.y,r.width,r.height);
						g.drawString(hotArr[i].getName(),r.x+2,r.y+r.height-2);
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

	StickyPopupMenu getPopupMenu(Info io)
	{
		StickyPopupMenu p = new StickyPopupMenu(io.getName());
		p.setName(io.getID());
		makeMenu(p,io);
		return p;
	}

// ----------------------------------------------------------------

	private void makeMenu(StickyPopupMenu m,Info io)
	{
		if(io.getChildCount()>0){
			Info[] v = ((InfoLevel)io).getChildren();
			for(int i=0;i<v.length;i++){
				boolean menu = !(v[i].hasFlag("nomenu") || v[i].getFlag("nomenu").equals("1") || v[i].getFlag("nomenu").equalsIgnoreCase("true") || !(v[i].getFlag("submenu").equals("")));
				if((v[i].isContent() && menu)||(v[i].isInfoLevel() && !menu)){
					StickyMenuItem mi = new StickyMenuItem(v[i].getName());
					//mi.setFont(mif);
					mi.setName(v[i].getID());
					if(marking)mi.setCheckedStateIndicator(v[i]);
					m.addItem(mi);
				}
				else if(v[i].isInfoLevel()){
					StickyPopupMenu sm = new StickyPopupMenu(v[i].getName());
					//sm.setFont(mif);
					sm.setName(v[i].getID());
					if(marking)sm.setCheckedStateIndicator(v[i]);
					m.addItem(sm);
					makeMenu(sm,v[i]);
				}
			}
		}
		//else{
		//	StickyMenuItem mi = new StickyMenuItem(io.getName(),io.hasBeenUsed() && marking);
		//	mi.setName(io.getID());
		//}
	}
	
// ----------------------------------------------------------------

	private class HotSpot
	{
		Rectangle		bounds;
		char			or;
		StickyPopupMenu	pm = null;
		Info			io = null;
	
		public HotSpot(Info io,int x,int y,int w,int h,StickyPopupMenu pm,char or)
		{
			this.bounds	= new Rectangle(x,y,w,h);
			this.io = io;
			this.pm	= pm;
			this.or	= Character.toUpperCase(or);
		}
	
		public Rectangle getRegion() {
			return this.bounds;
		}
		
		public StickyPopupMenu getMenu() {
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
 * $Log: StickyWebBookMenu.java,v $
 * Revision 1.4  2009/08/18 19:01:29  g137997
 * Renamed hot to hotArr.
 *
 * Revision 1.3  2007/02/02 14:49:25  g137997
 * Added call to CourseData (cd) start() since it is now required.
 * This should fix most of the race condidtion NPEs that were occuring.
 *
 * 
 */