package com.ibm.gs.ls.test.component;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;

import com.ibm.gs.ls.test.awt.WWCheckbox;
import com.ibm.gs.ls.test.awt.WWGroup;
import com.ibm.gs.ls.test.awt.WWLabel;
import com.ibm.gs.ls.test.compiler.Attributes;

public class QC_Multi extends QComponent implements ActionListener
{
	ACheck c[];

	public QC_Multi()
	{
		super();
	}

	public void setQandA(Question q,Attributes a)
    {
    	super.setQandA(q,a);
		setLayout(new QuestionLayout().setMargins(8,8,2,0));
    	WWLabel qbod = new WWLabel(q.getBody());
    	qbod.setFont(at.getFont("qbody",new Font("Helvetica",Font.PLAIN,16)));
    	feed.setFont(at.getFont("feed",new Font("Helvetica",Font.PLAIN,12)));
    
        add("Body",qbod);
    	add("Feed",feed);
    
    	c = new ACheck[q.numAnswers()];

		Font af = at.getFont("answer",new Font("Helvetica",Font.PLAIN,12));
		WWGroup wwg = new WWGroup();
        for(int i=0;i<q.numAnswers();i++){
        	c[i] = new ACheck(q.getAnswer(i));
        	c[i].setFeedbackReceiver(this);
        	c[i].setFont(af);
        	c[i].addActionListener(this);
			if(q.numCorrect()==1)c[i].setGroup(wwg);
  			add("Answer",c[i]);
        }
    }

	void draw(Graphics g){}

	public void actionPerformed(ActionEvent e)
	{
		touch();
	}

	public boolean isCorrect()
	{
		this.attempted = true;
		boolean all = true;
		for(int i=0;i<c.length;i++){
			if(c[i].getState() && !c[i].isCorrect()){
				c[i].setMarked(	true,
								at.getColor("b_mark_inc",Color.red),
								at.getColor("f_mark_inc",Color.white)
				);
				all = false;
			}else if(!c[i].getState() && c[i].isCorrect()){
				all = false;
			}else{
				c[i].setMarked(false,null,null);
			}
		}
		if(!all && mQuestion.numCorrect()>1)for(int i=0;i<c.length;i++)if(c[i].getState() && c[i].isCorrect()){
			c[i].setMarked(	true,
							at.getColor("b_mark_cor",Color.cyan),
							at.getColor("f_mark_cor",Color.blue)
			);
			all = false;
		}
		this.correct = all;
		return super.isCorrect();
	}

	void showCorrect()
	{
		for(int i=0;i<c.length;i++){
			c[i].setOpaque(false);
			c[i].setEnabled(false);
			c[i].setLolight(!c[i].isCorrect());
			c[i].setState(c[i].isCorrect());
		}
	}

// ------ Internal class to combine Answer and WWCheckbox ------

	class ACheck extends WWCheckbox
	{
		Answer a;
		QComponent qc;
		boolean marked = false;
		String mem;
		Color memB,memF;

		public ACheck(Answer a)
		{
			super(a.getAnswer());
			this.a = a;
		}
	
		public void setFeedbackReceiver(QComponent qc)
		{
			this.qc = qc;
		}
	
        public void mouseEntered(MouseEvent evt)
		{
			super.mouseEntered(evt);
			if(isEnabled() && marked && qc!=null){
				mem = qc.getFBDisplay().getText();
				memF = qc.getFBDisplay().getForeground();
				memB = qc.getFBDisplay().getBackground();
				qc.showFeedback(a.getFeedback(),getBackground(),getForeground());
			}
		}
	
		public void mouseExited(MouseEvent evt)
		{
			super.mouseExited(evt);
			if(isEnabled() && marked && qc!=null){
				qc.showFeedback(mem,memB,memF);
			}
		}
	
		public void setMarked(boolean b,Color bc,Color fc)
		{
			setOpaque(this.marked = b);
			setForeground(b?fc:defF);
			setBackground(b?bc:defB);
		}
	
		public boolean isMarked()
		{
			return this.marked;
		}

		public String getFeedback()
		{
			return a.getFeedback();
		}
		
		public String getAnswer()
		{
			return a.getAnswer();
		}

		public boolean isCorrect()
		{
			return a.isCorrect();
		}
	}
}