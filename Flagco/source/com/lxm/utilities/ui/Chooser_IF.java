/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/Chooser_IF.java,v 1.1 2007/09/10 12:02:16 g137997 Exp $
 * 
 * Chooser_IF
 * Created on Mar 10, 2004
 *
 * © Lockheed Martin Corporation, (2004). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */
 
package com.lxm.utilities.ui;

import javax.swing.JButton;

/**
 * This interface defines the requirements to be a Chooser_IF for a ChooserTextField.
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.1 $
 */
public interface Chooser_IF 
{
	/**
	 * Gets the buttons to add to the chooser field.
	 * @return The buttons to add to the chooser field.
	 */
	public JButton[] getButtons();
	
	/**
	 * The method that will be called back by the chooser field
	 * @param aTarget The button that was clicked.
	 * @param aOldValue The old value of the text field.
	 * @return The new value of the text field.
	 */
	public String choosePerformed(JButton aTarget,String aOldValue);
	
	/**
	 * Provides the implementor with a means to pre-process the data passed
	 * to setText(...) in ChooserTextField.
	 * @param aNewValue The value before processing.
	 * @return The value after processing.
	 */
	public String processSetValue(String aNewValue);
}


/**
 * 
 * $Log: Chooser_IF.java,v $
 * Revision 1.1  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.1  2007/03/25 14:36:52  g137997
 * Imported several usefull utilities from another development effort.
 *
 * Revision 1.1  2005/07/18 15:46:21  g137997
 * Re-located ChooserTextField and releated classes to common utilities.
 *
 * Revision 1.1  2005/05/25 10:20:43  g596060
 * Mods due to changing package name for OSA comm, entities, media, etc.,
 * classes and resources.
 *
 * Revision 1.3  2004/03/23 00:22:40  lxm01
 * Added processSetValue(...) to interface.
 *
 * Revision 1.2  2004/03/19 01:11:45  lxm01
 * Made ChooserTextField more versatile by making the buttons developer
 * configurable via interface implementor.
 *
 * Revision 1.1  2004/03/11 02:58:42  lxm01
 * Renamed FileChooserTextField to ChooserTextField and created an interface to
 * define the actions that may be triggered my a ChooserTextField.
 *
 * 
 */