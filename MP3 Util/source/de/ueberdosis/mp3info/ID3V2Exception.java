package de.ueberdosis.mp3info;

/** Contains information about a possibly encountered ID3V2-Tag 
 * @author Florian Heer
 * @version $Id: ID3V2Exception.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */

public class ID3V2Exception extends ID3TagException {
    /** Creates an instance of the exception
     * @param message an explaning message */
    public ID3V2Exception (String message) {
        super (message);
    }
}
