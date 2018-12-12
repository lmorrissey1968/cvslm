package de.ueberdosis.mp3info.id3v2;

/** Date frame
 * @author Florian Heer
 * @version $Id: FrameTDAT.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTDAT extends FrameT {
    public String getLongName ()  { return "Copyright frame"; }

    public FrameTDAT (ID3V2Frame frm) {
        super (frm);
    }

    public FrameTDAT (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nDate : "
	    + text;
    }

}
