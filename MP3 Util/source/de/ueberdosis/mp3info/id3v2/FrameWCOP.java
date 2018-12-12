package de.ueberdosis.mp3info.id3v2;

/** Copyright url frame
 * The 'Copyright/Legal information' frame is a URL pointing at a webpage
 * where the terms of use and ownership of the file is described.
 *
 * @author Florian Heer
 * @version $Id: FrameWCOP.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameWCOP extends FrameW {
    public String getLongName ()  { return "Copyright URL frame"; }

    public FrameWCOP (ID3V2Frame frm) {
        super (frm);
    }

    public FrameWCOP (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + "\nURL : "
	    + url;
    }

}
