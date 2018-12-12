/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/MP3Copier.java,v 1.2 2007/08/31 15:59:59 g137997 Exp $
 * 
 * MP3Copier
 * Created on Aug 21, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;

import javax.swing.JFrame;
import javax.swing.JScrollPane;

import com.lmco.adp.utility.ui.ActionButton;
import com.lmco.adp.utility.ui.GUIUtil_IM;
import com.lmco.adp.utility.ui.JPanelBuilder;

public class MP3Copier extends JFrame
{
	private MP3FileTable mSource;
	private MP3FileTable mTarget;

	public MP3Copier()
	{
		super("MP3 Copier");
		setLayout(new BorderLayout());
		add(new JScrollPane(this.mSource = new MP3FileTable()),BorderLayout.WEST);
		add(new JScrollPane(this.mTarget = new MP3FileTable()),BorderLayout.EAST);
		add(
			new JPanelBuilder(new FlowLayout(FlowLayout.CENTER,1,1)) {
				public void configure() {
					add(
						new ActionButton("Add Folder") {
							public void actionPerformed(ActionEvent e) {
								mSource.addFiles(
									GUIUtil_IM.chooseDirectory(mSource,"."),
									true
								);
								pack();
							}
						}
					);
				}
			},
			BorderLayout.SOUTH
		);
		pack();
		setLocation(100,100);
		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new MP3Copier();
	}

}


/**
 * 
 * $Log: MP3Copier.java,v $
 * Revision 1.2  2007/08/31 15:59:59  g137997
 * Moved file utilites to GUIUtil_IM in common.
 *
 * Revision 1.1  2007/08/21 20:59:11  g137997
 * Work in progress.
 *
 * 
 */