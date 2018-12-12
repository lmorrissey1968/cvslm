package com.ibm.gs.ls.odt.info;

import com.ibm.gs.ls.odt.utility.*;
import java.util.*;

public class InfoLevel extends Info
{
	// ***** instance variables *****
	private Vector v;		// Used to contain children Info objects (InfoLevel or Content)
	private String path;	// Path of Info objects in this InfoLevel (relative to parent or absolute)	
	private transient Vector cs;
	
//	boolean pendingLoad = false;
//	String pendingFileName;

	void con_common()
	{
		setPath("");
	}

	public InfoLevel(String name,String id)
	{
		super(name,id);
		con_common();
	}

	public InfoLevel(String name)
	{
		super(name);
		con_common();
	}
/*	
	public void setPending(String name)
	{
		this.pendingLoad = true;
		this.pendingFileName = name;
	}
	
	public void clearPending()
	{
		this.pendingLoad = false;
	}
*/	
	public String setUsedData(String bits)
	{
		if(v!=null){
			for(Enumeration e = v.elements();e.hasMoreElements();){
				Info io = (Info)e.nextElement();
				bits = io.setUsedData(bits);
			}
		}
		return bits;
	}
	
	public String getUsedData()
	{
		if(v!=null){
			StringBuffer sb = new StringBuffer("");
			for(Enumeration e = v.elements();e.hasMoreElements();){
				Info io = (Info)e.nextElement();
				sb.append(io.getUsedData());
			}
			return sb.toString();
		}
		return "";
	}
		
	public void add(Info io)
	{
		if(io!=null){
			if(v==null) v = new Vector(10,10);
			v.addElement(io);
			io.setParent(this);
		}
	}
	
	public Info getChild(int n)
	{
		return v==null?null:(Info)v.elementAt(n);
	}
	
	public int getChildCount()
	{
		return v==null?0:v.size();
	}
	
// --------------------------------------------------------
// - BEGIN: Content Sequence API
// --------------------------------------------------------

	public Info getContentSequenceItem(String html)
	{
		Vector csv = getContentSequence();
		for(int i=0;i<csv.size();i++){
			Info io = (Info)csv.elementAt(i);
			if(io.isContent()&&((Content)io).html.equals(html))return io;
		}
		return null;
	}

	public Info getContentSequenceItem(int n)
	{
		return (Info)getContentSequence().elementAt(n);
	}

	public Info getContentSequenceNext(Info i)
	{
		return (getContentSequence().indexOf(i)<cs.size()-1)?(Info)cs.elementAt(cs.indexOf(i)+1):null;
	}

	public Vector getContentSequence()
	{
		if(cs==null){
			buildCS(cs = new Vector(10,5)); 
		}
		return cs;
	}

	void buildCS(Vector cv)
	{
		if(v!=null){
			for(Enumeration e = v.elements();e.hasMoreElements();){
				Info io = (Info)e.nextElement();
				if(io instanceof InfoLevel){
					if(!io.getFlag("submenu").equals("")){
						cv.addElement(io);
					}else{
						((InfoLevel)io).buildCS(cv);
					}
				}else if(io instanceof Content){
					cv.addElement(io);
				}
			}
		}
	}

// --------------------------------------------------------
// - END: Content Sequence API
// --------------------------------------------------------

	public IndexItem[] getIndexItemArray()
	{
		Vector iv = new Vector(10,10);
		indexItems(iv);
		IndexItem[] ia = new IndexItem[iv.size()];
		iv.copyInto(ia);
		Sort.sort(ia);
		return ia;
	}

	void indexItems(Vector iv)
	{
		if(v!=null){
			for(Enumeration e = v.elements();e.hasMoreElements();){
				Info io = (Info)e.nextElement();
				if(io instanceof InfoLevel){
					((InfoLevel)io).indexItems(iv);
				}
				else if(io instanceof Content){
					Content c = (Content)io;
					Vector idx = c.getIndexItems();
					if(idx!=null){
						for(Enumeration ie = idx.elements();ie.hasMoreElements();){
							iv.addElement(ie.nextElement());
						}
					}
				}
			}
		}
	}
	
	public void setPath(String path)
	{
		StringBuffer sb = new StringBuffer("");
		StringTokenizer st = new StringTokenizer(path,"\\");
		while(st.hasMoreTokens()){ sb.append(st.nextToken()+"/"); }
		String p = sb.toString().trim();
		if(p.length()>0){
			this.path = sb.toString();
		}
		else{
			this.path = "";
		}
	}
	
	public String getPathOffset()
	{
		return this.path;
	}

	public String getDirectory()
	{
		return getPath();
	}
	
	public String getPath()
	{
		if(getParent()==this){
			return getPathOffset();
		}
		else{
			InfoLevel p = this;
			StringBuffer sb = new StringBuffer();
			sb.append(getPathOffset());
			do{
				p = (InfoLevel)p.getParent();
				sb.insert(0,p.getPathOffset());
			}while(p != p.getParent());
			return sb.toString();
		}
	}
	
	public boolean hasBeenUsed()
	{
		if(v!=null){
			boolean state = true;
			for(Enumeration e = v.elements();e.hasMoreElements();){
				Info io = (Info)e.nextElement();
				state = state && io.hasBeenUsed();
			}
			return state;
		}
		return false;
	}
	
	public boolean isChecked()
	{
		return hasBeenUsed();
	}
	
	public Info[] getChildren()
	{
		if(v!=null){
			Info[] rv = new Info[v.size()];
			v.copyInto(rv);
			return rv;
		}
		return null;
	}
	
	public String[] getInfoIDs()
	{
		if(v!=null){
			int i=0;
			String[] rv = new String[v.size()];
			for (Enumeration e = v.elements();e.hasMoreElements();){
				rv[i++] = ((Info)e.nextElement()).getID();
			}
			return rv;
		}
		return null;
	}

	public String[] getInfoNames()
	{
		if(v!=null){
			int i=0;
			String[] rv = new String[v.size()];
			for (Enumeration e = v.elements();e.hasMoreElements();){
				rv[i++] = ((Info)e.nextElement()).getName();
			}
			return rv;
		}
		return null;
	}
	
	public String toString()
	{
		return getTreeString("");
	}

	String getTreeString(String indent)
	{
		StringBuffer sb = new StringBuffer();
		sb.append(indent+"@il(\""+getName()+"\","+getPath()+")\n"+indent+"{\n");
		if(v!=null){
			Enumeration e = v.elements();
			while(e.hasMoreElements()){
				sb.append(((Info)e.nextElement()).getTreeString(indent+IND));
			}
		}
		sb.append(indent+"}\n");
		return sb.toString();
	}
}
