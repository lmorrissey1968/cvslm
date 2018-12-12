package com.ibm.gs.ls.odt.compiler;

import java.io.*;

public abstract class Parser
{
	String src;
	Scanner scan;
	Token tok;

	public Parser(){}

	public Parser(Reader r,String src)
	{
		scan = new Scanner(r);
		this.src = src;
	}
	
	abstract void parse();

	Token nextToken()
	{
		return tok = scan.nextToken();
	}

	void error(String x)
	{
		scan.error(x,"expected",src);
	}

	void error2(String x)
	{
		scan.error(x,"",src);
	}
}
