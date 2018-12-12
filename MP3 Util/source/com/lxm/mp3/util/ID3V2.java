/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/ID3V2.java,v 1.5 2011/12/06 23:42:44 g137997 Exp $
 * 
 * ID3V2
 * Created on Oct 27, 2006
 *
 * © Lockheed Martin Corporation, (2006). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.util;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;

import com.lmco.adp.utility.StringUtil;
import com.lmco.adp.utility.ui.GUIUtil_IM;


/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.5 $
 */
public class ID3V2
{
	private static final Pattern FRAME_ID = Pattern.compile("[0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z]");
	
	private File mFile;
	private byte mMajorVersion;
	private byte mMinorVersion;
	private byte mFlags;
	private boolean mTagged;
	private int mSize;
	private Map<String,String> mTags = new TreeMap<String,String>();

	public ID3V2(File f) throws IOException
	{
		this.mFile = f;
		DataInputStream dis = new DataInputStream(new FileInputStream(f));
		if(readRawString(dis,3).equals("ID3")) {
			this.mMajorVersion = dis.readByte();
			this.mMinorVersion = dis.readByte();
			this.mFlags = dis.readByte();
			this.mSize = readSyncSafeSize(dis)+(isFooterPresent()?20:10);
			if(mMajorVersion<3)return;
			this.mTagged = true;
			if(hasExtendedHeader())skipBytes(dis,dis.readInt());
			while(processFrames(dis));
		}
		dis.close();
	}
	
	private boolean processFrames(DataInputStream dis) throws IOException {
		String id = readString(dis,4);
		if(FRAME_ID.matcher(id).matches()) {
			int size = dis.readInt();
			skipBytes(dis,2);
			if(size>0) {
				if(id.startsWith("T")) {
					mTags.put(id,decodeString(dis,size));
				} else {
					skipBytes(dis,size);
				}
				return true;
			} else {
				return false;
			}
		}else {
			return false;
		}
	}
	
	public byte[] getID3Bytes() throws IOException {
		ByteArrayOutputStream os = new ByteArrayOutputStream();
		DataOutputStream dos = new DataOutputStream(os);
		dos.writeBytes("ID3");
		dos.writeByte(mMajorVersion);
		dos.writeByte(0x00);
		dos.writeByte(0x00);
		byte[] data = getFrameBytes();
		writeSyncSafeSize(dos,data.length);
		dos.write(data);
		os.flush();
		os.close();
		return os.toByteArray();
	}
	
	private byte[] getFrameBytes() throws IOException {
		ByteArrayOutputStream os = new ByteArrayOutputStream();
		DataOutputStream dos = new DataOutputStream(os);
		for(Iterator<String> it = mTags.keySet().iterator();it.hasNext();) {
			String key = it.next();
			String val = mTags.get(key);
			if(!StringUtil.isNullOrEmpty(val.trim()))writeTag(dos,key,val);
		}
		os.flush();
		os.close();
		return os.toByteArray();
	}
	
	private void writeTag(DataOutputStream dos,String key,String value) throws IOException {
		dos.writeBytes(key);
		dos.writeInt(value.length()+1);
		dos.writeByte(0x00); // Flag byte 1
		dos.writeByte(0x00); // Flag byte 2
		dos.writeByte(0x00); // Text is ISO-8859-1
		dos.writeBytes(value);
	}
	
	public void writeRetaggedFile(File targetFolder) throws IOException {
		File target = new File(targetFolder,mFile.getName());
		if(!target.exists()) {
			target.getParentFile().mkdirs();

			OutputStream fos = new FileOutputStream(target);
			fos.write(getID3Bytes());
			
			MP3FrameIterator mit = new MP3FrameIterator(mFile,mSize);
			while(mit.hasNext())mit.next().writeData(fos);
			mit.close();
			
			fos.close();
		}
	}

	public String decodeString(DataInputStream dis,int size) throws IOException {
		int enc = dis.readByte();
		if(enc==0) {
			return readString(dis,size-1);
		} else if(enc==1) {
			return decodeUTF16wBOM(dis,size-1);
		} else {
			return "";
		}
	}
	
	public String decodeUTF16wBOM(DataInputStream dis,int size) throws IOException {
		StringBuffer sb = new StringBuffer();
		if(size>0) {
			size-=2;
			switch(dis.readShort()&0xFFFF) {
				case 0xFFFE:
					for(int i = 0;i < size;i+=2) {
						sb.append((char)dis.readByte());
						dis.readByte();
					}
					break;
				case 0xFEFF:
					for(int i = 0;i < size;i+=2) {
						sb.append((char)dis.readByte());
						dis.readByte();
					}
					break;
			}
		}
		return sb.toString();
	}
	
	public static int readSyncSafeSize(DataInputStream dis) throws IOException {
		int accum = 0;
		for(int i = 0;i < 4;i++) {
			if(i>0)accum <<= 7;
			byte b = dis.readByte();
			accum |= (b & 0x7F);
		}
		return accum;
	}
	
	public static void writeSyncSafeSize(DataOutputStream dos,int size) throws IOException {
		int mask = 0x0FE00000;
		for(int shift=21;shift>=0;shift-=7,mask>>>=7) {
			dos.writeByte((size & mask)>>>shift);
		}
	}
	
	
	private boolean isFlagSet(int flag) {
		return (mFlags & flag)==flag ;
	}
	
	public boolean isUnSynchronization() {
		return isFlagSet(0x80);
	}

	public boolean hasExtendedHeader() {
		return isFlagSet(0x40);
	}

	public boolean isExperimental() {
		return isFlagSet(0x20);
	}

	public boolean isFooterPresent() {
		return isFlagSet(0x10);
	}
	
	public String getVersion() {
		return mMajorVersion+"."+mMinorVersion;
	}
	
	/*** @see java.lang.Object#toString() */
	public String toString() {
		//StringBuffer sb = new StringBuffer(mFile.getName()+" :: "+mFrameData.getBitRate()+" kb/s\n");
		StringBuffer sb = new StringBuffer(mFile.getName()+"\n");
		//if(mFrameData.getOffset()>0)sb.append("\tFirst MP3 frame "+mFrameData.getOffset()+" bytes after ID3\n");
		Iterator it = mTags.keySet().iterator();
		for(int i=0;it.hasNext();i++) {
			String key = (String)it.next();
			if(i>0)sb.append('\n');
			sb.append('\t').append(key).append(" = ").append(mTags.get(key));
		}
		return sb.toString();
	}
	
	public static void skipBytes(DataInputStream dis,int numBytes) throws IOException {
		for(int i = 0;i < numBytes;i++)dis.readByte();
	}

	public static String readString(DataInputStream dis,int numBytes) throws IOException {
		return readRawString(dis,numBytes).trim();
	}

	public static String readRawString(DataInputStream dis,int numBytes) throws IOException {
		byte[] data = new byte[numBytes];
		dis.read(data);
        return new String(data);
	}
	
	private static void process(File f) throws IOException {
		if(f.isDirectory()) {
			File[] fa = f.listFiles();
			for(int i = 0;i < fa.length;i++)process(fa[i]);
		} else {
			if(f.toString().toLowerCase().endsWith(".mp3")) {
				ID3V2 id3 = new ID3V2(f);
				if(id3.isTagged()) {
					System.out.println(id3);
					//System.out.println(BitUtil.toHexList(tag.getID3Bytes()));
				}
			}
		}
	}

	public boolean isTagged() {
		return mTagged;
	}
	
	public void setTag(String key,String value) {
		mTags.put(key,value);
	}
	
	public String getTag(String key) {
		return mTags.get(key);
	}
	
	public Map<String,String> getTagMap() {
		return mTags;
	}

	public int getSize() {
		return mSize;
	}

	public static void main(String[] args) throws IOException {
		process(GUIUtil_IM.chooseFile(null,"."));
	}
}


/**
 * 
 * $Log: ID3V2.java,v $
 * Revision 1.5  2011/12/06 23:42:44  g137997
 * Utility method renamed in dependancy.
 *
 * Revision 1.4  2008/03/19 18:56:05  g137997
 * Modified to allow UI file selection.
 *
 * Revision 1.3  2007/09/12 19:55:56  g137997
 * Fixed to rowk correctly with MP3 Frame classes.
 *
 * Revision 1.2  2007/09/10 12:09:39  g137997
 * Several enhancments.
 *
 * Revision 1.1  2007/08/21 17:43:27  g137997
 * Reorganization.
 *
 * Revision 1.10  2007/08/21 16:11:40  g137997
 * Work In Progress.
 *
 * Revision 1.9  2007/04/23 20:41:05  g137997
 * Started work on Manager.
 *
 * Revision 1.8  2007/01/19 21:14:25  g137997
 * Disabled copy.
 *
 * Revision 1.7  2006/11/06 21:51:00  g137997
 * Added logic to write "stripped down" ID3 tag.
 *
 * Revision 1.6  2006/11/06 19:04:04  g137997
 * Added offset (if any) of first MP3 frame.
 *
 * Revision 1.5  2006/11/06 19:01:27  g137997
 * Added crude UTF-16 decode.
 *
 * Revision 1.4  2006/11/02 22:25:03  g137997
 * Added file extension check.
 *
 * Revision 1.3  2006/11/02 22:13:12  g137997
 * Made it better.
 *
 * Revision 1.2  2006/11/01 20:59:43  g137997
 * Made it a lot better.
 *
 * Revision 1.1  2006/10/27 20:35:39  g137997
 * New MP3 tag stuff.
 *
 * 
 */