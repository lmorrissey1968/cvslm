package de.ueberdosis.mp3info.id3v2;

/** Payment url frame
 * The 'Payment' frame is a URL pointing at a webpage that will handle the
 * process of paying for this file.
 *
 * @author Florian Heer
 * @version $Id: FrameWPAY.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameWPAY extends FrameW {
    public String getLongName ()  { return "Payment URL frame"; }

    public FrameWPAY (ID3V2Frame frm) {
        super (frm);
    }

    public FrameWPAY (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + "\nURL : "
	    + url;
    }

}
