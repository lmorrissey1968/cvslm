/**
 * 
 * Utility_CombineGPX
 * Created on Jul 24, 2020
 *
 * � Lockheed Martin Corporation, (2020). All rights reserved
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

import com.lmco.adp.gpx.util.NodeIterator;
import com.lmco.adp.gpx.util.UtilityFunctions;
import com.lmco.adp.utility.ui.GUIUtil_IM;
import com.lmco.adp.utility.xml.DocumentManager;

/**
 * @author Lawrence Morrissey (lmorr)
 */
public class Utility_CombineGPX extends UtilityFunctions {
	public static void main(String[] args) throws Exception {
		File[] fa = getFiles(args.length>0?args[0]:".").toArray(File[]::new);

		DocumentManager doc = new DocumentManager(false);
		Node gpx = doc.appendChild(doc.importNode(getXML(fa[0]),false));
		
		Node[] nodes = Stream.of(fa).map(Utility_CombineGPX::getXML).toArray(Node[]::new);
		
		Stream.of(nodes)
			.flatMap(NodeIterator::getStream)
			.filter(n->n.getNodeName().equals("wpt"))
			.forEach(n->gpx.appendChild(doc.importNode(n,true)))
		;
		
		Stream.of(nodes)
			.flatMap(NodeIterator::getStream)
			.filter(n->n.getNodeName().equals("trk"))
			//.forEach(n->gpx.appendChild(doc.importNode(n,true)))
			.forEach(n->gpx.appendChild(importTRK(doc,n)))
		;

		doc.write(GUIUtil_IM.chooseFile(null,".","out.gpx"));
	}
	
	public static final Node importTRK(DocumentManager doc,Node n) {
		Node trk = doc.importNode(n,false);
		Node trkseg = doc.importNode(getFirst(n,"trkseg"),false); 
		trk.appendChild(doc.importNode(getFirst(n,"name"),true));
		trk.appendChild(doc.importNode(getFirst(n,"desc"),true));
		trk.appendChild(trkseg);
		new NodeIterator(n)
			.stream("trkseg")
			.flatMap(NodeIterator::getStream)
			.map(trkpt->doc.importNode(trkpt,true))
			.forEach(trkseg::appendChild)
		;
		return trk;
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