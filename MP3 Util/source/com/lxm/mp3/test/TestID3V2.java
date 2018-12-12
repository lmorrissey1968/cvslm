/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/test/TestID3V2.java,v 1.1 2007/08/21 17:47:52 g137997 Exp $
 * 
 * TestID3V2
 * Created on Oct 27, 2006
 *
 * © Lockheed Martin Corporation, (2006). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.test;

import java.io.FileNotFoundException;
import java.io.RandomAccessFile;

import de.ueberdosis.mp3info.id3v2.ID3V2Reader;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class TestID3V2
{

	/**
	 * @param args
	 * @throws FileNotFoundException 
	 */
	public static void main(String[] args) throws FileNotFoundException {
		ID3V2Reader rr = new ID3V2Reader(new RandomAccessFile(args[0],"r"),0);
		
	}

}


/**
 * 
 * $Log: TestID3V2.java,v $
 * Revision 1.1  2007/08/21 17:47:52  g137997
 * More reorganization.
 *
 * Revision 1.1  2007/08/21 17:43:27  g137997
 * Reorganization.
 *
 * Revision 1.1  2006/10/27 20:35:39  g137997
 * New MP3 tag stuff.
 *
 * 
 */