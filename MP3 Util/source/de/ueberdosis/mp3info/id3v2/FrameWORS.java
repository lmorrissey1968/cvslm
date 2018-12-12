package de.ueberdosis.mp3info.id3v2;

/** Oficial internet radio station url frame
 * The 'Official internet radio station homepage' contains a URL pointing
 * at the homepage of the internet radio station.
 *
 * @author Florian Heer
 * @version $Id: FrameWORS.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameWORS extends FrameW {
    public String getLongName ()  { return "Official internet radio station URL frame"; }

    public FrameWORS (ID3V2Frame frm) {
        super (frm);
    }

    public FrameWORS (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + "\nURL : "
	    + url;
    }

}
