/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/ModDetectingComboBoxEditor.java,v 1.1 2007/08/16 17:39:40 g137997 Exp $
 * 
 * ModDetectingComboBoxEditor
 * Created on Jul 20, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.util;

import java.awt.Component;
import java.awt.event.ActionListener;

import javax.swing.ComboBoxEditor;
import javax.swing.JTextField;

public class ModDetectingComboBoxEditor implements ComboBoxEditor
{
	private JTextField mEditor;
	
	public ModDetectingComboBoxEditor(int cols)
	{
		this.mEditor = new JTextField(cols);
	}
	
	/*** @see javax.swing.ComboBoxEditor#getEditorComponent() */
	public Component getEditorComponent() {
		return mEditor;
	}

	/*** @see javax.swing.ComboBoxEditor#getItem() */
	public Object getItem() {
		return mEditor.getText();
	}

	/*** @see javax.swing.ComboBoxEditor#setItem(java.lang.Object) */
	public void setItem(Object value) {
		mEditor.setText(value==null ? "" : (String)value);
	}

	/*** @see javax.swing.ComboBoxEditor#addActionListener(java.awt.event.ActionListener) */
	public void addActionListener(ActionListener l) {
		mEditor.addActionListener(l);
	}

	/*** @see javax.swing.ComboBoxEditor#removeActionListener(java.awt.event.ActionListener) */
	public void removeActionListener(ActionListener l) {
		mEditor.removeActionListener(l);
	}

	/*** @see javax.swing.ComboBoxEditor#selectAll() */
	public void selectAll() {
		mEditor.selectAll();
		mEditor.requestFocus();
	}
}

/**
 * 
 * $Log: ModDetectingComboBoxEditor.java,v $
 * Revision 1.1  2007/08/16 17:39:40  g137997
 * Re-organized and added utilities.
 *
 * Revision 1.1  2007/07/20 19:41:36  g137997
 * Extracted into standalone class.
 *
 * 
 */