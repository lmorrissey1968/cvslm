package de.ueberdosis.mp3info.id3v2;

/** ISRC frame
 *The 'ISRC' frame should contain the International Standard Recording 
 * Code (ISRC) (12 characters).
 *
 * @author Florian Heer
 * @version $Id: FrameTSRC.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTSRC extends FrameT {
    public String getLongName ()  { return "ISRC frame"; }

    public FrameTSRC (ID3V2Frame frm, DataSource ds) 
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nISRC : " 
	    + text;
    }

}
