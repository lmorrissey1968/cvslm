package de.ueberdosis.mp3info.id3v2;

/** Commercial url frame
 * The 'Commercial information' frame is a URL pointing at a webpage with
 * information such as where the album can be bought. There may be more
 * than one "WCOM" frame in a tag, but not with the same content.
 *
 * @author Florian Heer
 * @version $Id: FrameWCOM.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameWCOM extends FrameW {
    public String getLongName ()  { return "Commercial URL frame"; }

    public FrameWCOM (ID3V2Frame frm) {
        super (frm);
    }

    public FrameWCOM (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + "\nURL : "
	    + url;
    }

}
