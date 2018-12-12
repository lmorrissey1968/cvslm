package de.ueberdosis.mp3info.id3v2;

/** BPM frame
 *
 * @author Florian Heer
 * @version $Id: FrameTBPM.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTBPM extends FrameT {
    public String getLongName ()  { return "BPM frame"; }

    public FrameTBPM (ID3V2Frame frm) {
        super (frm);
    }

    public FrameTBPM (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nBPM : "
	    + text;
    }

}
