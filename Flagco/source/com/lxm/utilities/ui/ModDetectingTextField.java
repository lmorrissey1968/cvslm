/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/ModDetectingTextField.java,v 1.3 2007/09/10 12:02:16 g137997 Exp $
 * 
 * ModDetectingTextField
 * Created on May 22, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.ui;

import java.awt.Color;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;

import javax.swing.JTextField;
import javax.swing.event.CaretEvent;
import javax.swing.event.CaretListener;
import javax.swing.text.Document;

import com.lxm.utilities.db.UtilDB;

public class ModDetectingTextField extends JTextField
{
	private String mOriginalValue;
	private Color mOriginalColor;

	public ModDetectingTextField()
	{
		common();
	}

	public ModDetectingTextField(String aText)
	{
		super(aText);
		common();
	}

	public ModDetectingTextField(int aColumns)
	{
		super(aColumns);
		common();
	}

	public ModDetectingTextField(String aText, int aColumns)
	{
		super(aText, aColumns);
		common();
	}

	public ModDetectingTextField(Document aDoc, String aText, int aColumns)
	{
		super(aDoc, aText, aColumns);
		common();
	}
	
	private void common() {
		this.mOriginalColor = getBackground();
		addFocusListener(
			new FocusAdapter() {
				/*** @see java.awt.event.FocusAdapter#focusGained(java.awt.event.FocusEvent) */
				public void focusGained(FocusEvent e) {
					selectAll();
					mOriginalValue = getText();
				}
				
				/*** @see java.awt.event.FocusAdapter#focusLost(java.awt.event.FocusEvent) */
				public void focusLost(FocusEvent e) {
					if(!UtilDB.equals(getText(),mOriginalValue)) {
						setBackground(Color.PINK);
					}
				}
			}
		);

		addCaretListener(
			new CaretListener() {
				public void caretUpdate(CaretEvent e) {
					if(!UtilDB.equals(getText(),mOriginalValue)) {
						setBackground(Color.PINK);
					}
				}
			}
		);
	}
	
	public void setAndReset(String text) {
		setText(text);
		reset();
	}

	public void reset() {
		this.mOriginalValue = getText();
		setBackground(mOriginalColor);
	}
	
	//public static ModDetectingTextField tf1,tf2;
	//
	//public static void main(String[] args) {
	//	JFrame f = new JFrame("TEST");
	//	f.setLayout(new FlowLayout());
	//	f.add(tf1 = new ModDetectingTextField(20));
	//	f.add(tf2 = new ModDetectingTextField(20));
	//	f.add(
	//		new ActionButton("RESET") {
	//			public void actionPerformed(ActionEvent e) {
	//				tf2.reset();
	//				tf1.reset();
	//			}
	//		}
	//	);
	//	f.pack();
	//	f.setLocationRelativeTo(null);
	//	f.setVisible(true);
	//}
}


/**
 * 
 * $Log: ModDetectingTextField.java,v $
 * Revision 1.3  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.2  2007/05/22 15:08:30  g137997
 * Disabled unit-test code.
 *
 * Revision 1.1  2007/05/22 15:07:32  g137997
 * Initial check-in.
 *
 * 
 */