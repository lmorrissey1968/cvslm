package de.ueberdosis.mp3info.id3v2;

/** Oficial artist url frame
 * The 'Official artist/performer webpage' frame is a URL pointing at
 * the artists official webpage. There may be more than one "WOAR"
 * frame in a tag if the audio contains more than one performer, but not
 * with the same content.
 *
 * @author Florian Heer
 * @version $Id: FrameWOAR.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameWOAR extends FrameW {
    public String getLongName ()  { return "Official artist URL frame"; }

    public FrameWOAR (ID3V2Frame frm) {
        super (frm);
    }

    public FrameWOAR (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + "\nURL : "
	    + url;
    }

}
