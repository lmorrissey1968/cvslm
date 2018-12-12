package de.ueberdosis.mp3info.gui.event;

/** Listener for data updates in Id3Jpanels
 *
 * @author Florian Heer
 * @version $Id: UpdateListener.java,v 1.1 2004/12/14 11:20:13 g137997 Exp $
 */

public interface UpdateListener {
    /** Is called when data have been updated
     * @param ue information about the update 
     */
    public void dataUpdated (UpdateEvent ue);
}

