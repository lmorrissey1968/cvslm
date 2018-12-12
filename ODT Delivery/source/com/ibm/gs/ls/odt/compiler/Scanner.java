package com.ibm.gs.ls.odt.compiler;

import java.util.*;
import java.io.*;
import java.awt.*;
import java.awt.event.*;

public class Scanner implements WindowListener
{
	String lastLine="";
	StreamTokenizer toks;
	Token t;
	boolean living = true;

	Vector v = new Vector(10,10);
	int curline=0;
	
	public Scanner(Reader r)
	{
		toks = new StreamTokenizer(r);
		toks.resetSyntax();
		toks.eolIsSignificant(false);
		toks.slashStarComments(true);
		toks.slashSlashComments(true);
//		toks.parseNumbers();
		toks.wordChars('0', '9');
		toks.wordChars('a', 'z');
		toks.wordChars('A', 'Z');
		toks.wordChars('_', '_');
		toks.wordChars('$', '$');
		toks.wordChars('@', '@');
		toks.wordChars('.', '.');
		toks.quoteChar('"');             // " is quoted string delimiter
		toks.whitespaceChars(0, ' ');
//		toks.lowerCaseMode(true);        // turn tokens to lowercase
	}

	public int getLineNum()
	{
		return toks.lineno();
	}

	String makeLine(Vector vec)
	{
		StringBuffer sb = new StringBuffer();
		for(int i=0;i<vec.size();i++)sb.append(vec.elementAt(i));
		return sb.toString();
	}

	public String getLine()
	{
		return lastLine+makeLine(v)+"<--";
	}

	public void pushBack()
	{
		toks.pushBack();
		v.setSize(v.size()-1);
	}

	public Token nextToken()
	{
		Token t = null;
		if(living)try{
			int c=toks.nextToken();
			if(c!=StreamTokenizer.TT_EOF){
				if(c==StreamTokenizer.TT_NUMBER){
					t = new Token('n',""+toks.nval);
				}else if(c==StreamTokenizer.TT_WORD){
					t = new Token('i',toks.sval);
				}else if(c=='"'||c=='\''){
					t = new Token('s',toks.sval);
				}else{
					t = new Token('d',""+(char)c);
				}

				if(toks.lineno()!=curline){
					lastLine = makeLine(v)+"\n";
					v.setSize(0);
					curline = toks.lineno();
				}
				v.addElement(t.isString()?"\""+t.getData()+"\"":t.getData());
			}
		}catch(IOException ioe){}
		return t;
	}

	Frame f;

	public void error(String x,String y,String s)
	{
		if(living){
			living = false;
			String msg = "Error at line "+getLineNum()+": "+x+" "+y+"\n"+getLine();
			TextArea t = new TextArea(msg);
			t.setFont(new Font("Courier",Font.PLAIN,12));
			f = new Frame("Source File: "+s);
			f.setLayout(new BorderLayout());
			f.add("Center",t);
			f.setSize(600,200);
			f.setResizable(false);
			f.addWindowListener(this);
			f.show();
		}
	}

	public void windowClosing(WindowEvent e)
	{
		f.dispose();
		try{ System.exit(0); }catch(Exception exc){}
	}	
	public void windowOpened(WindowEvent e){}
	public void windowClosed(WindowEvent e){}
	public void windowIconified(WindowEvent e){}
	public void windowDeiconified(WindowEvent e){}
	public void windowActivated(WindowEvent e){}
	public void windowDeactivated(WindowEvent e){}	
}
