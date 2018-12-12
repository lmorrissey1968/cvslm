package com.ibm.gs.ls.test.compiler;

import java.io.Reader;
import java.util.Vector;

import com.ibm.gs.ls.test.component.Question;

public class TestParser extends Parser
{

// ********************************************************************************
/*	public static void main(String[] args) throws Exception
	{
		Question[] qa = new TestParser(new FileReader(args[0])).getTest();
		for(int i=0;i<qa.length;i++)System.out.println(qa[i]);
	}
*/
// ********************************************************************************

	Vector test = new Vector(10,5);

	public TestParser(Reader r,String sn)
	{
		super(r,sn);
		parse();
	}

	public Question[] getTest()
	{
		Question[] qa = new Question[test.size()];
		test.copyInto(qa);
		return qa;
	}
	
	public Question getQuestion(int i)
	{
		return getTest()[i];
	}

	void parse()
	{
		while(nextToken()!=null){
			if(tok.isIdentStarting("@")){
				question(); 
			}else error("@<qtype>");
		}
	}
	
	void question()
	{
		String type = tok.getData().substring(1);
		String body="",id="",anchor="";
	
		if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
		if(nextToken().isString()){ body = tok.getData(); }else error(Token.MSG_SE);
		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
		if(nextToken().isStringORIdent()){ id = tok.getData(); }else error(Token.MSG_SE);
		if(nextToken().isDelim(",")){
			if(nextToken().isString()){ anchor = tok.getData(); }else error(Token.MSG_SE);
			if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
		}else if(tok.isDelim(")")){}else error(Token.MSG_CPC);

		try{
			Question q = new Question(type,body,id,anchor);
			test.addElement(q);
			if(nextToken().isDelim("{")){}else error(Token.MSG_OB);
			feedback(q);
			answers(q);
			if(nextToken().isDelim("}")){}else error(Token.MSG_CB);
		}catch(ClassNotFoundException cnf){ error("@"+type+" undefined: Valid @<qtype>"); }

	}

	void feedback(Question q)
	{
		if(nextToken().isIdentIC("@fb")){
			if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
			if(nextToken().isString()){ q.setFeedbackCOR(tok.getData()); }else error(Token.MSG_SE);
			if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
			if(nextToken().isString()){ q.setFeedbackINC(tok.getData()); }else error(Token.MSG_SE);
			if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
			if(nextToken().isString()){ q.setFeedbackREV(tok.getData()); }else error(Token.MSG_SE);
			if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
		}else{
			scan.pushBack();
		}
	}

	void answers(Question q)
	{
		while(!nextToken().isDelim("}")){
			if(tok.isIdentIC("@a")){}else error("'@a'");
			String ans="",feed="";boolean cor = false;
			if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
			if(nextToken().isStringORIdent()){ cor = tok.getData().equals("1"); }else error(Token.MSG_SI);
			if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
			if(nextToken().isString()){ ans = tok.getData(); }else error(Token.MSG_SE);
			if(nextToken().isDelim(",")){
				if(nextToken().isString()){ feed = tok.getData(); }else error(Token.MSG_SE);
				if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
			}else if(tok.isDelim(")")){}else error(Token.MSG_CPC);
			q.addAnswer(ans,feed,cor);
		}
		scan.pushBack();
	}
}