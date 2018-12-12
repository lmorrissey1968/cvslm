package com.ibm.gs.ls.odt.compiler;

import java.io.*;
import com.ibm.gs.ls.odt.info.*;


public class NavParser extends Parser
{

// ********************************************************************************
	InfoLevel root;

	public NavParser(Reader r,String sn)
	{
		super(r,sn);
		root = new InfoLevel("ROOT","ROOT");
		parse();
	}
	
	public NavParser(Reader r,String sn,InfoLevel il)
	{
		super(r,sn);
		root = il;
		parse();
	}
	
	void parse()
	{
		info(this.root);
	}

	public InfoLevel getInfoRoot()
	{
		return this.root;
	}

	void info(InfoLevel il)
	{
		while(true){
			if(nextToken()==null){
				if(il!=root)error("End of file not");
				break;
			}else if(tok.isDelim("}")){
				if(il==root)error(Token.MSG_TAG);
				scan.pushBack();
				break;
			}else if(tok.isIdentIC("@il")){
				infoLevel(il);
			}else if(tok.isIdentIC("@con")){
				content(il);
//			}else if(tok.isIdentIC("@stf")){
//				subtreefile(il);
			}else if(tok.isIdentIC("@path")){
				il.setPath(onestring());
			}else if(tok.isIdentIC("@fl")){
				il.setFlags(onestring());
			}else error(Token.MSG_TAG);
		}
	}
	
//------------------------------------------------------------------------
//    @stf(s,s)    @stf(s,s,@fl(s))    @stf(s,s,si)    @stf(s,s,si,@fl(s))
//------------------------------------------------------------------------
/*
	void subtreefile(InfoLevel il)
	{
		InfoLevel nil=null;
		String name=null,file=null,id=null,flags=null;
		if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
		if(nextToken().isString()){ name = tok.getData(); }else error(Token.MSG_SE);
		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
		if(nextToken().isString()){ file = tok.getData(); }else error(Token.MSG_SE);
		if(nextToken().isDelim(")")){
			nil = new InfoLevel(name);
		}else if(tok.isDelim(",")){
			if(nextToken().isIdent("@fl")){
				flags = onestring();
				if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
				nil = new InfoLevel(name);
			}else if(tok.isStringORIdent()){
				id = tok.getData(); 
				if(nextToken().isDelim(")")){
					nil = new InfoLevel(name,id);
				}else if(tok.isDelim(",")){
					if(nextToken().isIdent("@fl")){	flags = onestring(); }else error(Token.MSG_FE);
					if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
					nil = new InfoLevel(name,id);
				}
			}else error(Token.MSG_SIF);
		}else error(Token.MSG_CPC);

		nil.setPending(file);
		if(flags!=null)nil.setFlags(flags);
		il.add(nil);
	}
*/
//-----------------------------------------------------------------
//    @il(s)    @il(s,si)    @il(s,@fl(s))    @il(s,si,@fl(s))
//-----------------------------------------------------------------
	void infoLevel(InfoLevel il)
	{
		InfoLevel nil=null;
		String name=null,id=null,flags=null;
		if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
		if(nextToken().isString()){ name = tok.getData(); }else error(Token.MSG_SE);
		if(nextToken().isDelim(",")){
			if(nextToken().isIdent("@fl")){
				flags = onestring();
				if(nextToken().isDelim(")")){
				}else error(Token.MSG_CP);
				nil = new InfoLevel(name);
			}else if(tok.isStringORIdent()){
				id = tok.getData();
				if(nextToken().isDelim(",")){
					if(nextToken().isIdent("@fl")){
						flags = onestring();
						if(nextToken().isDelim(")")){
						}else error(Token.MSG_CP);
					}else error(Token.MSG_FE);
				}else if(tok.isDelim(")")){
				}else error(Token.MSG_CPC);
				nil = new InfoLevel(name,id);
			}else error(Token.MSG_SIF);
		}else if(tok.isDelim(")")){
			nil = new InfoLevel(name);
		}else error(Token.MSG_CPC);
	
		if(flags!=null)nil.setFlags(flags);
		il.add(nil);

		if(nextToken().isDelim("{")){
			info(nil);
			if(nextToken().isDelim("}")){}else error(Token.MSG_CB);
		}else error(Token.MSG_OB);
	}

//------------------------------------------------------------------------
//    @con(s,si)    @con(s,si,@fl(s))    @con(s,si,si)    @con(s,si,si,@fl(s))
//------------------------------------------------------------------------
	void content(InfoLevel il)
	{
		Content con=null;
		String name=null,link=null,id=null,flags=null;
		if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
		if(nextToken().isString()){ name = tok.getData(); }else error(Token.MSG_SE);
		if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
		if(nextToken().isStringORIdent()){ link = tok.getData(); }else error(Token.MSG_SI);
		if(nextToken().isDelim(")")){
			// new Content(2p)
			con = new Content(name,link);
		}else if(tok.isDelim(",")){
			if(nextToken().isIdent("@fl")){
				flags = onestring();
				if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
				// new Content(2p)+fl
				con = new Content(name,link);
			}else if(tok.isStringORIdent()){
				id = tok.getData(); 
				if(nextToken().isDelim(")")){
					// new Content(3p)
					con = new Content(name,link,id);
				}else if(tok.isDelim(",")){
					if(nextToken().isIdent("@fl")){	flags = onestring(); }else error(Token.MSG_FE);
					if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
					// new Content(3p)+fl
					con = new Content(name,link,id);
				}
			}else error(Token.MSG_SIF);
		}else error(Token.MSG_CPC);

		if(flags!=null)con.setFlags(flags);
		il.add(con);

		if(nextToken().isDelim("{")){
			indexItems(con);
			if(nextToken().isDelim("}")){}else error(Token.MSG_CB);
		}else{
			scan.pushBack();
		}
	}

	void indexItems(Content c)
	{
		if(nextToken().isIdent("@idx")){}else error("'@idx'");
		if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
		if(nextToken().isDelim(")")){
			c.addIndexItem();
		}else if(tok.isString()){
			String name = tok.getData();
			if(nextToken().isDelim(",")){}else error(Token.MSG_CE);
			if(nextToken().isString()){ c.addIndexItem(name,tok.getData()); }else error(Token.MSG_SE);
			if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
		}else error("')' or String");

		if(nextToken().isIdent("@idx")){
			scan.pushBack();
			indexItems(c);
		}else{
			scan.pushBack();
		}
	}

	String onestring()
	{
		String flags = null;
		if(nextToken().isDelim("(")){}else error(Token.MSG_OP);
		if(nextToken().isString()){ flags = tok.getData(); }else error(Token.MSG_SE);
		if(nextToken().isDelim(")")){}else error(Token.MSG_CP);
		return flags;
	}
}