package com.ibm.gs.ls.odt.runtime;

import java.awt.BorderLayout;
import java.awt.Font;
import java.awt.Frame;
import java.awt.TextArea;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URL;
import java.util.StringTokenizer;
import java.util.zip.ZipInputStream;

import com.ibm.gs.ls.odt.compiler.NavParser;
import com.ibm.gs.ls.odt.info.Content;
import com.ibm.gs.ls.odt.info.Info;
import com.ibm.gs.ls.odt.info.InfoLevel;

public class CourseData extends Thread
{
	private static CourseData course;
   	private static Info content,submenu;
	private static URL navfile,cb,db,lb;
	private static InfoLevel root;
	private static History hist;
	//---------------------------------------------------
	private DataLoader oa;
   	private String target;
	private boolean done = false;
   	

	public String toString()
	{
		return navfile.toString();
	}

	public CourseData(DataLoader oa)
	{
		this.oa = oa;
		target = getParameter("target")==null?"_self":getParameter("target");
	}
	
	public void run()
	{
		try{
			if(getParameter("navfile")!=null){
				if(course==null){
					cb = oa.getCodeBase();
					lb = db = oa.getDocumentBase();
					navfile = new URL(db,getParameter("navfile"));
					String navFilePath = navfile.toString();
					
					InputStream nfis = 
						oa.shouldUseResource() 
						?
						oa.getResourceStream(navFilePath)
						:
						navfile.openStream()
					;
					
					if(navFilePath.toLowerCase().indexOf(".zip")!=-1){ // Wrap it up in a Zip stream reader
						ZipInputStream zfis = new ZipInputStream(nfis);
						System.out.println("I: "+zfis.getNextEntry().getName()+" from "+navFilePath);
						nfis = zfis;
					}else{
						System.out.println("I: "+navFilePath);
					}
					
					root = new NavParser(new InputStreamReader(nfis),navFilePath).getInfoRoot();
					nfis.close();
					
					root.setPath(navFilePath.substring(0,navFilePath.lastIndexOf("/")));
					course = this;
					hist = new History();
					InfoLevel infolevel = (InfoLevel)root.getChild(0);
					setVAR("submenu", infolevel.getID()); submenu = infolevel;
					setVAR("content", infolevel.getID()); content = infolevel;
				}else{
					System.out.println("R: "+navfile);
				}
			} else {
				System.out.println("UE: "+navfile);
			}
			this.done = true;
		}catch(Exception exc){
			exc.printStackTrace();
			StringWriter msg = new StringWriter();
			PrintWriter pw = new PrintWriter(msg);
			exc.printStackTrace(pw);
			TextArea t = new TextArea(msg.toString());
			t.setFont(new Font("Courier",Font.PLAIN,12));
			Frame f = new Frame("EXCEPTION");
			f.setLayout(new BorderLayout());
			f.add("Center",t);
			f.setSize(600,400);
			f.addWindowListener(new WindowAdapter(){
				public void windowClosing(WindowEvent e)
				{
					e.getWindow().dispose();
				}	
			});
			f.show();
		}
		if(oa instanceof DataLoader){
			((DataLoader)oa).doneNotify();
		}
	}

	public void reset()
	{
		if(getParameter("navfile")!=null){
			course = null;
			Info.reset();
			run();
			oa.getAppletContext().showStatus("DONE Resetting");
		}else{
			oa.getAppletContext().showStatus("ERROR: Cannot Reset from here");
		}
	}

	public void launch()
	{
		if(this.done){
			loadDocument(getParameter("linkto"),target);
		}
	}

	public void loadDocument(String url,String target)
	{
		try{
			oa.getAppletContext().showDocument(new URL(oa.getDocumentBase(),url),target);
		}catch(Exception exc){}
	}
	
	String getParameter(String key)
	{
		return oa.getParameter(key);
	}
	
// --------------------------------------------------------
	public String getVAR(String name)
	{
		return root.getFlag("V_"+name);
	}

	public String setVAR(String name,String value)
	{
		return root.setFlag("V_"+name,value);
	}

// --------------------------------------------------------
	public History getHistory()
	{
		return CourseData.hist;
	}

// --------------------------------------------------------

	public Info getSubmenu()
	{
		return CourseData.submenu;
	}

	public Info getContent()
	{
		return CourseData.content;
	}

// --------------------------------------------------------
// - Navigation handlers/methods
// --------------------------------------------------------
	public void gotoLastMenu()
	{
		Info cur = hist.current(),lm = getByID(getVAR("submenu"));
		if(cur!=lm)gotoIO(lm,true);
	}

	
	public void gotoNextMenuUp()
	{
		Info cur = hist.current(),up = cur.getAncestor("submenu");
		if(cur!=up)gotoIO(up,true);
	}
	
	public void gotoByName(String url)
	{
		gotoByName(url,null);
	}

	public void gotoByName(String url,String anchor)
	{
		Info c = hist.current();
		InfoLevel cb = c.getAncestor("con-block");
		gotoIO((cb!=null?cb:c.getAncestor("submenu")).getContentSequenceItem(url),true,anchor);
	}
	
	public void gotoNext()
	{
		if(hist.isLast()){
			Info c = hist.current();
			InfoLevel sm = c.getAncestor("submenu");
			InfoLevel cb = c.getAncestor("con-block");
			
			Info nx = cb==null?sm.getContentSequenceNext(c):cb.getContentSequenceNext(c);
			gotoIO(nx==null||c.hasFlag("menu-next")?sm:nx,true);
		}else{
			gotoIO(hist.forward(),false);
		}
	}
	
	public boolean gotoPrevious()
	{
		if(hist.is1st()){
			return false;
		}else{
			gotoIO(hist.back(),false);
			return true;
		}
	}
	
	public void gotoByID(String id)
	{
		gotoIO(getByID(id),true,null);
	}

	public void gotoByID(String id,String anchor)
	{
		gotoIO(getByID(id),true,anchor);
	}

	public void gotoIO(Info io,boolean usehist)
	{
		gotoIO(io,usehist,null);
	}
	
	public void gotoIO(Info io,boolean usehist,String anchor)
	{
		if(io!=null){
			if(io.isInfoLevel() && io.hasFlag("submenu")){
				CourseData.submenu = io;
				setVAR("submenu",io.getID()); CourseData.submenu = io;
				setVAR("content",io.getID()); CourseData.content = io;
				if(usehist && !io.hasFlag("target"))hist.add(io);
				if(getParameter("linkto")==null){
					loadDocument(getPath_LnF()+io.getFlag("submenu"),io.hasFlag("target")?io.getFlag("target"):target);
				}else{
					launch();
				}
			}else{
				io = io.isInfoLevel()?((InfoLevel)io).getContentSequenceItem(0):io;
				if(io.isContent()){
					Content co = (Content)io;
					setVAR("content",co.getID()); CourseData.content = co;
					if(usehist && !co.hasFlag("target"))hist.add(co);
					co.use();
					if(getParameter("linkto")==null){
						if(co.hasFlag("template")){
							loadDocument(getPath_LnF()+co.getFlag("template"),co.hasFlag("target")?co.getFlag("target"):target);
						}else{
							loadDocument(co.getPath()+((anchor==null || anchor.equals(""))?"":"#"+anchor),co.hasFlag("target")?co.getFlag("target"):target);
						}
		 			}else{
		 				launch();
		 			}
				}else{
					gotoIO(io,usehist,anchor);
				}
			}
		}
	}
	
// --------------------------------------------------------
// - Accessor methods for JavaScript and JScript (Instance)
// --------------------------------------------------------
	public String getUsedCookie(String cookie)
	{
		StringTokenizer st = new StringTokenizer(cookie,"+");
		boolean found = false;
		StringBuffer sb = new StringBuffer("");
		while(st.hasMoreTokens()){
			String cur = st.nextToken();
			int eq = cur.indexOf("=");
			if(eq!=-1 && cur.substring(0,eq).equals(navfile.toString())){
				found = true;
				sb.append(navfile+"="+root.getUsedData()+"+");
			}
			else{
				sb.append(cur+"+");					
			}
		}
		if(!found){
			sb.append(navfile+"="+root.getUsedData()+"+");
		}
		sb.setLength(sb.length()-1);
		return sb.toString();
	}
	
	public void setUsedCookie(String cookie)
	{
		StringTokenizer st = new StringTokenizer(cookie,"+");
		while(st.hasMoreTokens()){
			String cur = st.nextToken();
			int eq = cur.indexOf("=");
			if(eq!=-1 && cur.substring(0,eq).equals(navfile.toString())){
				root.setUsedData(cur.substring(eq+1));
			}
		}
	}
	
	public String getStarterDocURL()
	{
		return db.toString();
	}

	public String getPath_LnF()
	{
		String ls = lb.toString();
		return ls.substring(0,ls.lastIndexOf("/")+1);
	}
	
	public String getPath_Codebase()
	{
		return cb.toString();
	}

	public String getPath_Root()
	{
		return cb.toString();
	}

	public String getPath_Content()
	{
		return root.getPath();
	}
	
	public String getSignature()
	{
		return navfile.toString();
	}

	public Info getRoot()
	{
		return root;
	}

	public Info getModule(int mNum)
	{
		return root.getChildren()[mNum];
	}

	public int getModuleCount()
	{
		return root.getChildCount();
	}

	public String getModuleName(int mNum)
	{
		return root.getChild(mNum).getName();
	}
	
	public Info getByID(String id)
	{
		return Info.getByID(id);
	}
}

/**
 * 
 * $Log: CourseData.java,v $
 * Revision 1.3  2009/08/18 18:59:10  g137997
 * Added new status message.
 *
 * Revision 1.2  2007/02/02 14:46:30  g137997
 * Removecd the Thread.start() call in the constructor.
 *
 * 
 */