package de.ueberdosis.mp3info.id3v2;

/** Original file name Frame
 * The 'Original filename' frame contains the preferred filename for the
 * file, since some media doesn't allow the desired length of the
 * filename. The filename is case sensitive and includes its suffix.
 *
 * @author Florian Heer
 * @version $Id: FrameTOFN.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTOFN extends FrameT {
    public String getLongName ()  { return "Original file name frame"; }

    public FrameTOFN (ID3V2Frame frm) {
        super (frm);
    }

    public FrameTOFN (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nOriginal file name : "
	    + text;
    }

}
