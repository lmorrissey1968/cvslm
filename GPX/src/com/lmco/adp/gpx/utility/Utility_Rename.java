/**
 * 
 * $Header$
 * 
 * Utility_Rename
 * Created on May 10, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx.utility;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.stream.Stream;

import javax.swing.JFileChooser;

import com.lmco.adp.gpx.GPX;
import com.lmco.adp.gpx.TrackSeg;
import com.lmco.adp.utility.io.FileIterator;
import com.lmco.adp.utility.ui.GUIUtil_IM;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (lmorr)
 * @version $Revision$
 */
public class Utility_Rename {
	public static final SimpleDateFormat FMT_S = new SimpleDateFormat("yyyyMMdd_HHmmss");
	public static final SimpleDateFormat FMT_E = new SimpleDateFormat("HHmmss");

	public static void main(String[] args) {
		getDirs(args[0])
			.flatMap(dir->new FileIterator(dir,f->f.getName().toLowerCase().endsWith(".gpx")).stream(false))
			.forEach(gpx->rename(gpx))
		;
	}
	
	private static void rename(File gpx) {
		try {
			long s = 
				Stream.of(new GPX(gpx).getTracks())
				.flatMap(t->Stream.of(t.getTrackSegs()))
				.mapToLong(TrackSeg::getTimeStart)
				.min()
				.getAsLong()
			;
			
			long e = 
				Stream.of(new GPX(gpx).getTracks())
				.flatMap(t->Stream.of(t.getTrackSegs()))
				.mapToLong(TrackSeg::getTimeEnd)
				.max()
				.getAsLong()
			;
			
			File nn = new File(gpx.getParentFile(),String.format("%s-%s.gpx",FMT_S.format(s),FMT_E.format(e)));
			if(gpx.setLastModified(s) && gpx.renameTo(nn))System.out.println(gpx.getName()+" ==> "+nn.getName());
		} catch (Exception exc) {
			throw new RuntimeException(exc);
		}
	}

	public static final Stream<File> getDirs(String root) {
		JFileChooser choose = GUIUtil_IM.getNativeJFileChooser(root);
		choose.setMultiSelectionEnabled(true);
		choose.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
		return 
			choose.showOpenDialog(null)==JFileChooser.APPROVE_OPTION
			? Stream.of(choose.getSelectedFiles())
			: Stream.empty()
		;
	}

}


/**
 * 
 * $Log$
 * 
 */