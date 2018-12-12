package com.ibm.gs.ls.test;

import java.applet.Applet;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.InputStreamReader;
import java.net.URL;

import com.ibm.gs.ls.test.compiler.Attributes;
import com.ibm.gs.ls.test.compiler.TestParser;
import com.ibm.gs.ls.test.component.QComponent;

public class SingleQ extends Applet implements ActionListener
{
	Attributes at;
	QComponent q;
	Button chk;
	
	int tries = 0,maxtries = 0;

	public void init()
	{
		try{
			URL qfu = new URL(getDocumentBase(),getParameter("questfile"));
			URL atu = new URL(getDocumentBase(),getParameter("attrfile"));
			at = new Attributes(new InputStreamReader(atu.openStream()),atu.toString());
			TestParser tp = new TestParser(new InputStreamReader(qfu.openStream()),qfu.toString());
			setLayout(new BorderLayout());
			add("Center",q=QComponent.getQC(tp.getQuestion(0),at));
			add("South",chk = new Button("Check Answer"));
			chk.addActionListener(this);

			if(getParameter("bkimage")!=null){
				q.setBack(new URL(getDocumentBase(),getParameter("bkimage")));
			}
			
			if(getParameter("maxtries")!=null)try{
				maxtries = Integer.parseInt(getParameter("maxtries"));
			}catch(NumberFormatException nfe){
				maxtries = 0;
			}
		}catch(Exception exc){}
	}
	
	public void grade()
	{
		if(q.isCorrect()){
			q.showFeedback(	q.getQuestion().getFeedbackCOR(),
							at.getColor("b_feed_cor",Color.blue),
							at.getColor("f_feed_cor",Color.yellow)
			);
		}else{
			if(maxtries>0 && ++tries>=maxtries){
				q.reveal();
				q.showFeedback(	q.getQuestion().getFeedbackREV(),
								at.getColor("b_feed_rev",Color.cyan),
								at.getColor("f_feed_rev",Color.blue)
				);
				chk.setEnabled(false);
			}else{
				q.showFeedback(	q.getQuestion().getFeedbackINC(),
								at.getColor("b_feed_inc",Color.red),
								at.getColor("f_feed_inc",Color.white)
				);
			}
		}

	}
	
	public void actionPerformed(ActionEvent e)
	{
		if(e.getSource() instanceof Button){
			grade();
		}
	}

	
}