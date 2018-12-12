/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/ListBlocks.java,v 1.6 2007/09/14 14:42:35 g137997 Exp $
 * 
 * ListBlocks
 * Created on Sep 6, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.swing.JFileChooser;

import com.lmco.adp.utility.ui.GUIUtil_IM;

public class ListBlocks
{
	public static void main(String[] args) throws IOException {
		File[] source = chooseFiles(new File("."));
		File targetDir = new File("D:\\ZZTEST\\");
		targetDir.mkdirs();
		if(source!=null) {
			File target = GUIUtil_IM.chooseFile(null,targetDir,new File(source[0].getName()));
			//if(target==null)return;
			FileOutputStream fos = target==null ? null : new FileOutputStream(target);
			for(int fi = 0;fi < source.length;fi++) {
				System.out.println(source[fi]);
				long start = System.currentTimeMillis();
				MP3FrameIterator it = new MP3FrameIterator(source[fi],0);
				int count=0;
				while(it.hasNext()) {
					MP3Frame frame = it.next();
					if(target!=null) {
						frame.writeData(fos);
					} else {
						System.out.println("["+count+"] "+frame);
					}
					count++;
				}
				long time = System.currentTimeMillis() - start;
				System.out.println("\t"+(count+1)+" frames in "+(time/1000f)+" seconds");
			}
			if(target!=null)fos.close();
		}
	}

	public final static File[] chooseFiles(File baseDir) {
		JFileChooser choose = new JFileChooser(baseDir);
		choose.setFileSelectionMode(JFileChooser.FILES_ONLY);
		choose.setMultiSelectionEnabled(true);
		if(choose.showOpenDialog(null)==JFileChooser.APPROVE_OPTION) {
			return choose.getSelectedFiles();
		} else {
			return null;
		}
	}
}


/**
 * 
 * $Log: ListBlocks.java,v $
 * Revision 1.6  2007/09/14 14:42:35  g137997
 * Changed output.
 *
 * Revision 1.5  2007/09/14 03:28:24  g137997
 * Modified test driver.
 *
 * Revision 1.4  2007/09/12 19:56:06  g137997
 * mproved utility.
 *
 * Revision 1.3  2007/09/11 19:05:53  g137997
 * Added more meaningfull output.
 *
 * Revision 1.2  2007/09/11 18:36:13  g137997
 * Changed to process multiple files.
 *
 * Revision 1.1  2007/09/10 12:09:39  g137997
 * Several enhancments.
 *
 * 
 */