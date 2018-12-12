package com.lxm.test;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

import de.ueberdosis.mp3info.ID3Tag;
import de.ueberdosis.mp3info.ID3Writer;
import de.ueberdosis.util.OutputCtr;

/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/test/ID3Dumper.java,v 1.1 2007/08/21 17:47:52 g137997 Exp $
 * 
 * ID3Dumper
 * Created on Dec 13, 2004
 *
 * © Lockheed Martin Corporation, (2004). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

/**
 * This class is an MP3 tagger that will be used to retag MP3 files.
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.1 $
 */
public class ID3Dumper extends ID3Writer {

	public ID3Dumper(File aFile) throws FileNotFoundException, IOException {
		ID3Tag tag = new ID3Tag();
		tag.setTitle(JOptionPane.showInputDialog("Title","<title>"));
		tag.setArtist(JOptionPane.showInputDialog("Artist","<artist>"));
		tag.setAlbum(JOptionPane.showInputDialog("Album","<album>"));
		writeTag(new RandomAccessFile(aFile,"rw"),tag);
	}

	public static void main(String[] args)  {
		OutputCtr.setLevel(0);
		JFileChooser choose = new JFileChooser(".");
		if(choose.showDialog(null,"Choose MP3 File")==JFileChooser.APPROVE_OPTION){
			try {
				new ID3Dumper(choose.getSelectedFile());
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.exit(0);
	}
}


/**
 * 
 * $Log: ID3Dumper.java,v $
 * Revision 1.1  2007/08/21 17:47:52  g137997
 * More reorganization.
 *
 * Revision 1.1  2007/08/21 17:43:27  g137997
 * Reorganization.
 *
 * Revision 1.4  2005/03/24 15:32:33  g137997
 * Change test
 *
 * Revision 1.3  2005/03/24 15:27:02  g137997
 * Changed comment.
 *
 * Revision 1.2  2005/03/24 13:27:27  g137997
 * Test commit.
 *
 * Revision 1.1  2004/12/14 11:20:13  g137997
 * Initial check-in.
 *
 * 
 */