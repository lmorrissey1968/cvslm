/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/MP3FrameIterator.java,v 1.3 2007/09/12 19:55:32 g137997 Exp $
 * 
 * MP3FrameIterator
 * Created on Nov 2, 2006
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
 * @version $Revision: 1.3 $
 */ 
public class MP3FrameIterator implements MP3Constants
{
	private int mHeader;
	private RandomAccessFile mData;
	
	public MP3FrameIterator(File f,int offset) throws IOException
	{
		this(new RandomAccessFile(f,"r"),offset);
	}
	
	public MP3FrameIterator(RandomAccessFile aData,int offset) throws IOException
	{
		this.mData = aData;
		mData.skipBytes(offset);
	}
	
	public MP3Frame next() {
		try {
			return new MP3Frame(mHeader,mData);
		} catch(IOException exc) {
			throw new Error(exc);
		}
	}
	
	public boolean hasNext() {
		try {
			for(this.mHeader = 0;!isHeader();) {
				this.mHeader = (mHeader<<8)|(0xFF&mData.readByte());
				if(mData.length()==mData.getFilePointer()) {
					return false;
				}
			}
			return getFrameSize()<=mData.length()-mData.getFilePointer();
		} catch(IOException exc) {
			throw new Error(exc);
		}
	}
	
	private boolean isHeader() {
		return 
			(mHeader&0xFFF00000)==0xFFF00000
			&&
			getLayerDescription()!=0
			&&
			getBitRate()!=0
			&& 
			getSamplingRateIndex()!=3
		;
	}
	
	public int getLayerDescription() {
		return (mHeader>>>17)&0x00000003;
	}
	
	public int getBitRate() {
		return BITRATE[(mHeader>>>17)&0x0000000F][(mHeader>>>12)&0x0000000F]*1000;
	}
	
	public int getSamplingRateIndex() {
		return (mHeader>>>10)&0x00000003;
	}
	
	public int getSamplingRate() {
		return SAMPLERATE[(mHeader>>>19)&0x00000003][(mHeader>>>10)&0x00000003];
	}
	
	private int getPadding() {
		return (mHeader&0x00000200)==0x00000200 ? 1 : 0;
	}
	
	public int getFrameSize() {
		return getLayerDescription()==3
			?
			(12*getBitRate()/getSamplingRate()+getPadding())*4		
			:
			144*getBitRate()/getSamplingRate()+getPadding()
		;
	}

	public void close() throws IOException {
		mData.close();
	}
}


/**
 * 
 * $Log: MP3FrameIterator.java,v $
 * Revision 1.3  2007/09/12 19:55:32  g137997
 * Streamlined a bit.
 *
 * Revision 1.2  2007/09/11 18:35:49  g137997
 * Fixed to properly stay in sync.
 *
 * Revision 1.1  2007/09/10 12:09:39  g137997
 * Several enhancments.
 *
 * Revision 1.1  2007/08/21 17:43:27  g137997
 * Reorganization.
 *
 * Revision 1.3  2007/08/21 16:11:40  g137997
 * Work In Progress.
 *
 * Revision 1.2  2006/11/06 19:03:38  g137997
 * Added javadoc.
 *
 * Revision 1.1  2006/11/02 22:13:12  g137997
 * Made it better.
 *
 * 
 */