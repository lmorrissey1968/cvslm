package com.ibm.gs.ls.test.component;

import java.awt.Color;
import java.awt.Container;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.GridBagLayout;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.ibm.gs.ls.test.awt.WWButton;
import com.ibm.gs.ls.test.awt.WWLabel;
import com.ibm.gs.ls.test.compiler.Attributes;

public class QC_Match extends QComponent implements ActionListener
{
	Connection l[],r[],anchor;
	Container cp;
	GridBagLayout gbl;
	Image db;

	public QC_Match()
	{
		super();
	}

	public void setQandA(Question q,Attributes a)
    {
		super.setQandA(q,a);
		setLayout(new QuestionLayout(80).setMargins(8,8,2,0));
		WWLabel qbod = new WWLabel(q.getBody());
		qbod.setFont(at.getFont("qbody",new Font("Helvetica",Font.PLAIN,16)));
		feed.setFont(at.getFont("feed",new Font("Helvetica",Font.PLAIN,12)));
		
		add("Body",qbod);
		add("Feed",feed);

		l = new Connection[q.numAnswers()];
		r = new Connection[q.numAnswers()];

		Font af = at.getFont("answer",new Font("Helvetica",Font.PLAIN,12));
		Color def_b = at.getColor("b_def_match",Color.lightGray);
		Color def_f = at.getColor("f_def_match",Color.black);
		for(int i=0;i<q.numAnswers();i++){
		    	Answer ai = q.getAnswer(i);
		    	l[i]=new Connection(ai.getAnswer(),200,ai);l[i].setLeft(true);
		    	r[i]=new Connection(ai.getFeedback(),200,ai);r[i].setLeft(false);
		    	l[i].addActionListener(this);
		    	r[i].addActionListener(this);
			l[i].setFont(af); l[i].setBackground(def_b); l[i].setForeground(def_f);
			r[i].setFont(af); r[i].setBackground(def_b); r[i].setForeground(def_f);
		}
		
		for(int i=0;i<(int)(q.numAnswers()*13*Math.random());i++){
//			swap(l,(int)(mQuestion.numAnswers()*Math.random()),(int)(mQuestion.numAnswers()*Math.random()));
			swap(r,(int)(q.numAnswers()*Math.random()),(int)(q.numAnswers()*Math.random()));
		}

		for(int i=0;i<q.numAnswers();i++){
	    	add("Left",l[i]);
			add("Right",r[i]);
		}
	}

	void draw(Graphics g)
	{
		for(int i=0;i<l.length;i++){
			if(l[i].isConnected()){
				Rectangle bl = l[i].getBounds();
				Rectangle br = l[i].getConnection().getBounds();
				int x1 = bl.x + bl.width;
				int y1 = bl.y + bl.height/2;
				int x2 = br.x;
				int y2 = br.y + br.height/2;
				g.drawLine(x1,y1,x2,y2);
			}
		}
	}

	void swap(Object[] x,int a,int b)
	{
		Object tmp = x[a];
		x[a] = x[b];
		x[b] = tmp;
	}

	public boolean isCorrect()
	{
		this.attempted = true;
		boolean all = true;
		for(int i=0;i<l.length;i++){
			if(l[i].getConnection()==null || l[i].getAnswer()!=l[i].getConnection().getAnswer()){
				l[i].mark();
				all=false;
			}else{
				l[i].markC();
			}
			if(r[i].getConnection()==null || r[i].getAnswer()!=r[i].getConnection().getAnswer()){
				r[i].mark();
				all=false;
			}else{
				r[i].markC();
			}
		}
		this.correct = all;
		return super.isCorrect();
	}

	void showCorrect()
	{
		for(int il=0;il<l.length;il++)for(int ir=0;ir<r.length;ir++){
			if(l[il].getAnswer()==r[ir].getAnswer()){
				l[il].setConnection(r[ir]);
				l[il].setEnabled(false);
				r[ir].setEnabled(false);
			}
		}
		repaint();
	}

	public void actionPerformed(ActionEvent e)
	{
		if(e.getSource() instanceof Connection){
			touch();
			Connection cur = (Connection)e.getSource();
			if(anchor==null){
				anchor = cur;
				anchor.hilite(true);
			}else{
				if((anchor.isLeft() && cur.isRight())||(anchor.isRight() && cur.isLeft())){
					cur.setConnection(anchor);
					anchor=null;
				}else{
					anchor.hilite(false);
					anchor=cur;
					anchor.hilite(true);
				}
			}		
		}
	}

	class Connection extends WWButton
	{
		Answer a;
		Connection c;
		boolean left = true;
		
		public Connection(String label,int fw,Answer a)
		{
			super(label,fw);
			this.setBackground(Color.lightGray);
			this.setMinLines(2);
			this.a = a;
		}
		
		public Answer getAnswer()
		{
			return this.a;
		}
		
		public void setConnection(Connection c)
		{
			clearConnection();
			c.clearConnection();
			this.c = c;
			c.c=this;

			this.setForeground(defF);
			c.setForeground(defF);

			this.setBackground(Color.white);
			c.setBackground(Color.white);
		}
	
		public boolean isLeft()
		{
			return this.left;
		}

		public boolean isRight()
		{
			return !this.left;
		}

		public void setLeft(boolean left)
		{
			this.left = left;
		}
		
		public void clearConnection()
		{
			if(this.c!=null){
				this.setForeground(defF);
				this.setBackground(defB);
				this.c.setForeground(defF);
				this.c.setBackground(defB);
				this.c.c = null;
				this.c = null;
			}
		}
		
		public boolean isConnected()
		{
			return (this.c!=null);
		}
		
		public Connection getConnection()
		{
			return this.c;
		}
		
		public void hilite(boolean on)
		{
			setBackground(on?at.getColor("b_hilite",Color.pink) :(isConnected()?Color.white:defB));
			setForeground(on?at.getColor("f_hilite",Color.black):(isConnected()?Color.black:defF));
		}
		
		public void mark()
		{
			setBackground(at.getColor("b_mark_inc",Color.red));
			setForeground(at.getColor("f_mark_inc",Color.white));
		}
	
		public void markC()
		{
			setBackground(at.getColor("b_mark_cor",Color.cyan));
			setForeground(at.getColor("f_mark_cor",Color.blue));
		}
	}
}