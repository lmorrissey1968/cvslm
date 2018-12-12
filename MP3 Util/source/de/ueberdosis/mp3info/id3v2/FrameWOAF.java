package de.ueberdosis.mp3info.id3v2;

/** Oficial audio url frame
 * The 'Official audio file webpage' frame is a URL pointing at a file
 * specific webpage.
 *
 * @author Florian Heer
 * @version $Id: FrameWOAF.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameWOAF extends FrameW {
    public String getLongName ()  { return "Official URL frame"; }

    public FrameWOAF (ID3V2Frame frm) {
        super (frm);
    }

    public FrameWOAF (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + "\nURL : "
	    + url;
    }

}
