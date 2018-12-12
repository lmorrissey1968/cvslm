package de.ueberdosis.mp3info.id3v2;

/** File owner Frame
 * The 'File owner/licensee' frame contains the name of the owner or 
 * licensee of the file and it's contents.
 *
 * @author Florian Heer
 * @version $Id: FrameTOWN.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTOWN extends FrameT {
    public String getLongName ()  { return "File owner frame"; }

    public FrameTOWN (ID3V2Frame frm, DataSource ds) 
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nOriginal release year : " 
	    + text;
    }

}
