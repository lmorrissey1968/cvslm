package com.ibm.gs.ls.test.compiler;

public class Token
{
	char type;
	String data;
	int number;

	public static final String MSG_IE = "Integer";
	public static final String MSG_ID = "Identifier";
	public static final String MSG_SE = "String";
	public static final String MSG_SI = "String or Identifier";
	public static final String MSG_FE = "'@fl'";
	public static final String MSG_CE = "','";
	public static final String MSG_OP = "'('";
	public static final String MSG_CP = "')'";
	public static final String MSG_OB = "'{'";
	public static final String MSG_CB = "'}'";
	public static final String MSG_CPC = "',' or ')'";
	public static final String MSG_SIF = "String, Identifier or '@fl'";
	public static final String MSG_TAG = "'@fl', '@path', '@con' or '@il'";
	
	public Token(char type,String data)
	{
		this.type = type;
		this.data = data;
	}

	public boolean isIdent()
	{
		return this.type=='i';
	}

	public boolean isIdent(String x)
	{
		return this.type=='i' && this.data.equals(x);
	}

	public boolean isIdentIC(String x)
	{
		return this.type=='i' && this.data.equalsIgnoreCase(x);
	}

	public boolean isIdentStarting(String x)
	{
		return this.type=='i' && this.data.startsWith(x);
	}

	public boolean isStringORIdent()
	{
		return this.type=='s' || this.type=='i';
	}
	
	public boolean isString()
	{
		return this.type=='s';
	}

	public boolean isInteger()
	{
		if(this.type=='i'){
			try{
				this.number = Integer.parseInt(this.data);
				return true;
			}catch(NumberFormatException nfe){
				return false;
			}
		}
		return false;
	}

	public boolean isDelim()
	{
		return this.type=='d';
	}

	public boolean isDelim(String x)
	{
		return this.type=='d' && this.data.equals(x);
	}

	public String getData()
	{
		return this.data;
	}

	public int getValue()
	{
		return this.number;
	}

	public String toString()
	{
		return this.type+":"+this.data;
	}
}
