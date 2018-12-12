/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/ID3V1.java,v 1.1 2007/08/21 17:43:27 g137997 Exp $
 * 
 * ID3V1_Read
 * Created on Oct 27, 2006
 *
 * © Lockheed Martin Corporation, (2006). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.util;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class ID3V1
{
	private String mTitle;
	private String mArtist;
	private String mAlbum;
	private String mYear;
	private String mComment;
	private byte mGenre;
	private boolean mTagged = false;
	
	public ID3V1(File f) throws IOException
	{
		RandomAccessFile raf = new RandomAccessFile(f,"r");
		raf.seek(raf.length()-128);
		if(readRawString(raf,3).equals("TAG")) {
			this.mTagged = true;
			this.mTitle = readString(raf,30);
			this.mArtist = readString(raf,30);
			this.mAlbum = readString(raf,30);
			this.mYear = readString(raf,4);
			this.mComment = readString(raf,30);
			this.mGenre = raf.readByte();
		}
		raf.close();
	}
	
	public boolean isTagged() {
		return this.mTagged;
	}
	
	/*** @see java.lang.Object#toString() */
	public String toString() {
		return mArtist+" - "+mTitle+" :: "+mAlbum+" ("+mYear+") :: "+mComment+" ["+mGenre+"]";
	}

	public static String readString(RandomAccessFile raf,int numBytes) throws IOException {
		return readRawString(raf,numBytes).trim();
	}

	public static String readRawString(RandomAccessFile raf,int numBytes) throws IOException {
		byte[] data = new byte[numBytes];
		raf.read(data);
        return new String(data);
	}

	private static void process(File f) throws IOException {
		if(f.isDirectory()) {
			File[] fa = f.listFiles();
			for(int i = 0;i < fa.length;i++)process(fa[i]);
		} else {
			ID3V1 tag = new ID3V1(f);
			if(tag.isTagged())System.out.println(tag);
		}
	}

	public static void main(String[] args) throws IOException {
		process(new File(args[0]));
	}


}


/**
 * 
 * $Log: ID3V1.java,v $
 * Revision 1.1  2007/08/21 17:43:27  g137997
 * Reorganization.
 *
 * Revision 1.1  2006/10/27 20:35:39  g137997
 * New MP3 tag stuff.
 *
 * 
 */