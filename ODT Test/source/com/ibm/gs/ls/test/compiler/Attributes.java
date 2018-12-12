package com.ibm.gs.ls.test.compiler;

import java.awt.Color;
import java.awt.Font;
import java.io.Reader;
import java.util.Hashtable;

public class Attributes extends Parser
{
	Hashtable obj = new Hashtable();

	public Attributes(){}

	public Attributes(Reader r,String sn)
	{
		super(r,sn);
		parse();
	}
	
	public double getDouble(String aKey,double aDefault) {
		try{
			return Double.parseDouble(obj.get(aKey).toString());
		}catch(NumberFormatException exc){
			return aDefault;
		}
	}
	
	public Double getDouble(String aKey,Double aDefault) {
		try{
			return new Double(obj.get(aKey).toString());
		}catch(NumberFormatException exc){
			return aDefault;
		}
	}

	public Color getColor(String key,Color def) {
		Object o = obj.get(key);
		return (o instanceof Color)?(Color)o:def;
	}

	public Font getFont(String key,Font def) {
		Object o = obj.get(key);
		return (o instanceof Font)?(Font)o:def;
	}

	public String getString(String key,String def) {
		Object o = obj.get(key);
		return (o instanceof String)?(String)o:def;
	}

	void parse() {
		while(nextToken()!=null){
			if(tok.isIdentIC("@color")){
				color();
			}else if(tok.isIdentIC("@font")){
				font();
			}else if(tok.isIdentIC("@var")){
				var();
			}else error("@Colr OR @Font");
		}
	}

	void color()
	{
		String key="";
		int r=0,g=0,b=0;
		if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
		if(nextToken().isIdent()){ key = tok.getData(); }else error(Token.MSG_IE);
		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
		if(nextToken().isInteger()){ r = tok.getValue(); }else error(Token.MSG_IE);
		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
		if(nextToken().isInteger()){ g = tok.getValue(); }else error(Token.MSG_IE);
		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
		if(nextToken().isInteger()){ b = tok.getValue(); }else error(Token.MSG_IE);
		if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
		if(obj.put(key,new Color(r,g,b))!=null)error2("Object '"+key+"' already defined");
	}

	void var()
	{
		String key="",value="";
		if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
		if(nextToken().isIdent()){ key = tok.getData(); }else error(Token.MSG_ID);
		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
		if(nextToken().isString()){ value = tok.getData(); }else error(Token.MSG_SE);
		if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
		if(obj.put(key,value)!=null)error2("Object '"+key+"' already defined");
	}

	void font()
	{
		String key="",font="";
		int style=Font.PLAIN,size=12;
		if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
		if(nextToken().isIdent()){ key = tok.getData(); }else error(Token.MSG_ID);
		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
		if(nextToken().isString()){ font = tok.getData(); }else error(Token.MSG_SE);
		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);

		if(nextToken().isIdent("PLAIN")){
			style = Font.PLAIN;
		}else if(tok.isIdent("BOLD")){
			style = Font.BOLD;
		}else if(tok.isIdent("ITALIC")){
			style = Font.ITALIC;
		}else if(tok.isIdent("BOLD_ITALIC")){
			style = Font.BOLD+Font.ITALIC;
		}else error("PLAIN, BOLD, ITALIC or BOLD_ITALIC");

		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
		if(nextToken().isInteger()){ size = tok.getValue(); }else error(Token.MSG_IE);
		if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
		if(obj.put(key,new Font(font,style,size))!=null)error2("Object '"+key+"' already defined");;
	}
}
