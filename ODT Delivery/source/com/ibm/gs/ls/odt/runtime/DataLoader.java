package com.ibm.gs.ls.odt.runtime;

import com.ibm.gs.ls.odt.info.*;
import java.io.*;
import java.util.*;
import java.applet.*;
import java.net.*;
import java.awt.*;

public abstract class DataLoader extends Applet
{

	private final static int CHUNK_SIZE = 4096;
	
	private static Hashtable imgCache = new Hashtable();
	
	//----------------------------------------------------------------
	
	public abstract void doneNotify();
	
	public abstract Info getAppletRootIO();
	
	public abstract CourseData getCourseData();

	//----------------------------------------------------------------
	
	protected Image cacheImage(String name)
	{
		Image itl;
		if((itl=(Image)imgCache.get(name))==null){
			System.out.println("L: "+name);
			try{
				itl = 
					shouldUseResource()
					?
					getImageResource(name)
					:
					getImage(new URL(name))
				;
				imgCache.put(name,itl);
			}catch(MalformedURLException mue){}
		}
		return itl;
	}
	
	//----------------------------------------------------------------

	protected boolean shouldUseResource()
	{
		String useResource = getParameter("useResource");
		return
			useResource != null
			&&
			(
				useResource.equalsIgnoreCase("true") 
				||
				useResource.equals("1")
			)
		;
	}
	
	//----------------------------------------------------------------
	
	protected InputStream getResourceStream(String fileURL)
	{
		String fileName = "/resource"+fileURL.substring(fileURL.lastIndexOf("/"));
		System.out.println("ResLd -> "+fileName);
		return getClass().getResourceAsStream(fileName);
	}


	//----------------------------------------------------------------
	
	public Image getImageResource(String imageURL)
	{
		try{
			Vector imgChunks = new Vector(4);
			InputStream is = getResourceStream(imageURL);
			int bytesRead = 0;
			while(bytesRead>-1){
				byte[] wholeChunk = new byte[CHUNK_SIZE];
				bytesRead = is.read(wholeChunk);
				if(bytesRead==CHUNK_SIZE){
					imgChunks.addElement(wholeChunk);
				}else if(bytesRead!=-1){
					byte[] partChunk = new byte[bytesRead];
					for(int i=0;i<bytesRead;i++)partChunk[i] = wholeChunk[i];
					imgChunks.addElement(partChunk);
				}
			}
			is.close();
			
			int imgSize = 
				( (imgChunks.size()-1) * CHUNK_SIZE ) 
				+ 
				((byte[])imgChunks.elementAt(imgChunks.size()-1)).length
			;
			
			//System.out.println("SIZE: "+imgSize+"bytes");
			
			byte[] image = new byte[imgSize];
			
			int curLoc = 0;
			for(int i=0;i<imgChunks.size();i++){
				byte[] chunk = (byte[])imgChunks.elementAt(i);
				for(int j=0;j<chunk.length;j++){
					image[curLoc++] = chunk[j];
				}
			}

			return Toolkit.getDefaultToolkit().createImage(image);
		}catch(Exception exc){
			exc.printStackTrace();
			return null;
		}
	}

}
