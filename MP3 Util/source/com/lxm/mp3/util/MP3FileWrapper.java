/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/MP3FileWrapper.java,v 1.1 2007/08/21 17:43:27 g137997 Exp $
 * 
 * MP3FileWrapper
 * Created on Aug 21, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.util;

import java.io.File;
import java.io.IOException;


public class MP3FileWrapper implements Comparable<MP3FileWrapper>
{
	private File mFile;
	private boolean mSelected = false;
	private String mArtistFile;
	private String mTitleFile;
	private Long mSize;
	private ID3V2 mID3;
	
	public MP3FileWrapper(File aFile)
	{
		this.mFile = aFile;
		parseID3();
		parseFilename();
	}

	private void parseID3() {
		try {
			if(mFile.isFile()) {
				this.mSize = new Long(FileUtility.getFileSize(mFile));
			}
			this.mID3 = new ID3V2(mFile);
		} catch(IOException exc) {
			exc.printStackTrace();
		}
	}

	private void parseFilename() {
		String name = mFile.getName();
		int ei = name.lastIndexOf(".mp3");
		
		String cleanName = ei==-1 ? name : name.substring(0,ei);
		int di = cleanName.indexOf('-');
		
		if(di==-1) {
			this.mArtistFile = "";
			this.mTitleFile = cleanName;
		} else {
			this.mArtistFile = cleanName.substring(0,di).trim();
			this.mTitleFile = cleanName.substring(di+1).trim();
		}
	}
	
	public boolean isSelected() {
		return mSelected;
	}

	public File getFile() {
		return mFile;
	}
	
	public void setSelected(boolean aSelected) {
		this.mSelected = aSelected;
	}
	
	public String getArtistID3() {
		return mID3.getTag("TPE1");
	}

	public String getTitleID3() {
		return mID3.getTag("TIT2");
	}
	
	public String getArtist() {
		String value = getArtistID3();
		return value==null ? mArtistFile : value;
	}
	
	public String getTitle() {
		String value = getTitleID3();
		return value==null ? mTitleFile : value;
	}

	public boolean hasID3Artist() {
		return getArtistID3()!=null;
	}

	public boolean hasID3Title() {
		return getTitleID3()!=null;
	}
	
	public String getPath() {
		return mFile.getParent();
	}
	
	public Long getSize() {
		return mSize;
	}

	public ID3V2 getID3() {
		return this.mID3;
	}

	/*** @see java.lang.Comparable#compareTo(java.lang.Object) */
	public int compareTo(MP3FileWrapper wrap) {
		int t1 = getArtist().compareTo(wrap.getArtist());
		return t1==0 ? getTitle().compareTo(wrap.getTitle()) : t1;
	}
	
	/*** @see java.lang.Object#toString() */
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(getArtist()).append(" - ").append(getTitle()).append(" ");
		sb.append("\n\t").append(mID3.getSize()).append(" bytes ").append(mID3.getTagMap());
		return sb.toString();
	}
}

/**
 * 
 * $Log: MP3FileWrapper.java,v $
 * Revision 1.1  2007/08/21 17:43:27  g137997
 * Reorganization.
 *
 * 
 */