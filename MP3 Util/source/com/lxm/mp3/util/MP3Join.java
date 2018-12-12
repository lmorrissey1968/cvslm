/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/MP3Join.java,v 1.1 2007/09/26 15:19:30 g137997 Exp $
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
import java.io.FilenameFilter;
import java.io.IOException;

/**
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class MP3Join
{

	public static void main(String[] args) throws IOException {
		if(args.length<2) {
			System.out.println("useage: MP3Join source targetFile");
		} else {
			final File source = new File(args[0]);
			File target = new File(args[1]);
			
			File[] list = source.getParentFile().listFiles(
				new FilenameFilter() {
					public boolean accept(File aDir, String aName) {
						return aName.indexOf(source.getName()+"_")!=-1;
					}
				}
			);
			
			System.out.println("CREATING: "+target);
			int tf=0;int ts = 0;
			FileOutputStream os = new FileOutputStream(target);
			for(int i = 0;i < list.length;i++) {
				System.out.print(list[i].getName());
				MP3FrameIterator mp3 = new MP3FrameIterator(list[i],0);
				int c=0;int s=0;
				while(mp3.hasNext()) {
					MP3Frame f = mp3.next();
					f.writeData(os);
					c++;
					s+=f.getFrameSize();
				}
				mp3.close();
				System.out.println(" -- "+c+" frames ["+s+" bytes] concatenated");
				tf+=c;ts+=s;
			}
			os.close();
			System.out.println("DONE WRITING: "+tf+" frames ["+ts+" bytes]");
		}
	}
}


/**
 * 
 * $Log: MP3Join.java,v $
 * Revision 1.1  2007/09/26 15:19:30  g137997
 * Initial check-in.
 *
 * 
 */