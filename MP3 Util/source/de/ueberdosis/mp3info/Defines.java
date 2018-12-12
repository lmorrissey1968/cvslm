package de.ueberdosis.mp3info;

/** Contains global constants.
 *
 * @author Florian Heer, Feng ZHOU (zfff at user.sourceforge.net)
 * @version $Id: Defines.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */
public interface Defines {
    /** Number of bytes an ID3v2-header uses */
    public static final int ID3V2_HEADER_SIZE=10;

    /** Number of bytes an ID3v2-footer uses */
    public static final int ID3V2_FOOTER_SIZE = 10;

    /** Number of bytes an extended ID3v2 header uses */
    // FIXME! What does the documentation say?
    public static final int ID3V2_X_HEADER_SIZE = 10;
    /** Number of flags supported */
    // FIXME! What does the docu say?
    public static final int SUPPORTED_NUMBER_OF_EXTENDED_FLAG_BYTES = 10;


    /** Number of bytes an MP3-header uses */
    public static final int MP3_FRAME_HEADER_SIZE=4;

    /** Number of bytes an ID3v2-frame-header uses */
    public static final int ID3V2_FRAME_HEADER_SIZE = 10;

    // Currently only needed for ID3Reader.checkVBR () but
    // all fixed information should be collected here...
    //
    // randomly chosen list of positions to look for frames. If frames
    // found near those positions have the same bitrate, probably
    // FBR is used.
    // I really should implement parsing the VBR header...
    public static final long [] 
	testPositions = { 0, 500, 1200, 1700, 2500, 3200, 5000, 6000, 
			  6400, 9000, 9500, 10400, 12000, 17000, 
			  25000 };

    /** The encoding used if not set otherwise */
    public static final String DEFAULT_ENCODING = System.getProperty("id3.default_encoding", "ISO-8859-1");

    /** Version number of the current release */
    public static final String VERSION = "mp3info V1.6.0d8";



}
