package com.ibm.gs.ls.test.component;

import java.awt.CardLayout;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.MediaTracker;
import java.awt.Panel;
import java.net.URL;
import java.util.Vector;

import com.ibm.gs.ls.test.awt.WWLabel;
import com.ibm.gs.ls.test.compiler.Attributes;

public abstract class QComponent extends Panel
{
	private boolean mRevealedFlag = false;
	private TouchListener mTouchListener;
	
	protected WWLabel feed;
	protected Attributes at;
	protected boolean attempted = false;
	protected boolean correct = false;
	protected Question mQuestion;

	private int mTries = 0;
	

	public QComponent()
	{
		feed = new WWLabel("");
		feed.setJustification(WWLabel.CENTER);
	}

	public WWLabel getFBDisplay(){ return this.feed; }

	public void setQandA(Question q,Attributes a)
	{
    	this.mQuestion = q;
	   	this.at = a;
	}

	public boolean isCorrect()
	{
		if(this.correct){
			this.mRevealedFlag = true;
			showCorrect();
		}
		return this.correct;
	}

	abstract void showCorrect();

	public final void reveal()
	{
		this.mRevealedFlag = true;
		if(!isCorrect())showCorrect();
	}

	public void showFeedback(String feedback,Color bgc,Color fgc)
	{
		if(feedback!=null && !feedback.equals("")){
			feed.setOpaque(true);
			feed.setText(feedback);
			feed.setBGandFG(bgc,fgc);
		}
	}

	public final boolean wasCorrect()
	{
		return this.correct;
	}

	public final boolean wasAttempted()
	{
		return this.attempted;
	}

	void touch()
	{
		if(mTouchListener!=null)mTouchListener.touched();
	}

	public void setTouchListener(TouchListener tl)
	{
		this.mTouchListener = tl;
	}
	
	public final boolean isRevealed()
	{
		return this.mRevealedFlag;
	}

	public final boolean isAttemptedWrong()
	{
		return this.attempted && !this.correct;
	}

	public final Question getQuestion()
	{
		return this.mQuestion;
	}

// ***************************************************************
	Image offscreen;

	public void invalidate()
	{
		super.invalidate();
		offscreen = null;
	}
	
	public void update(Graphics g)
	{
		paint(g);
	}

	public void paint(Graphics g)
	{
		synchronized(getParent().getTreeLock()){
			int w = getSize().width;
			int h = getSize().height;
			if(w>0 && h>0){ 
				if(offscreen == null){ offscreen = createImage(w,h); }
				Graphics og = offscreen.getGraphics();
				og.setClip(0,0,getSize().width,getSize().height);
				paintBack(og);
				draw(og);
				super.paint(og);
				g.drawImage(offscreen,0,0,null);
				og.dispose();
			}
		}
	}

	abstract void draw(Graphics g);

	public void paintBack(Graphics g)
	{           
		int iw,ih,w = getSize().width,h = getSize().height;
		if(back!=null && (iw = back.getWidth(this))>0 && (ih = back.getHeight(this))>0){
			for(int x=0;x<w;x+=iw)for(int y=0;y<h;y+=ih)g.drawImage(back,x,y,this);
		}else{
			g.setColor(getBackground());
			g.fillRect(0,0,w,h);
			g.setColor(getForeground());
		}
	}

// ***************************************************************
	static Image back;
	
	public Image getBack()
	{
		return back;
	}
	
	public void setBack(URL imgurl)
	{
		Image img = null;
		MediaTracker track = new MediaTracker(this);
		try{
			track.addImage(img = getToolkit().getImage(imgurl),0);
			track.waitForID(0);
		}catch(InterruptedException e){}
		if(img.getWidth(this)>0 && img.getWidth(this)>0){
			back = img;
		}
	}

	public final static QComponent getQC(Question q,Attributes a)
	{
		try{
			QComponent qc = (QComponent)q.getType().newInstance();
			qc.setQandA(q,a);
			return qc;
		}catch(Exception exc){
			exc.printStackTrace();
			return null;
		}
	}

	public final static QComponent[] getQCArray(Question[] q,Attributes a)
	{
		QComponent[] qca = new QComponent[q.length];
		for(int i=0;i<q.length;i++){ qca[i] = getQC(q[i],a); }
		return qca;
	}

	public final static Panel getCardPanel(QComponent[] qca)
	{
		Panel p = new Panel(new CardLayout());
		for(int i=0;i<qca.length;i++){
			p.add(qca[i],String.valueOf(i));
		}
		return p;
	}

	public final static Vector getScore(QComponent[] qca)
	{
		int cor = 0;
		int att = 0;
		Vector v = new Vector(5);
		for(int i=0;i<qca.length;i++){
			if(qca[i].wasCorrect())cor++;
			if(qca[i].wasAttempted())att++;
		}
		v.addElement(new Integer(cor)); // Correct
		v.addElement(new Integer(att)); // Attempted
		v.addElement(new Integer(qca.length)); // Total
		v.addElement(new Double(Math.round(((double)cor/(double)(att>0?att:1))*1000.0)/10.0)); // Att%
		v.addElement(new Double(Math.round(((double)cor/(double)qca.length)*1000.0)/10.0)); // Tot %
		return v;
	}
	
	public final static boolean allAttempted(QComponent[] qca)
	{
		for(int i=0;i<qca.length;i++)if(!qca[i].wasAttempted())return false;
		return true;
	}
    /**
     * @return
     */
    public int getTries() {
        return this.mTries;
    }

    /**
     * @param i
     */
    public void incTries() {
        this.mTries++;
    }

}