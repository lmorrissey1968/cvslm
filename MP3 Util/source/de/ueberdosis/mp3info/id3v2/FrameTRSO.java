package de.ueberdosis.mp3info.id3v2;

/** Inet radio station owner frame
 * The 'Internet radio station owner' frame contains the name of the owner
 * of the internet radio station from which the audio is streamed.
 *
 * @author Florian Heer
 * @version $Id: FrameTRSO.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTRSO extends FrameT {
    public String getLongName ()  { return "Internet radio station owner frame"; }

    public FrameTRSO (ID3V2Frame frm) {
        super (frm);
    }

    public FrameTRSO (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nInternet radio station owner: "
	    + text;
    }

}
