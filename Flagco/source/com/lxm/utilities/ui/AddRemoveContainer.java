/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/AddRemoveContainer.java,v 1.1 2007/09/10 12:02:16 g137997 Exp $
 * 
 * AddRemoveContainer
 * Created on Apr 27, 2004
 *
 * © Lockheed Martin Corporation, (2004). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */
 
package com.lxm.utilities.ui;

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.JPanel;
import javax.swing.JScrollPane;


/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.1 $
 */
public abstract class AddRemoveContainer extends JPanel 
{
	private Dimension mSize;
	private Container mControls;
	private Component mCenterComponent;

	public AddRemoveContainer(
		Component aCenterComponent,
		String aBorderLabel,
		int aWidth,
		int aHeight
	) {
		this(aBorderLabel,aWidth,aHeight);
		setCenterComponent(aCenterComponent);
	}

	/**
	 * Constructor
	 */
	public AddRemoveContainer(
		String aBorderLabel,
		int aWidth,
		int aHeight
	) {
		super(new BorderLayout());
		this.mSize = new Dimension(aWidth,aHeight);
		
		setBorder( BorderFactory.createTitledBorder( aBorderLabel ) );
		
		mControls = new Container();
		mControls.setLayout(new FlowLayout(FlowLayout.CENTER,1,1));
		
		addControl(UtilUI.makeStandardGraphicButton(
			"Add",
			"add.gif",
			new ActionListener(){
				public void actionPerformed(ActionEvent e) {
					add();
				}
			}
		));
		
		addControl(UtilUI.makeStandardGraphicButton(
			"Remove",
			"remove.gif",
			new ActionListener(){
				public void actionPerformed(ActionEvent e) {
					remove();
				}
			}
		));
		
		add( 
			mControls, 
			BorderLayout.SOUTH 
		);

	}
	
	public void setCenterComponent(Component aCenterComponent) {
		add( 
			new JScrollPane(this.mCenterComponent = aCenterComponent){
				public Dimension getPreferredSize() { return mSize; }
			},
			BorderLayout.CENTER 
		);
	}

	public Component getCenterComponent() {
		return mCenterComponent;
	}

	public AddRemoveContainer addControl(Component aControl) {
		mControls.add(aControl);
		return this;
	}

	/**
	 * UGLY!
	 * @return
	 */
	public AddRemoveContainer removeAllControls() {
		mControls.removeAll();
		return this;
	}

	public abstract void remove();

	public abstract void add();
}


/**
 * 
 * $Log: AddRemoveContainer.java,v $
 * Revision 1.1  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.1  2007/03/25 14:36:52  g137997
 * Imported several usefull utilities from another development effort.
 *
 * Revision 1.3  2005/09/15 18:50:11  g137997
 * Did some re-formatting and organization.
 *
 * Revision 1.2  2005/08/15 14:05:31  g596060
 * Added clear method to remove buttons.
 *
 * Revision 1.1  2005/08/04 22:00:56  g137997
 * Moved more common stuff from OSA to Common Utilities.
 *
 * Revision 1.2  2005/07/18 16:44:23  g137997
 * Re-located common image icons.
 *
 * Revision 1.1  2005/05/25 10:20:43  g596060
 * Mods due to changing package name for OSA comm, entities, media, etc.,
 * classes and resources.
 *
 * Revision 1.5  2005/05/24 17:22:36  g596060
 * Mods due to changing package name for OSA utility classes.
 * Also, organized imports.
 *
 * Revision 1.4  2005/05/11 15:11:44  g596060
 * Added getter for passed in component since cannot get when
 * calling a super constructor.
 *
 * Revision 1.3  2005/03/15 19:13:34  g137997
 * Re-orged code a bit.
 *
 * Revision 1.2  2005/01/17 20:37:20  g137997
 * Re-organized AddRemoveContainer and AddRemoveReorderContainer and
 * added AddRemoveModifyContainer.
 *
 * Revision 1.1  2004/04/27 22:18:55  lxm01
 * Initial check-in.
 * This class is JPanel that formes a framed shell for GUI collections that may
 * have items added, removed, etc.
 *
 * 
 */