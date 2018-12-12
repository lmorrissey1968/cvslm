/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/FileSelector.java,v 1.1 2007/09/10 12:02:16 g137997 Exp $
 * 
 * FileSelector
 * Created on Sep 6, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.ui;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.io.File;

import javax.swing.JComponent;
import javax.swing.JTextField;

public abstract class FileSelector extends JComponent
{
	private JTextField mTargetDirDisplay = new JTextField(40);
	private File mTargetDirectory;
	
	public FileSelector(String aBase)
	{
		this(new File(aBase));
	}
	
	public FileSelector(File aBase)
	{
		this.mTargetDirectory = aBase;
		setLayout(new FlowLayout(FlowLayout.LEADING,0,0));
		mTargetDirDisplay.setText(aBase.getAbsolutePath().toString());
		mTargetDirDisplay.setEditable(false);
		add(mTargetDirDisplay);
		add(
			new ActionButton(UtilUI.getStandardImageIcon("openFile.gif")) {
				public void actionPerformed(ActionEvent e) {
					mTargetDirectory = UtilUI.chooseDirectory(this,mTargetDirectory);
					mTargetDirDisplay.setText(mTargetDirectory.toString());
					targetChanged(mTargetDirectory);
				}
			}
		);
	}

	public File getTargetDirectory() {
		return mTargetDirectory;
	}
	
	public abstract void targetChanged(File target);
}


/**
 * 
 * $Log: FileSelector.java,v $
 * Revision 1.1  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * 
 */