package de.ueberdosis.mp3info.id3v2;

/** Media Frame
 * The 'Media type' frame describes from which media the sound originated. 
 * This may be a text string or a reference to the predefined media types 
 * found in the list below. References are made within "(" and ")" and are 
 * optionally followed by a text refinement, e.g. "(MC) with four channels". 
 * If a text refinement should begin with a "(" character it should be 
 * replaced with "((" in the same way as in the "TCO" frame. Predefined 
 * refinements is appended after the media type, e.g. "(CD/A)" or 
 * "(VID/PAL/VHS)".
 *
 * DIG   Other digital media
 *   /A    Analog transfer from media
 * ANA   Other analog media
 *   /WAC  Wax cylinder
 *   /8CA  8-track tape cassette
 * CD    CD
 *   /A    Analog transfer from media
 *   /DD DDD
 *   /AD ADD
 *   /AA AAD
 * LD Laserdisc
 *   /A  Analog transfer from media
 * TT Turntable records
 *   /33 33.33 rpm
 *   /45 45 rpm
 *   /71 71.29 rpm
 *   /76 76.59 rpm
 *   /78 78.26 rpm
 *   /80 80 rpm
 * MD MiniDisc
 *   /A   Analog transfer from media
 * DAT DAT
 *   /A Analog transfer from media
 *   /1 standard, 48 kHz/16 bits, linear
 *   /2 mode 2, 32 kHz/16 bits, linear
 *   /3 mode 3, 32 kHz/12 bits, nonlinear, low speed
 *   /4 mode 4, 32 kHz/12 bits, 4 channels
 *   /5 mode 5, 44.1 kHz/16 bits, linear
 *   /6 mode 6, 44.1 kHz/16 bits, 'wide track' play
 * DCC DCC
 *   /A  Analog transfer from media
 * DVD DVD
 *   /A  Analog transfer from media
 * TV Television
 *   /PAL   PAL
 *   /NTSC  NTSC
 *   /SECAM SECAM
 * VID Video
 *   /PAL   PAL
 *   /NTSC  NTSC
 *   /SECAM SECAM
 *   /VHS   VHS
 *   /SVHS  S-VHS
 *   /BETA  BETAMAX
 * RAD Radio
 *   /FM FM
 *   /AM AM
 *   /LW LW
 *   /MW MW
 * TEL Telephone
 *   /I ISDN
 * MC MC (normal cassette)
 *   /4   4.75 cm/s (normal speed for a two sided cassette)
 *   /9   9.5 cm/s
 *   /I   Type I cassette (ferric/normal)
 *   /II  Type II cassette (chrome)
 *   /III Type III cassette (ferric chrome)
 *   /IV  Type IV cassette (metal)
 * REE Reel
 *   /9   9.5 cm/s
 *   /19  19 cm/s
 *   /38  38 cm/s
 *   /76  76 cm/s
 *   /I   Type I cassette (ferric/normal)
 *   /II  Type II cassette (chrome)
 *   /III Type III cassette (ferric chrome)
 *   /IV  Type IV cassette (metal)
 *
 * @author Florian Heer
 * @version $Id: FrameTMED.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public class FrameTMED extends FrameT {
    public String getLongName ()  { return "Media frame"; }

    public FrameTMED (ID3V2Frame frame) {
	    super (frame);
    }

    public FrameTMED (ID3V2Frame frm, DataSource ds) 
        throws SeekPastEndException {
	    super (frm, ds);
    }

    public String toString () {
	return getLongName () + " Encoding: "+encoding+"\nOriginal media : " 
	    + text;
    }

}
