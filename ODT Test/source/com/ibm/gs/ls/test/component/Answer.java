package com.ibm.gs.ls.test.component;

public class Answer
{
	String answer;
	String feedback;
	boolean correct;
	
	public Answer(String answer,String feedback,boolean correct)
	{
		this.answer	= answer;
		this.feedback	= feedback;
		this.correct	= correct;
	}
	
	public String getAnswer()
	{
		return this.answer;
	}
	
	public String getFeedback()
	{
		return this.feedback;
	}
	
	public boolean isCorrect()
	{
		return this.correct;
	}

	public String toString()
	{
		return "@a("+(this.correct?"1":"0")+",\""+this.answer+"\",\""+this.feedback+"\")";
	}
}