/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/MP3Split.java,v 1.1 2007/09/26 15:19:30 g137997 Exp $
 * 
 * MP3Split
 * Created on Sep 25, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class MP3Split
{

	public static void main(String[] args) throws IOException {
		if(args.length<2) {
			System.out.println("useage: MP3Split sourcefile maxsizebytes targetDir");
		} else {
			File source = new File(args[0]);
			int maxsize = Integer.parseInt(args[1]);
			File target = args.length>2 ? new File(args[2]):source.getParentFile();

			MP3FrameIterator mp3 = new MP3FrameIterator(source,0);

			int seq = 0;
			int size = maxsize;
			FileOutputStream os = null;
			
			while(mp3.hasNext()) {
				MP3Frame frame = mp3.next();
				int fSize = frame.getFrameSize();
				if(size+fSize>maxsize) {
					if(os!=null)os.close();
					File of = getOutputFile(target,source,seq++);
					os = new FileOutputStream(of);
					System.out.println(of);
					size = 0;
				}
				size+=fSize;
				frame.writeData(os);
			}
			os.close();
		}
	}
	
	public static final File getOutputFile(File baseDir,File baseName,int seq) {
		String name = baseName.getName();
		File of = new File(
			baseDir.isDirectory() ? baseDir : baseDir.getParentFile(),
			name.substring(0,name.indexOf(".mp3"))+"_"+seq+".mp3"
		);
		of.getParentFile().mkdirs();
		return of;
	}

}


/**
 * 
 * $Log: MP3Split.java,v $
 * Revision 1.1  2007/09/26 15:19:30  g137997
 * Initial check-in.
 *
 * 
 */