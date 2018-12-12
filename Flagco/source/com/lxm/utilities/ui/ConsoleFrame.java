/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/ConsoleFrame.java,v 1.4 2007/09/10 12:02:16 g137997 Exp $
 * 
 * Console
 * Created on Jan 5, 2005
 *
 * © LXM LLC, (2005). All rights reserved
 * 
 */

package com.lxm.utilities.ui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.ActionEvent;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.swing.JDialog;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;

import com.lxm.utilities.db.UtilDB;



/**
 * This class will dump output streams to a text area.
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.4 $
 */
public class ConsoleFrame extends JDialog 
{
	private JTextArea mMessageArea = new JTextArea(20,100);
	private JScrollPane mScroller;
	private JPanelBuilder mButtons;
	
	public ConsoleFrame(String aTitle) {
		setModal(true);
		setTitle(aTitle);
		setResizable(true);
		setLayout(new BorderLayout());
		add(
			this.mScroller = new JScrollPane(mMessageArea){
				public Dimension getPreferredSize() {
					Dimension d = super.getPreferredSize();
					return new Dimension(Math.max(d.width,640),Math.min(d.height*3,480));
				}
			},
			BorderLayout.CENTER
		);

		add(
			this.mButtons = new JPanelBuilder(new FlowLayout(FlowLayout.CENTER)) {
				public void configure() {
					add(
						new ActionButton("Copy") {
							public void actionPerformed(ActionEvent e) {
						        StringSelection ss = new StringSelection(mMessageArea.getText());
						        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(ss, null);
							}
						}
					);
					add(
						new ActionButton("Dismiss") {
							public void actionPerformed(ActionEvent e) {
								ConsoleFrame.this.setVisible(false);
							}
						}
					);
				}
			},
			BorderLayout.SOUTH
		);
		
		mMessageArea.setForeground(Color.RED);
		mMessageArea.setBackground(Color.BLACK);
		mMessageArea.setWrapStyleWord(true);
		mMessageArea.setEditable(false);
		mMessageArea.setFont(new Font("Courier",Font.PLAIN,12));
		mMessageArea.setTabSize(4);
		
		pack();
		setLocationRelativeTo(null);
	}
	
	public void addAuxillaryComponent(Component c) {
		mButtons.add(c);
	}

	public OutputStream getOutputStream() {
		return new TextAreaOutputStream();
	}

	private class TextAreaOutputStream extends OutputStream {
		StringBuffer sb = new StringBuffer();
		public void write(int b) throws IOException {
			sb.append((char)b);
			if(b==0x000D){
				mMessageArea.append(sb.toString());
				sb.setLength(0);
				SwingUtilities.invokeLater(
					new Runnable() {
						public void run() {
							mScroller.getVerticalScrollBar().setValue(mScroller.getVerticalScrollBar().getMaximum());
						}
					}
				);
				setVisible(true);
			}
		}
	}
	
	public static interface ErrorHandler
	{
		public static class Error{
			private static boolean first = true;
			private static ConsoleFrame console = new ConsoleFrame("Errors");
			private static List<Throwable> errors = new ArrayList<Throwable>();
			private static PrintStream ps = new PrintStream(console.getOutputStream());

			static {
				console.addAuxillaryComponent(
					new ActionButton("Copy Debug Data") {
						public void actionPerformed(ActionEvent e) {
							Iterator<Throwable> it = errors.iterator();
							StringBuilder sb = new StringBuilder();
							for(int i=0;it.hasNext();i++) {
								if(i>0)sb.append("\n----------------------------------------------------\n");
								sb.append(UtilDB.toStackTraceString(it.next()));
							}
					        StringSelection ss = new StringSelection(sb.toString());
					        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(ss, null);
						}
					}
				);
			}
			
			public static void error(Exception exc) {
				errors.add(0,exc);
				if(first) {
					first = false;
					ps.println(exc);
				}else {
					ps.println("----------------------------------------------------\n"+exc);
				}
			}
		}
	}

}

/**
 * 
 * $Log: ConsoleFrame.java,v $
 * Revision 1.4  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.3  2007/04/30 21:16:18  g137997
 * Added more sophisticated error handling.
 *
 * Revision 1.2  2007/04/26 21:31:23  g137997
 * Disabled EXIT button.
 * Enabled DUMP button for debugging.
 *
 * Revision 1.1  2007/03/27 23:51:05  g137997
 * Initial check-in.
 *
 * Revision 1.4  2006/11/29 17:47:12  g137997
 * Fixed scroll to bottom bug.
 *
 * Revision 1.3  2006/04/27 12:11:11  g137997
 * Added autoscroll.
 *
 * Revision 1.2  2006/03/06 14:31:25  g137997
 * Made output method more efficient.
 * Added dump button.
 *
 * Revision 1.1  2005/07/19 19:30:55  g137997
 * Moved more common stuff to common project.
 *
 * Revision 1.2  2005/07/18 16:44:23  g137997
 * Re-located common image icons.
 *
 * Revision 1.1  2005/05/25 10:20:43  g596060
 * Mods due to changing package name for OSA comm, entities, media, etc.,
 * classes and resources.
 *
 * Revision 1.2  2005/05/24 17:22:36  g596060
 * Mods due to changing package name for OSA utility classes.
 * Also, organized imports.
 *
 * Revision 1.1  2005/01/05 14:19:25  g137997
 * Initial check-in.
 *
 * 
 */