/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/FileUtility.java,v 1.7 2011/11/17 21:06:15 g137997 Exp $
 * 
 * FileUtility
 * Created on Apr 23, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;




/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.7 $
 */
public final class FileUtility
{
	public static void copyFile(File src,File tgt) throws IOException {
		byte[] buff = new byte[1024*1024*8];
		tgt.getParentFile().mkdirs();
		FileInputStream fis = new FileInputStream(src);
		FileOutputStream fos = new FileOutputStream(tgt);
		for(int readLength;(readLength = fis.read(buff))>0;)fos.write(buff, 0, readLength);
		fis.close();fos.close();
	}

	public static long getFileSize(File f) throws IOException {
		RandomAccessFile raf = new RandomAccessFile(f,"r");
		long size = raf.length();
		raf.close();
		return size;
	}
	
	
	public static final Set FOR = new HashSet(
		Arrays.asList('<','>','|','"','\\','/',';',':','*','?')
	);
	
	public static final String toValidFileNameString(String aFileName) {
		StringBuilder sb = new StringBuilder();
		int len = aFileName.length();
		for(int i = 0;i < len;i++) {
			char c = aFileName.charAt(i);
			if(!FOR.contains(c))sb.append(c);
		}
		return sb.toString();
	}

}


/**
 * 
 * $Log: FileUtility.java,v $
 * Revision 1.7  2011/11/17 21:06:15  g137997
 * Changed to re-use buffer.
 *
 * Revision 1.6  2007/10/08 17:32:57  g137997
 * Made FOR collection final.
 *
 * Revision 1.5  2007/09/05 13:24:41  g137997
 * Made improvements.
 *
 * Revision 1.4  2007/08/31 15:59:59  g137997
 * Moved file utilites to GUIUtil_IM in common.
 *
 * Revision 1.3  2007/08/27 03:46:48  g137997
 * Added chooseFile().
 *
 * Revision 1.2  2007/08/21 20:59:11  g137997
 * Work in progress.
 *
 * Revision 1.1  2007/08/21 17:43:27  g137997
 * Reorganization.
 *
 * Revision 1.2  2007/08/21 14:20:07  g137997
 * Enhancements made.
 *
 * Revision 1.1  2007/04/23 20:41:05  g137997
 * Started work on Manager.
 *
 * 
 */