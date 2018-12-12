/**
 * 
 * $Header: /repository/CVSLM/Testing/source/com/lxm/test/TestAddComponents.java,v 1.1 2007/05/21 14:41:17 g137997 Exp $
 * 
 * TestAddComponents
 * Created on May 21, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.test;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;

import com.lxm.utilities.ui.ActionButton;
import com.lxm.utilities.ui.ColumnLayout;
import com.lxm.utilities.ui.JPanelBuilder;

public class TestAddComponents extends JFrame
{

	
	private JPanel mContainer;

	public TestAddComponents()
	{
		super("Test Add Components");
		setLayout(new BorderLayout());
		add(
			new JScrollPane(
				this.mContainer = new JPanel(new ColumnLayout(2)) {
					public Dimension getPreferredSize() {
						return new Dimension(600,400);
					}
				},
				JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,
				JScrollPane.HORIZONTAL_SCROLLBAR_NEVER
			),
			BorderLayout.CENTER
		);
		add(
			new JPanelBuilder(new FlowLayout(FlowLayout.CENTER)) {
				public void configure() {
					add(
						new ActionButton("Add") {
							public void actionPerformed(ActionEvent e) {
								addRow();
							}
						}
					);
					add(
						new ActionButton("Remove") {
							public void actionPerformed(ActionEvent e) {
								removeRow();
							}
						}
					);
				}
			},
			BorderLayout.SOUTH
		);
		pack();
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLocationRelativeTo(null);
		setVisible(true);
	}
	
	public static final String[] WORDS = {
		"Short","Long","Medium","Very Long","Very Very Long","Somewhere Over The Rainbow"
	};
	
	private void addRow() {
		ColumnLayout.addLabeledRow(
			mContainer,WORDS[(int)(System.currentTimeMillis()%WORDS.length)],
			new JTextField((int)(System.currentTimeMillis()%10+10))
		);
		validate();
	}

	private void removeRow() {
		
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new TestAddComponents();
	}

}


/**
 * 
 * $Log: TestAddComponents.java,v $
 * Revision 1.1  2007/05/21 14:41:17  g137997
 * Initial check-in.
 *
 * 
 */