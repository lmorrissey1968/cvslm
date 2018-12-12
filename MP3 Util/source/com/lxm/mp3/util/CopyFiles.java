package com.lxm.mp3.util;
/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/CopyFiles.java,v 1.6 2011/11/17 21:05:35 g137997 Exp $
 * 
 * CopyFiles
 * Created on Oct 10, 2006
 *
 * © Lockheed Martin Corporation, (2006). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;

import com.lmco.adp.utility.ui.GUIUtil_IM;



public class CopyFiles
{
	private static long totalSize = 0;
	private static int dir = 1; 
	private static int MAXSIZE = 701 * 1024 * 1024;
	private static Set done = new HashSet();
	
	public static void main(String[] args) throws IOException {
		
		File listFile = args.length>0 ? new File(args[0]) : GUIUtil_IM.chooseFile(null,".");
		File baseDir = listFile.getParentFile();
		File targetDir = args.length>1 ? new File(args[1]) : GUIUtil_IM.chooseDirectory(null,baseDir);
		
		BufferedReader br = new BufferedReader(new FileReader(listFile));
		PrintWriter pw = new PrintWriter(new File(targetDir,"list"+System.currentTimeMillis()+".m3u"));
		
		for(String line;(line = br.readLine())!=null;) {
			if(!line.startsWith("#")) {
				copyFile(new File(baseDir,line),targetDir,pw);
			}
		}
		pw.close();
		System.out.println("**************** DONE *********************");
	}
	
	public static final int firstAlphaIdx(String data) {
		for(int i = 0;i < data.length();i++) {
			if(Character.isLetter(data.charAt(i)))return i;
		}
		return 0;
	}

	
	private static void copyFile(File source,File targetDir,PrintWriter pw) throws IOException {
		if(source.exists()) {
			long fileSize = FileUtility.getFileSize(source);
			if(totalSize+fileSize>MAXSIZE) {
				totalSize = 0;
				dir++;
				System.out.println("================NEW FOLDER=================");
			}
			
			MP3FileWrapper mp3 = new MP3FileWrapper(source);
			String targetFileName = FileUtility.toValidFileNameString(mp3.getArtist()+" - "+mp3.getTitle()+".mp3");
			File target = new File(targetDir+File.separator+"D"+dir+File.separator+targetFileName.charAt(0),targetFileName);
			
			if(done.contains(target)) {
				System.out.println("DUPLICATE '"+target+"' (Not including in size count)");
			} else {
				pw.println(source);
				pw.println("# "+target);
				done.add(target);
				if(target.exists()) {
					long targetSize = FileUtility.getFileSize(target);
					if(targetSize!=fileSize) {
						System.out.println(fileSize+" ("+totalSize+") :: REPLACING EXISTING '"+target+"' ["+fileSize+"<>"+targetSize+"]");
						FileUtility.copyFile(source,target);
					} else {
						System.out.println(fileSize+" ("+totalSize+") :: USING EXISTING '"+target+"'");
					}
				} else {
					System.out.println(fileSize+" ("+totalSize+") :: '"+source+"' ==> '"+target+"'");
					FileUtility.copyFile(source, target);
				}
				totalSize+=fileSize;
			}
		} else {
			System.err.println("NON-EXISTANT SOURCE '"+source+"'");
		}
	}
}


/**
 * 
 * $Log: CopyFiles.java,v $
 * Revision 1.6  2011/11/17 21:05:35  g137997
 * Changed to re-use buffer.
 *
 * Revision 1.5  2007/10/08 17:32:21  g137997
 * Changed max size.
 *
 * Revision 1.4  2007/09/05 13:24:41  g137997
 * Made improvements.
 *
 * Revision 1.3  2007/08/31 15:59:59  g137997
 * Moved file utilites to GUIUtil_IM in common.
 *
 * Revision 1.2  2007/08/27 03:47:10  g137997
 * Imporved logic.
 *
 * Revision 1.1  2007/08/21 17:43:27  g137997
 * Reorganization.
 *
 * Revision 1.4  2007/04/23 20:41:05  g137997
 * Started work on Manager.
 *
 * Revision 1.3  2006/10/11 20:39:14  g137997
 * Added relative to playlist support.
 * Added DONE message.
 *
 * Revision 1.2  2006/10/11 20:23:02  g137997
 * Added duplicate check.
 * Added size check.
 *
 * Revision 1.1  2006/10/11 18:04:21  g137997
 * Initial check-in.
 *
 * 
 */