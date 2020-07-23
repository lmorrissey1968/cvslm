/**
 * 
 * Utility_Combine
 * Created on May 8, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx.utility;

import java.io.File;
import java.io.FileInputStream;
import java.util.stream.Stream;

import javax.swing.JFileChooser;
import javax.swing.filechooser.FileFilter;

import com.lmco.adp.gpx.GPX;
import com.lmco.adp.gpx.Track;
import com.lmco.adp.utility.streams.LambdaExceptionWrap;
import com.lmco.adp.utility.ui.GUIUtil_IM;

/**
 * @author Lawrence Morrissey
 */
public class Utility_Combine {
	public static void main(String[] args) {
		GPX[] data = 
			getFiles(args.length>0?args[0]:".")
			.map(LambdaExceptionWrap.wrapF(FileInputStream::new))
			.map(LambdaExceptionWrap.wrapF(GPX::new))
			.toArray(GPX[]::new)
		;
		
		Stream.of(data)
			.forEach(gpx->
				Stream.of(gpx.getTracks()).map(Track::toStringExp).forEach(System.out::println)
			)
		;
	}
	
	public static final Stream<File> getFiles(String root) {
		JFileChooser choose = GUIUtil_IM.getNativeJFileChooser(root);
		choose.setMultiSelectionEnabled(true);
		choose.setFileFilter(
			new FileFilter() {
				public String getDescription() { return "GPX File"; }
				public boolean accept(File f) { return f.isDirectory() || (f.isFile() && f.getName().toLowerCase().endsWith(".gpx")); }
			}
		);
		
		return 
			choose.showOpenDialog(null)==JFileChooser.APPROVE_OPTION
			? Stream.of(choose.getSelectedFiles())
			: Stream.empty()
		;
	}
}