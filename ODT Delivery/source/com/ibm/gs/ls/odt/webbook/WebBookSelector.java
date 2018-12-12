package com.ibm.gs.ls.odt.webbook;

import com.ibm.gs.ls.odt.runtime.*;
import com.ibm.gs.ls.odt.info.*;

import java.util.*;

import java.awt.*;
import java.awt.event.*;

public class WebBookSelector extends DataLoader implements ActionListener,MouseListener
{
	static Hashtable imgCache = new Hashtable();

	Image		img,img2;
	CourseData	cd;
	int			lastOver = -1;
	
	Rectangle	r;
	PopupMenu	pm;
	Info		io;

	boolean		done = false;


	public void init()
	{
		(cd = new CourseData(this)).start();
		img2 = createImage(getSize().width,getSize().height);
	}

	public void doneNotify()
	{
		done = true;
		io = cd.getRoot();
		img = cacheImage(io.getPath()+io.getFlag("selectorimage"));

		if(io.getChildCount()>0){
			pm = new PopupMenu(io.getName());
			pm.setName(io.getID());
			Info[] ioa = ((InfoLevel)io).getChildren();
			for(int i=0;i<ioa.length;i++){
				MenuItem mi = new MenuItem(ioa[i].getName());
				mi.setName(ioa[i].getID()); mi.addActionListener(this);
				pm.add(mi);
/*
				if(ioa[i].hasFlag("launchmenu")){
					Menu m = new Menu(ioa[i].getName());
					MenuItem smi = new MenuItem("Start Course");
					smi.setName("I"+ioa[i].getID()); smi.addActionListener(this); m.add(smi);
					for(	StringTokenizer st = new StringTokenizer(ioa[i].getFlag("launchmenu"),"|");st.hasMoreTokens();){
						String lmi = st.nextToken();
						int idx = lmi.indexOf("^");
						if(idx!=-1){
							MenuItem mi = new MenuItem(lmi.substring(0,idx));
							mi.setName("L"+ioa[i].getPath()+lmi.substring(idx+1));
							mi.addActionListener(this);
							m.add(mi);
						}
					}
					pm.add(m);
				}else{
					MenuItem mi = new MenuItem(ioa[i].getName());
					mi.setName("I"+ioa[i].getID()); mi.addActionListener(this);
					pm.add(mi);
				}
*/
			}
			add(pm);
		}
	
		addMouseListener(this);
		repaint();
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
	// This method may be used by JavaScript to launch the 1st book
	// ----------------------------------------------------------------
	public void launch1st()
	{
		launchNth(0);
	}

	// ----------------------------------------------------------------
	// This method may be used by JavaScript to launch the Nth book
	// ----------------------------------------------------------------
	public void launchNth(int n)
	{
		cd.gotoByID(pm.getItem(n).getName());
	}
	
	// ----------------------------------------------------------------
	
	public void actionPerformed(ActionEvent e)
	{
		Object o = e.getSource();
		if(o instanceof MenuItem){
			cd.gotoByID(((MenuItem)o).getName());
			//String mi = ((MenuItem)o).getName();
			//if(mi.startsWith("I")){
			//	cd.gotoByID(mi.substring(1));
			//}else{
			//	cd.loadDocument(mi.substring(1),"extra");
			//}
		}
	}

	// ----------------------------------------------------------------
	// MouseListener implementation methods
	// ----------------------------------------------------------------
	public void mouseReleased(MouseEvent e){}
	
	public void mousePressed(MouseEvent e){}
	
	public void mouseClicked(MouseEvent e)
	{
		if(e.isAltDown()){
			System.out.println("Navigation Reset");
			cd.reset();
		}else{
			if(pm.getItemCount()>1){
				pm.show(this,10,10);
			}else{
				launch1st();
			}
		}
	}

	public void mouseEntered(MouseEvent e)
	{
		setCursor(new Cursor(Cursor.HAND_CURSOR));
	}

	public void mouseExited(MouseEvent e)
	{
		setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
	}

// ----------------------------------------------------------------
	public void paint(Graphics g)
	{
		update(g);
	}

// ----------------------------------------------------------------
	public void update(Graphics g)
	{
		if(done && img2.getGraphics().drawImage(img,0,0,this)){
			g.drawImage(img,0,0,this);
		}else{
			g.setFont(new Font("Dialog",Font.BOLD,14));
			int bh = g.getClipBounds().height;
			int fh = g.getFontMetrics().getHeight();
			if(done){
				g.drawString("Loading Graphic - Please Wait...",10,fh*2);
			}else{
				g.drawString("Initializing - Please Wait...",10,fh*1);
			}
		}
	}
}

/**
 * 
 * $Log: WebBookSelector.java,v $
 * Revision 1.2  2007/02/02 14:49:25  g137997
 * Added call to CourseData (cd) start() since it is now required.
 * This should fix most of the race condidtion NPEs that were occuring.
 *
 * 
 */