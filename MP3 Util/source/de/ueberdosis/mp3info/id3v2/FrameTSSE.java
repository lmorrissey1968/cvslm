package de.ueberdosis.mp3info.id3v2;

/** Soft-/Hardwaresettings frame
 * The 'Software/Hardware and settings used for encoding' frame includes
 * the used audio encoder and its settings when the file was encoded.
 * Hardware refers to hardware encoders, not the computer on which a
 * program was run.
 *
 * @author Florian Heer
 * @version $Id: FrameTSSE.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTSSE extends FrameT {
    public String getLongName ()  { return "Soft-/hardwaresetting frame"; }

    public FrameTSSE (ID3V2Frame frm) {
        super (frm);
    }

    public FrameTSSE (ID3V2Frame frm, DataSource ds)
	throws SeekPastEndException {
	super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nSoft-/hardwaresettings : "
	    + text;
    }

}
