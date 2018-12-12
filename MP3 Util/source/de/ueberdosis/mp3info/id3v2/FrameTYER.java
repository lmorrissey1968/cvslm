package de.ueberdosis.mp3info.id3v2;

import de.ueberdosis.mp3info.gui.Id3JPanel;

/** Year frame 
 * The 'Year' frame is a numeric string with a year of the recording. This 
 * frames is always four characters long (until the year 10000).
 *
 * @author Florian Heer
 * @version $Id: FrameTYER.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTYER extends FrameT {
    public String getLongName ()  { return "Year frame"; }

    public FrameTYER () { super ("TYER"); }

    public FrameTYER (ID3V2Frame frame) {
	super (frame);
    }

    public FrameTYER (ID3V2Frame frm, DataSource ds) 
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nYear : " 
	    + text;
    }

    public boolean canEdit () { return true; }
    public boolean canDisplay () { return true; }

    public Id3JPanel createJPanel (boolean edit, boolean selfupdate) {
	return super.createJPanel (edit, selfupdate, "Year of recording:");
    }

}
