package com.ibm.gs.ls.odt.info;


import com.ibm.gs.ls.odt.utility.*;
import java.io.*;
import java.util.*;




public abstract class Info implements Serializable,CheckedStateIndicator
{
	// ***** Constants *****
	transient public final static String IND = "  ";

	// ***** class variables *****
	static int idc=1000;		// ID Counter;
	static Hashtable unique = new Hashtable();
	
	// ***** instance variables *****
	String name;				// Name that will appear in end-user navigation
	String id;					// unique ID used for referencing the Info object
	Info parent;				// Reference to the parent InfoLevel 
								// Orphan's parent is itself (i.e. ROOT is it's own parent)
								// Parent is set when added to an InfoLevel
	Hashtable flags;
								

	public abstract String getPath();
	public abstract String getDirectory();
	public abstract String toString();
	public abstract int getChildCount();

	public abstract boolean hasBeenUsed();
	public abstract String setUsedData(String bits);
	public abstract String getUsedData();

	abstract String getTreeString(String indent);

	public static void reset()
	{
		unique = new Hashtable();
	}

	public static Info getByID(String id)
	{
		return (Info)unique.get(id);
	}
	
	public Info(String name,String id)
	{
		this.name = name;
		this.id = id;
		this.parent = this;
		if(unique.containsKey(id)){
			int i = 0;
			String nid = id+"_"+i;
			while(unique.containsKey(nid)){
				i++;
				nid = id+"_"+i;
			}
			unique.put(nid,this);
			System.out.println("ID '"+id+"' already used - renamed to '"+nid+"'");
		}else{
			unique.put(id,this);
		}
	}

	public Info(String name)
	{
		this(name,"IO"+(idc++));
	}
	
	protected void setParent(Info io)
	{
		this.parent = io;
	}
	
	public Info getParent()
	{
		return this.parent;
	}
	
	public int getDepth()
	{
		int count = 0;
		Info io = this;
		while(io!=io.getParent()){
			count++;
			io = io.getParent();
		}
		return count;
		
	}

	public Info getPrevious()
	{
		Info[] x = ((InfoLevel)getParent()).getChildren();
		int i;
		for(i=0;i<x.length;i++){
			if(this==x[i])break;
		}
		if(i==0){
			return this;
		}else{
			return x[i-1];
		}
	}
	
	public Info getNext()
	{
		Info[] x = ((InfoLevel)getParent()).getChildren();
		int i;
		for(i=0;i<x.length;i++){
			if(this==x[i])break;
		}
		if(i==x.length-1){
			return this;
		}else{
			return x[i+1];
		}
	}

	public String getName()
	{
		return this.name;
	}

	public String getID()
	{
		return this.id;
	}
	
	public boolean isInfoLevel()
	{
		return this instanceof InfoLevel;
	}
	
	public boolean isContent()
	{
		return this instanceof Content;
	}

	public String setFlag(String name,String value)
	{
		if(flags==null) flags = new Hashtable();
		return (String)flags.put(name,value);
	}

	public void setFlags(String flaglist)
	{
		StringTokenizer st = new StringTokenizer(flaglist,",");
		while(st.hasMoreTokens()){
			String flag = st.nextToken();
			int eq = flag.indexOf("=");
			if(eq==-1){
				setFlag(flag,"");
			}else{
				setFlag(flag.substring(0,eq).trim(),flag.substring(eq+1).trim());
			}
		}
	}

	public String getFlag(String key)
	{
		if(flags==null || !flags.containsKey(key)){
			return "";
		}else{
			return (String)flags.get(key);
		}
	}

	public boolean isMenu()
	{
		return isInfoLevel() && flags.containsKey("submenu");
	}

	public boolean hasFlag(String key)
	{
		return flags!=null && flags.containsKey(key);
	}
	
	public Info getAncestorOrThis(String key)
	{
		Info io = this;
		while(!io.hasFlag(key)){
			if(io==io.getParent())return null;
			io = io.getParent();
		}
		return io;
	}

	public InfoLevel getAncestor(String key)
	{
		Info io = this.getParent();
		while(!io.hasFlag(key)){
			if(io==io.getParent())return null;
			io = io.getParent();
		}
		return (InfoLevel)io;
	}
}
