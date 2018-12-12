/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/ConfirmButton.java,v 1.1 2007/08/16 17:39:40 g137997 Exp $
 * 
 * ConfirmButton
 * Created on Aug 15, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.util;

import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;

public abstract class ConfirmButton extends JButton implements ActionListener 
{
	public ConfirmButton(String label)
	{
		super(label);
		setMargin(new Insets(2,2,2,2));
		addActionListener(
			new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					if(Util.yesNoDialog(ConfirmButton.this)) {
						ConfirmButton.this.actionPerformed(e);
					}
				}
			}
		);
	}
}

/**
 * 
 * $Log: ConfirmButton.java,v $
 * Revision 1.1  2007/08/16 17:39:40  g137997
 * Re-organized and added utilities.
 *
 * 
 */