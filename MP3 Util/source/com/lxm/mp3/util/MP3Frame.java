/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/MP3Frame.java,v 1.3 2007/09/14 14:43:10 g137997 Exp $
 * 
 * MP3Frame
 * Created on Sep 11, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.util;

import java.io.DataInput;
import java.io.IOException;
import java.io.OutputStream;

import com.lmco.adp.utility.BitUtil;

public class MP3Frame implements MP3Constants
{
	private int mHeader;
	private byte[] mData;
	
	public MP3Frame(int aHeader,DataInput aDataSource) throws IOException 
	{
		this.mHeader = aHeader;
		this.mData = new byte[getFrameSize()];
		for(int i = 0;i < 4;i++)mData[i] = (byte)((mHeader>>>(8*(3-i)))&0xFF);
		aDataSource.readFully(mData,4,mData.length-4);
	}

	private int getLayerDescription() {
		return (mHeader>>>17)&0x00000003;
	}
	
	private int getPadding() {
		return (mHeader&0x00000200)==0x00000200 ? 1 : 0;
	}
	
	public int getBitRate() {
		return MP3FrameIterator.BITRATE[(mHeader>>>17)&0x0000000F][(mHeader>>>12)&0x0000000F]*1000;
	}
	
	public int getSamplingRate() {
		return MP3FrameIterator.SAMPLERATE[(mHeader>>>19)&0x00000003][(mHeader>>>10)&0x00000003];
	}
	
	public int getFrameSize() {
		return getLayerDescription()==3
			?
			(12*getBitRate()/getSamplingRate()+getPadding())*4		
			:
			144*getBitRate()/getSamplingRate()+getPadding()
		;
	}
	
	public boolean isProtected() {
		return !((mHeader&0x00010000)==0x00010000);
	}
	
	public int getSavedCheckSum() {
		int accum = 0;
		for(int i = 4;i < 6;i++)accum = (accum<<8) | (mData[i]&0xFF);
		return accum;
	}
	
	public int getActualCheckSum() {
		int accum = 0;
		for(int i = 4;i < mData.length;i++)accum += (mData[i]&0xFF);
		return accum;
	}
	
	public void writeData(OutputStream os) throws IOException {
		os.write(mData);
	}
	
	/*** @see java.lang.Object#toString() */
	public String toString() {
		return 
			getBitRate()+" bps : "+getSamplingRate()+" Hz : "+getFrameSize()+" bytes"
			+
			(isProtected() ? " :: "+BitUtil.toHex(getSavedCheckSum())+" "+BitUtil.toHex(getActualCheckSum()) : "")
		;
	}
}

/**
 * 
 * $Log: MP3Frame.java,v $
 * Revision 1.3  2007/09/14 14:43:10  g137997
 * Changed toString().
 * Added checksum methods (Not working correctly).
 *
 * Revision 1.2  2007/09/12 19:54:33  g137997
 * Got rid of SHIFT array.
 *
 * Revision 1.1  2007/09/11 18:35:28  g137997
 * Initial check-in.
 *
 * 
 */