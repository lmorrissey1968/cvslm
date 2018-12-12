package de.ueberdosis.mp3info.id3v2;

/** Inet radio station frame
 * The 'Internet radio station name' frame contains the name of the
 * internet radio station from which the audio is streamed.
 *
 * @author Florian Heer
 * @version $Id: FrameTRSN.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTRSN extends FrameT {
    public String getLongName ()  { return "Internet radio station frame"; }

    public FrameTRSN (ID3V2Frame frm) {
        super (frm);
    }

    public FrameTRSN (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nInternet radio station: "
	    + text;
    }

}
