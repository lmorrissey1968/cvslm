/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/LogonPanel.java,v 1.3 2007/05/17 13:06:09 g137997 Exp $
 * 
 * LogonPanel
 * Created on Mar 6, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

import com.lxm.utilities.ui.ActionButton;
import com.lxm.utilities.ui.ColumnLayout;
import com.lxm.utilities.ui.FlowContainer;
import com.lxm.utilities.ui.JPanelBuilder;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.3 $
 */
public class LogonPanel extends JPanel
{
	private JTextField mDriver = new JTextField(30);
	private JTextField mURL = new JTextField(30);
	private JTextField mUserID = new JTextField(12);
	private JTextField mPassword = new JPasswordField(12);
	private JCheckBox mSavePassword = new JCheckBox("Save Password");
	
	private JButton mAdvanced = new JButton("Enable Edit of Driver/URL");
	private JTextArea mMessage;

	public LogonPanel()
	{
		super(new BorderLayout(1,1));

		add(
			new JPanelBuilder(new ColumnLayout(2)) {
				public void configure() {
					ColumnLayout.addLabeledRow(this,"Driver",mDriver);
					ColumnLayout.addLabeledRow(this,"Database URL",mURL);
					ColumnLayout.addLabeledRow(this,"User ID",mUserID);
					ColumnLayout.addLabeledRow(this,"Password",new Object[]{mPassword,mSavePassword});
					mDriver.setEditable(false);
					mURL.setEditable(false);
				}
			},
			BorderLayout.CENTER
		);
		add(
			new FlowContainer(FlowLayout.CENTER,0,0).addComponent(mAdvanced),
			BorderLayout.SOUTH
		);
		
		mAdvanced.setBackground(Color.PINK);
		mAdvanced.addActionListener(
			new ActionListener() {
				boolean advanced = false;
				public void actionPerformed(ActionEvent e) {
					if(!advanced) {
						this.advanced = true;
						mAdvanced.setEnabled(false);
					}
					//this.advanced = !advanced;
					//mAdvanced.setText(advanced?"Disable Edit of Driver/URL":"Enable Edit of Driver/URL");
					mDriver.setEditable(advanced);
					mURL.setEditable(advanced);
				}
			}
		);
		
		mUserID.requestFocus();
	}
	
	public void error(Exception exc) {
		if(mMessage==null) {
			add(
				new JPanelBuilder(new BorderLayout(0,0)) {
					public void configure() {
						setBorder(BorderFactory.createTitledBorder("Error"));
						add(
							new JScrollPane(
								mMessage = new ErrorMessageTextArea(9,80)
							),
							BorderLayout.CENTER
						);
						add(
							new ActionButton("Copy Error to Clipboard") {
								public void actionPerformed(ActionEvent e) {
							        StringSelection ss = new StringSelection(mMessage.getText());
							        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(ss, null);
								}
							},
							BorderLayout.SOUTH
						);
					}
				},
				BorderLayout.NORTH
			);
		}else {
			mMessage.append("\n-------------------------------------------------------------\n");
		}
		mMessage.append(exc.getMessage());
	}
	
	/**
	 * @return the uRL
	 */
	public String getURL() {
		return mURL.getText().trim();
	}

	/**
	 * @return the userID
	 */
	public String getUserID() {
		return mUserID.getText().trim();
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return mPassword.getText().trim();
	}

	/**
	 * @return the savePassword
	 */
	public boolean shouldSavePassword() {
		return mSavePassword.isSelected();
	}

	/**
	 * Allows the setting of all of the fields
	 * @param aDriver
	 * @param aURL
	 * @param aUserID
	 * @param aPassword
	 */
	public void setFields(String aDriver,String aURL,String aUserID, String aPassword)
	{
		mDriver.setText(aDriver);
		mURL.setText(aURL);
		mUserID.setText(aUserID);
		mPassword.setText(aPassword);
		mSavePassword.setSelected(aPassword!=null);
	}

	public boolean showLogonPanel(Component parent) {
		return JOptionPane.showOptionDialog(
			parent,
			this,
			"Logon",
			JOptionPane.OK_CANCEL_OPTION,
			JOptionPane.PLAIN_MESSAGE,
			null,
			null,
			null
		)==JOptionPane.OK_OPTION;
	}
	
	public static class ErrorMessageTextArea extends JTextArea
	{
		public ErrorMessageTextArea(int rows,int cols) {
			super(rows,cols);
			setBackground(Color.BLACK);
			setForeground(Color.RED);
			setFont(new Font("Courier",Font.PLAIN,11));
			setEditable(false);
		}
	}
}


/**
 * 
 * $Log: LogonPanel.java,v $
 * Revision 1.3  2007/05/17 13:06:09  g137997
 * Changed lingo in logon dialog.
 *
 * Revision 1.2  2007/04/30 21:17:11  g137997
 * Added integrated error panel.
 *
 * Revision 1.1  2007/03/07 22:36:28  g137997
 * Re-packaged existing classes a bit.
 *
 * Revision 1.3  2007/03/07 22:27:01  g137997
 * Added save password capability.
 *
 * Revision 1.2  2007/03/07 22:06:35  g137997
 * Finshed getting logon panel to work.
 *
 * Revision 1.1  2007/03/07 12:37:46  g137997
 * Added some new stuff.
 * Moved classes to new packages.
 *
 * 
 */