/**
 * 
 * Utility_CombineGPX
 * Created on Jul 24, 2020
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

import org.w3c.dom.Node;

import com.lmco.adp.gpx.NodeIterator;
import com.lmco.adp.gpx.UtilGPX;
import com.lmco.adp.utility.ui.GUIUtil_IM;
import com.lmco.adp.utility.xml.DocumentManager;

/**
 * @author Lawrence Morrissey (lmorr)
 */
public class Utility_CombineGPX extends UtilGPX {
	public static void main(String[] args) throws Exception {
		File[] fa = getFiles(args.length>0?args[0]:".").toArray(File[]::new);

		DocumentManager doc = new DocumentManager(false);
		Node gpx = doc.appendChild(doc.importNode(getXML(fa[0]),false));
		
		Stream.of(fa)
			.map(Utility_CombineGPX::getXML)
			.map(NodeIterator::new).flatMap(NodeIterator::stream)
			.forEach(n->gpx.appendChild(doc.importNode(n,true)))
		;
		
		doc.write(GUIUtil_IM.chooseFile(null,".","out.gpx"));
	}
	
	public static final Node getXML(File f) {
		try {
			return getFirst(new DocumentManager(false).loadPT(new FileInputStream(f)),"gpx");
		} catch (Exception exc) {
			throw new RuntimeException(exc);
		}
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


/**
 * 
 * $Log$
 * 
 */