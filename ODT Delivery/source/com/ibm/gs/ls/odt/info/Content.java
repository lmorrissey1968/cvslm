package com.ibm.gs.ls.odt.info;

import java.util.*;

public class Content extends Info
{
	// ***** instance variables *****
	boolean		used = false;
	String		html;		// Name that will appear in end-user navigation
	Vector		idx = null;	// Index

	
//	void con_common(){}

	public Content(String name,String html,String id)
	{
		super(name,id);
		this.html = html;
//		con_common();
	}

	public Content(String name,String html)
	{
		super(name);
		this.html = html;
//		con_common();
	}
	
	public void addIndexItem()
	{
		if(idx==null)idx = new Vector(10,10);
		idx.addElement(new IndexItem(this,getName(),""));
	}
	
	public void addIndexItem(String name,String bookmark)
	{
		if(idx==null)idx = new Vector(10,10);
		idx.addElement(new IndexItem(this,name,bookmark));
	}
	
	public Vector getIndexItems()
	{
		return idx;
	}
	
	public String setUsedData(String bits)
	{
		if(bits.length()>0){
			this.used = bits.charAt(0)=='1';
			return bits.substring(1);
		}else{
			return "";
		}
	}
	
	public String getUsedData()
	{
		return this.used?"1":"0";
	}

	public boolean hasBeenUsed()
	{
		return this.used;
	}
	
	public boolean isChecked()
	{
		return hasBeenUsed();
	}
	
	public void use()
	{
		this.used = true;
	}

	public void use(boolean usage)
	{
		this.used = usage;
	}

	public String getDirectory()
	{
		return getPath().substring(0,getPath().lastIndexOf("/")+1);
	}
	
	public String getPath()
	{
		if(this.html.toLowerCase().startsWith("http:")){
			return this.html;
		}else{
			return ((InfoLevel)getParent()).getPath()+this.html;
		}
	}

	public String toString()
	{
		return "@con(\""+getName()+"\","+html+")";
	}
	
	String getTreeString(String indent)
	{
		return indent+toString()+"\n";
	}

	public int getChildCount()
	{
		return -1;
	}
}
