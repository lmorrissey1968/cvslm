/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/AddRemoveListList.java,v 1.1 2007/09/10 12:02:16 g137997 Exp $
 * 
 * AddRemoveListList
 * Created on Oct 8, 2003
 *
 * © Lockheed Martin Corporation, (2003). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.ui;

import java.util.Date;

import javax.swing.JOptionPane;



/**
 * This class creates a JList with attached Add and Remove buttons all inside a labeled border.
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.1 $
 */
public class AddRemoveListList extends AddRemoveContainer 
{
	private ListBasedJList mItemList;
	private ItemProducer mItemProducer;
	private int mHeight;
	private int mWidth;
	
	public AddRemoveListList(
		String aBorderLabel,
		ItemProducer aItemProducer,
		int aWidth,
		int aHeight
	){
		super(aBorderLabel,aWidth,aHeight);
		this.mItemProducer = aItemProducer;
		setCenterComponent(this.mItemList = new ListBasedJList());
	}
	
	/*** @see com.lmco.adp.utility.ui.AddRemoveContainer#add() */
	public void add() {
		Object item = mItemProducer.getNewItem();
		if(item!=null)mItemList.addItem(item);
	}

	/*** @see com.lmco.adp.utility.ui.AddRemoveContainer#remove() */
	public void remove() {
		mItemList.removeItem(mItemList.getSelectedValue());
	}

	/**
	 * The getNewItem(...) method of an implementor of this
	 * interface is what will be called when the user clicks
	 * the add button.
	 */
	public static interface ItemProducer 
	{
		public Object getNewItem();
	}
	
	/**
	 * Gets the embedded ListBasedJList
	 * @return The embedded ListBasedJList for this instance 
	 */
	public ListBasedJList getItemList() {
		return this.mItemList;
	}

//*******************************************************************************************
//* BEGIN UNIT TEST CODE
//*******************************************************************************************

	/**
	 * Entry point for unit testing
	 * @param Command line arguments
	 */
	public static void main(String[] args) {
		new UtilUI.TestFrame(
			"Add/Remove List List",
			new AddRemoveListList( 
				"Data",
				new ItemProducer(){
					public Object getNewItem() {
						return JOptionPane.showInputDialog(null,"Enter a value",new Date());
					}
				},
				300,300
			),
			true,
			true
		);
	}

	public void clear() {
		mItemList.clear();
	}
}

/**
 *
 * $Log: AddRemoveListList.java,v $
 * Revision 1.1  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.1  2007/03/25 14:36:52  g137997
 * Imported several usefull utilities from another development effort.
 *
 * Revision 1.1  2005/08/04 22:00:56  g137997
 * Moved more common stuff from OSA to Common Utilities.
 *
 * Revision 1.3  2005/07/18 16:16:23  g137997
 * Moved more common stuff to common project/package.
 *
 * Revision 1.2  2005/07/14 18:22:03  g137997
 * Moved some GUI utility code to common project.
 *
 * Revision 1.1  2005/05/25 10:20:43  g596060
 * Mods due to changing package name for OSA comm, entities, media, etc.,
 * classes and resources.
 *
 * Revision 1.7  2005/05/24 17:22:36  g596060
 * Mods due to changing package name for OSA utility classes.
 * Also, organized imports.
 *
 * Revision 1.6  2005/01/31 14:39:19  g137997
 * Renamed and converted nested interface to top level (AddRemoveMapTableItemProducer_IF).
 *
 * Revision 1.5  2005/01/17 20:37:45  g137997
 * Changed to extends AddRemoveContainer.
 *
 * Revision 1.4  2004/12/09 20:43:01  g137997
 * Added clear() method.
 *
 * Revision 1.3  2004/10/15 18:02:42  g137997
 * Organized imports.
 *
 * Revision 1.2  2004/08/26 13:24:42  g137997
 * Modified unit test code for Palmdale slide presentation.
 *
 * Revision 1.1  2004/04/28 21:08:32  lxm01
 * Renamed AddRemoveJList to AddRemoveListList.
 *
 * Revision 1.11  2004/04/21 00:01:15  lxm01
 * EasyJList was renamed to ListBasedJList.
 *
 * Revision 1.10  2004/04/16 00:14:55  lxm01
 * Changed border to take the default color.
 *
 * Revision 1.9  2004/04/14 00:34:03  lxm01
 * Changed ferom text only to graphical buttons.
 *
 * Revision 1.8  2004/03/23 00:22:17  lxm01
 * Changed TestDialog class.
 *
 * Revision 1.7  2004/03/19 01:07:09  lxm01
 * Made internal AddRemoveMapTableItemProducer_IF interface static.
 *
 * Revision 1.6  2004/03/02 18:47:14  lxm01
 * Moved "TestDialog" to common utility class.
 *
 * Revision 1.5  2004/02/27 01:47:08  lxm01
 * Renamed centerOnCenter(...) to centerOnScreen(...).
 *
 * Revision 1.4  2004/02/25 22:04:58  lxm01
 * Added some JavaDocs and renamed instance variables.
 *
 * Revision 1.3  2003/10/22 00:38:42  g137997
 * Added "plug-in" style item retrieval hooks.
 *
 * Revision 1.2  2003/10/17 18:04:44  g137997
 * Added CVS Header and Footer
 *
 *
 */