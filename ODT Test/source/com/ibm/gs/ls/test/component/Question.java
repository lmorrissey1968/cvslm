package com.ibm.gs.ls.test.component;

import java.util.Vector;

public class Question
{
	String body,fb_cor="Correct",fb_inc="Incorrect",fb_rev="Incorrect - This is the correct answer";
	String link1,link2;
	Class type;
	Vector answers = new Vector(5,5);
	int correct = 0;
	
	public Question(Class type,String body,String link1,String link2)
	{
//		System.out.println(type);
		this.type = type;
		this.body = body;
		this.link1 = link1;
		this.link2 = link2;
	}
	
	public Question(Class type,String body)
	{
		this(type,body,"","");
	}

	public Question(String type,String body,String link1,String link2) throws ClassNotFoundException
	{
		this(Class.forName("com.ibm.gs.ls.test.component.QC_"+type),body,link1,link2);
	}

	public Question(String type,String body) throws ClassNotFoundException
	{
		this(type,body,"","");
	}
	
	public Class getType()
	{
		return this.type;
	}
	
	public String getBody()
	{
		return this.body;
	}
	
	public int numAnswers()
	{
		return answers.size();
	}
	
	public int numCorrect()
	{
		return this.correct;
	}
	
	public Answer getAnswer(int n)
	{
		return (Answer)answers.elementAt(n);
	}

	public String getLink1()
	{
		return this.link1;
	}

	public String getLink2()
	{
		return this.link2;
	}

	public void setFeedbackCOR(String cor)
	{
		this.fb_cor = cor;
	}

	public void setFeedbackINC(String inc)
	{
		this.fb_inc = inc;
	}

	public void setFeedbackREV(String rev)
	{
		this.fb_rev = rev;
	}

	public String getFeedbackCOR()
	{
		return this.fb_cor;
	}

	public String getFeedbackINC()
	{
		return this.fb_inc;
	}

	public String getFeedbackREV()
	{
		return this.fb_rev;
	}
	
	public void mixAnswers()
	{
		Answer[] a = new Answer[answers.size()];
		answers.copyInto(a);
		int seed = (int)(Math.random()*15);
		for(int i=0;i<seed;i++){
			rotate(a);
		}
		answers = new Vector(a.length);
		for(int j=0;j<a.length;j++)answers.addElement(a[j]);
	}
	
	void rotate(Answer[] a)
	{
		Answer first = a[0];
		for(int i=1;i<a.length;i++)a[i-1] = a[i];
		a[a.length-1] = first;
	}

	public void addAnswer(Answer a)
	{
		answers.addElement(a);
		if(a.isCorrect())correct++;
	}
	
	public void addAnswer(String answer,String feedback,boolean correct)
	{
		addAnswer(new Answer(answer,feedback,correct));
	}
	
	public void addAnswer(String answer,boolean correct)
	{
		addAnswer(answer,"",correct);
	}
	
	public void addAnswer(String answer,String feedback)
	{
		addAnswer(answer,feedback,true);
	}
	
	public String toString()
	{
		StringBuffer sb = new StringBuffer();
		String ts = this.type.getName().substring(this.type.getName().indexOf("QC_")+3);
		sb.append("@"+ts+"(\""+getBody()+"\",\""+getLink1()+"\")\n{\n");
		sb.append("\t@fb(\""+getFeedbackCOR()+"\",\""+getFeedbackINC()+"\",\""+getFeedbackREV()+"\")\n");
		for(int i=0;i<numAnswers();i++){
			sb.append("\t"+getAnswer(i).toString()+"\n");
		}
		sb.append("}");
		return sb.toString();
	}

//*******************************************************************
/*
	public static void main(String args[])
	{
		Question mQuestion = new Question(test.QC_Multi.class,"Test Question?");
		mQuestion.addAnswer("Correct Answer",true);
		mQuestion.addAnswer("Incorrect Answer 1",false);
		mQuestion.addAnswer("Incorrect Answer 2",false);
		mQuestion.addAnswer("3rd Incorrect Answer",false);
		System.out.println(mQuestion);
	}
*/
}