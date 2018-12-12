package de.ueberdosis.mp3info;

/** Contains information about a possibly encountered ID3-Tag 
 * @author Florian Heer
 * @version $Id: ID3TagException.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */

public class ID3TagException extends Exception {
    /** the position at which a tag was encountered */
    private long position = 0;

    /** Creates an instance of the Exception 
     * @param message an explaining text.
     */
    public ID3TagException (String message) {
        super (message);
    }

    /** Sets the position at which this exception occured */
    void setPosition (long pos) { position = pos; }
    /** @return the position at which this exception occurred */
    public long getPosition () { return position; }
    /** Creates a String representation of this exception */
    public String toString () { return super.toString () + " at " + position; }
}
