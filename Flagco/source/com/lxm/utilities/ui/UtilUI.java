/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/UtilUI.java,v 1.4 2007/09/11 19:11:16 g137997 Exp $
 * 
 * UtilUI
 * Created on Jul 14, 2005
 *
 * © LXM LLC, (2005). All rights reserved
 * 
 */

package com.lxm.utilities.ui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
import java.awt.Cursor;
import java.awt.Dialog;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Frame;
import java.awt.Graphics2D;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.Paint;
import java.awt.Point;
import java.awt.TexturePaint;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.imageio.ImageIO;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JDialog;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JToggleButton;
import javax.swing.SwingUtilities;
import javax.swing.filechooser.FileFilter;

/**
 * This class is where COMMON ui utilities should be placed.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.4 $
 */
public class UtilUI
{
	private static Map sImageIconCache = new HashMap();
	private static Map sBufferedImageCache = new HashMap();
	private static Set sMissingIcons = new HashSet();
	
	public static final File getPreferencesFile() {
		return new File(
			System.getProperties().getProperty("user.home")+File.separatorChar+".com.lmco.adp.utility.ui_config.v1.0.0"		
		);
	}
	
	public static File chooseFile(Component parent,File baseDir) {
		return chooseFile(parent, baseDir, null);
	}
	
	public static File chooseFile(Component parent,File baseDir,File baseFile) {
		JFileChooser choose = new JFileChooser(baseDir);
		choose.setApproveButtonText("OK");
		choose.setFileSelectionMode(JFileChooser.FILES_ONLY);
		choose.setMultiSelectionEnabled(false);
		if(baseFile!=null)choose.setSelectedFile(baseFile);
		if(choose.showOpenDialog(parent)==JFileChooser.APPROVE_OPTION) {
			return choose.getSelectedFile();
		} else {
			return null;
		}
	}

	public static File chooseFile(Component parent,String baseDir) {
		return chooseFile(parent, new File(baseDir));
	}

	public static File chooseDirectory(Component parent,File baseDir) {
		JFileChooser choose = new JFileChooser(baseDir);
		choose.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
		choose.setApproveButtonText("OK");
		choose.setMultiSelectionEnabled(false);
		if(choose.showOpenDialog(parent)==JFileChooser.APPROVE_OPTION) {
			return choose.getSelectedFile();
		} else {
			return null;
		}
	}

	public static File chooseDirectory(Component parent,String baseDir) {
		return chooseDirectory(parent,new File(baseDir));
	}


	public static class FileChooser implements Chooser_IF
	{
		private FileFilter mFilter;
		private JButton mOpenButton = makeStandardGraphicButton("openFile.gif");
	
		public FileChooser() {
		}
		
		public FileChooser(FileFilter aFilter) {
			this.mFilter = aFilter;
		}
	
		public String choosePerformed(JButton aTarget, String aOldValue) {
			if(aTarget==mOpenButton){
				File oldFile = new File(aOldValue);
				File dir = oldFile.isDirectory() ? oldFile : oldFile.getParentFile();
				JFileChooser fileChooser = new JFileChooser( dir==null || !dir.exists() ? "." : dir.toString() );
				fileChooser.setMultiSelectionEnabled( false );
				if(this.mFilter!=null)fileChooser.setFileFilter(this.mFilter);
				if(fileChooser.showDialog(aTarget,"Select File")==JFileChooser.APPROVE_OPTION){
					return fileChooser.getSelectedFile().toString();
				}else{
					return aOldValue;
				}
			}
			return aOldValue;
		}
	
		public JButton[] getButtons() { return new JButton[]{ this.mOpenButton }; }
	
		public String processSetValue(String aNewValue) { return aNewValue; }
	}

	public static class DirectoryChooser implements Chooser_IF
	{
		private JButton mOpenButton = makeStandardGraphicButton("openFile.gif");
	
		public String choosePerformed(JButton aTarget, String aOldValue) {
			if(aTarget==mOpenButton){
				File dir = new File(aOldValue);
				JFileChooser dirChooser = new JFileChooser( dir.exists() ? dir.toString() : "." );
				dirChooser.setMultiSelectionEnabled( false );
				dirChooser.setFileSelectionMode( JFileChooser.DIRECTORIES_ONLY );
				if(dirChooser.showDialog(aTarget,"Select Directory")==JFileChooser.APPROVE_OPTION){
					return dirChooser.getSelectedFile().toString();
				}else{
					return aOldValue;
				}
			}
			return aOldValue;
		}
	
		public JButton[] getButtons() { return new JButton[]{ this.mOpenButton }; }
	
		public String processSetValue(String aNewValue) { return aNewValue; }
	}

	/**
	 * Gets an ImageIcon from a resource file (or cache).
	 * @param base The base class from which to establish a path to the resource file.
	 * @param iconFileName The name (possibly prefixed with a relative path) of the resource file.
	 * @return The newly created ImageIcon object.
	 */
	public static final ImageIcon getImageIcon(Class base,String iconFileName) {
		URL url = base.getResource("images/"+iconFileName);
		if(url!=null) {
			ImageIcon icon = (ImageIcon)sImageIconCache.get(url);
			if(icon==null)sImageIconCache.put(url,icon = new ImageIcon(url));
			return icon;
		}else{
			String resourceName = base.getName().substring(0,base.getName().lastIndexOf('.'))+".images."+iconFileName;
			if(sMissingIcons.add(resourceName))System.err.println("Missing Resource: '"+resourceName+"'");
			return null;
		}
	}
	
	/**
	 * Gets a textured paint object
	 * @param base The base class from which to establish a path to the resource file.
	 * @param fileName The name of the file containing the image data.
	 * @return A textured paint object.
	 */
	public static final Paint getTexturePaint(Class base,String fileName) {
		BufferedImage img = getBufferedImage(base, fileName);
		return new TexturePaint(img,new Rectangle2D.Float(0,0,img.getWidth(),img.getHeight()));
	}
	
	
	/**
	 * Allows the creation of a mouse cursor with a crosshair from an existing BufferedImage.
	 * @param icon The starting image.
	 * @param radius The radius of the crosshair.
	 * @param gap The number of pixels (x and y) between the crosshair
	 *        center and the upper left corner of the image.
	 * @param name The name of the cursor.
	 * @return The crosshaired version of the image with the hotspot
	 *         set to the center of the crosshair.
	 */
	public static final Cursor getIconCrosshairCursor(BufferedImage icon,int radius,int gap,String name) {
		
		Dimension d = new Dimension(icon.getWidth()+radius+gap,icon.getHeight()+radius+gap);
		BufferedImage cursor = new BufferedImage(d.width,d.height,BufferedImage.TYPE_INT_ARGB);
		Graphics2D g = cursor.createGraphics();
		g.drawImage(icon, radius+gap, radius+gap, null);
		int r2 = (radius * 2) + 1;
		g.setPaint(Color.WHITE);
		g.drawLine(0,radius,r2,radius);
		g.drawLine(radius,0,radius,r2);
		return Toolkit.getDefaultToolkit().createCustomCursor(cursor,new Point(radius+1,radius+1),name);
	}
	

	
	
	/**
	 * Gets a custom mouse cursor.
	 * @param base The base class from which to establish a path to the resource file.
	 * @param imageFileName The name (possibly prefixed with a relative path) of the resource file.
	 * @param xCenter The mouse pointer X center coordinate.
	 * @param yCenter The mouse pointer Y center coordinate.
	 * @param name The name of the mouse cursor.
	 * @return A custome mouse cursor (pointer) icon.
	 */
	public static final Cursor getCustomCursor(Class base,String imageFileName,int xCenter,int yCenter,String name) {
		return Toolkit.getDefaultToolkit().createCustomCursor(
			getBufferedImage(base,imageFileName),
			new Point(xCenter,yCenter),
			name
		);
	}

	/**
	 * Gets (and caches) a buffered image resource.
	 * @param base The base class from which to establish a path to the resource file.
	 * @param imageFileName The name (possibly prefixed with a relative path) of the resource file.
	 * @return A buffered image.
	 */
	public static final BufferedImage getBufferedImage(Class base,String imageFileName) {
		URL url = base.getResource("images/"+imageFileName);
		if(url!=null) {
			BufferedImage image = (BufferedImage)sBufferedImageCache.get(url);
			if(image==null) try {
				if(image==null)sBufferedImageCache.put(url,image = ImageIO.read(url));
			} catch (Exception exc) {
				exception(exc);
			}
			return image;
		} else {
			String resourceName = base.getName().substring(0,base.getName().lastIndexOf('.'))+".images."+imageFileName;
			if(sMissingIcons.add(resourceName))System.err.println("Missing Resource: '"+resourceName+"'");
			return null;
		}
	}
	

	public static final void error(String aTitle,String aMsg) {
		JOptionPane.showMessageDialog(null, aMsg, aTitle, JOptionPane.ERROR_MESSAGE);
	}
	
	public static final void exception(String message,Throwable exc) {
		if(
			1==JOptionPane.showOptionDialog(
				null,
				getScrollingException(exc),
				message,
				JOptionPane.OK_OPTION,
				JOptionPane.ERROR_MESSAGE,
				null,
				new Object[]{"OK","Debug"},
				"OK"
			)
		){
			exc.printStackTrace();
		}
	}
	
	/**
	 * @param exc The throwable to put in a scroller.
	 * @return A JScrollPane containing an exception.
	 */
	public static final JScrollPane getScrollingException(Throwable exc) {
		JTextArea ta = new JTextArea(StringUtil.toNestedExceptionString(exc));
		ta.setTabSize(4);
		ta.setFont(new Font("Courier",Font.PLAIN,12));
		ta.setForeground(Color.RED);
		ta.setEditable(false);
		return new JScrollPane(ta){
			public Dimension getPreferredSize() {
				Dimension d = super.getPreferredSize();
				return new Dimension(Math.min(d.width,640),Math.min(d.height*3,350));
			}
		};
	}
	
	public static final void exception(Throwable exc) {
		exception("EXCEPTION",exc);
	}
	
	public static final void delayedException(String message,Throwable exc) {
		new ExceptionInvokerThread(message,exc){
			public void run() { exception(getMessage(),getThrowable()); }
		};
	}

	public static final void delayedException(Throwable exc) {
		delayedException("EXCEPTION",exc);
	}
	
	public static final JButton makeGraphicButton(Class base,String fileName,ActionListener aListener,String toolTipText){
		JButton jb = new JButton(getImageIcon(base,fileName));
		jb.setMargin(new Insets(0,0,0,0));
		jb.addActionListener(aListener);
		jb.setToolTipText(toolTipText);
		return jb;
	}

	/**
	 * Convenience method to simplify the creation of a graphic button with an ActionListener.
	 * NOTE: Button will have a zero (1) pixel margin.
	 * @param base object reference used to establish relative path to image resource.
	 * @param fileName The file containing the buttons image.
	 * @return A newly created graphical JButton.
	 */
	public static final JButton makeGraphicButton(Object base,String fileName){
		JButton jb = new JButton(getImageIcon(base,fileName));
		jb.setMargin(new Insets(1,1,1,1));
		return jb;
	}

	/**
	 * Convenience method to simplify the creation of a graphic button.
	 * @param base object reference used to establish relative path to image resource.
	 * @param fileName The file containing the buttons image.
	 * @param toolTipText Tool tip text to popup for this button.
	 * @return A newly created graphical JButton.
	 */
	public static final JButton makeGraphicButton(Object base,String fileName,String toolTipText){
		JButton jb = makeGraphicButton(base, fileName);
		jb.setToolTipText(toolTipText);
		return jb;
	}

	/**
	 * Convenience method to simplify the creation of a graphic button with an ActionListener.
	 * NOTE: Button will have a zero (0) pixel margin.
	 * @param base object reference used to establish relative path to image resource.
	 * @param fileName The file containing the buttons image.
	 * @param aListener An interested listener to the button being clicked.
	 * @return A newly created JButton with a listener already added.
	 */
	public static final JButton makeGraphicButton(Object base,String fileName,ActionListener aListener){
		JButton jb = makeGraphicButton(base, fileName);
		jb.addActionListener(aListener);
		return jb;
	}


	/**
	 * Convenience method to simplify the creation of a graphic button with an ActionListener.
	 * NOTE: Button will have a zero (0) pixel margin.
	 * @param base object reference used to establish relative path to image resource.
	 * @param fileName The file containing the buttons image.
	 * @param aListener An interested listener to the button being clicked.
	 * @param toolTipText Tool tip text to popup for this button.
	 * @return A newly created JButton with a listener already added.
	 */
	public static final JButton makeGraphicButton(Object base,String fileName,ActionListener aListener,String toolTipText){
		JButton jb = makeGraphicButton(base, fileName, aListener);
		jb.setToolTipText(toolTipText);
		return jb;
	}


	public static final JButton makeGraphicButton(Object base,String fileName,Object aTarget,String aMethodName){
		JButton jb = new JButton(getImageIcon(base,fileName));
		jb.setMargin(new Insets(0,0,0,0));
		jb.addActionListener(new InvokerActionListener(aTarget,aMethodName));
		return jb;
	}


	public static final JToggleButton makeGraphicToggleButton(Class base,String fileName,String toolTipText){
		JToggleButton tb = new JToggleButton(getImageIcon(base,fileName));
		tb.setMargin(new Insets(0,0,0,0));
		tb.setToolTipText(toolTipText);
		return tb;
	}


	/**
	 * Convenience method to simplify the creation of a text toggle button with an ActionListener.
	 * @param base object reference used to establish relative path to image resource.
	 * @param group The button group which this button should be a member.
	 * @param fileName The file containing the buttons image.
	 * @param aListener An interested listener to the button being clicked.
	 * @param toolTipText Tool tip text to popup for this button.
	 * @return A newly created JToggleButton with a listener already added.
	 */
	public static final JToggleButton makeGraphicToggleButton(Object base,ButtonGroup group,String fileName,ActionListener aListener,String toolTipText){
		JToggleButton tb = new JToggleButton(getImageIcon(base,fileName));
		tb.setSelected(group.getButtonCount()==0);
		tb.setMargin(new Insets(0,0,0,0));
		tb.addActionListener(aListener);
		tb.setToolTipText(toolTipText);
		group.add(tb);
		return tb;
	}


	/**
	 * Convenience method to simplify the creation of a graphical toggle button.
	 * @param base object reference used to establish relative path to image resource.
	 * @param fileName The file containing the buttons image.
	 * @param toolTipText Tool tip text to popup for this button.
	 * @return A newly created JToggleButton.
	 */
	public static final JToggleButton makeGraphicToggleButton(Object base,String fileName,String toolTipText){
		JToggleButton tb = new JToggleButton(getImageIcon(base,fileName));
		tb.setMargin(new Insets(0,0,0,0));
		tb.setToolTipText(toolTipText);
		return tb;
	}

	/**
	 * Convenience method to create a menu item with a single listener.
	 * @param aText The text to put on the menu item.
	 * @param aListener An interested listener.
	 * @return A newly created JMenuItem object with a specified listener.
	 */
	public static final JMenuItem makeCheckboxMenuItem(String aText,boolean aSelected,ActionListener aListener) {
		JCheckBoxMenuItem menuItem = new JCheckBoxMenuItem(aText,aSelected);
		menuItem.setActionCommand(aText);
		menuItem.addActionListener(aListener);
		return menuItem;
	}

	/**
	 * Convenience method to create a menu item with a single listener.
	 * @param aText The text to put on the menu item.
	 * @param aListener An interested listener.
	 * @return A newly created JMenuItem object with a specified listener.
	 */
	public static final JMenuItem makeMenuItem(String aText,ActionListener aListener) {
		JMenuItem menuItem = new JMenuItem(aText);
		menuItem.setActionCommand(aText);
		menuItem.addActionListener(aListener);
		return menuItem;
	}


	/**
	 * Convenience method to create a menu item with a named method to handle the action.
	 * @param aText The text to put on the menu item.
	 * @param aTarget The object containing the target method.
	 * @param aMethodName The method in the target object.
	 * @return A newly created JMenuItem object with a action target/method.
	 */
	public static final JMenuItem makeMenuItem(String aText,Object aTarget,String aMethodName) {
		JMenuItem menuItem = new JMenuItem(aText);
		menuItem.setActionCommand(aText);
		menuItem.addActionListener(new InvokerActionListener(aTarget,aMethodName));
		return menuItem;
	}


	/**
	 * Convenience method to create a menu item with an action command and a single listener.
	 * @param text The text to put on the button.
	 * @param actionCommand The action command for the menu item.
	 * @param listener An interested listener.
	 * @return A newly created MenuItem object with a specified listener.
	 */
	public static final JMenuItem makeMenuItem(String aText,String aActionCommand,ActionListener aListener){
		JMenuItem menuItem = new JMenuItem(aText);
		menuItem.setActionCommand(aActionCommand);
		menuItem.addActionListener(aListener);
		return menuItem;
	}

	/**
	 * Gets an ImageIcon from a resource file.
	 * @param base The object from whose class a base path to the resource file is established from.
	 * @param iconFileName The name (possibly prefixed with a relative path) of the resource file.
	 * @return The newly created ImageIcon object.
	 */
	public static final ImageIcon getImageIcon(Object base,String iconFileName) {
		return getImageIcon(base.getClass(),iconFileName);
	}

	/**
	 * Convenience method to simplify the creation of a text button with margin size of zero.
	 * @param aLabel The text to label this button.
	 * @return A newly created JButton with a specified margin size.
	 */
	public static final JButton makeTextButton(String aLabel){
		return makeTextButton(aLabel,0);
	}


	public static final JButton makeTextButton(String aLabel,Object aTarget,String aMethodName) {
		JButton jb = makeTextButton(aLabel);
		jb.addActionListener(new InvokerActionListener(aTarget,aMethodName));
		return jb;
	}


	/**
	 * Convenience method to simplify the creation of a text button with an ActionListener.
	 * NOTE: Button will have a one (1) pixel margin.
	 * @param aLabel The text to label this button.
	 * @param aListener An interested listener to the button being clicked.
	 * @return A newly created JButton with a listener already added.
	 */
	public static final JButton makeTextButton(String aLabel,ActionListener aListener){
		JButton jb = makeTextButton(aLabel,1);
		jb.addActionListener(aListener);
		return jb;
	}


	/**
	 * Convenience method to simplify the creation of a text button with a specified margin size.
	 * @param aLabel The text to label this button.
	 * @param aMarginSize The pixel size of the buttons margin.
	 * @return A newly created JButton with a specified margin size.
	 */
	public static final JButton makeTextButton(String aLabel,int aMarginSize){
		JButton jb = new JButton(aLabel);
		jb.setMargin(new Insets(aMarginSize,aMarginSize,aMarginSize,aMarginSize));
		return jb;
	}


	/**
	 * Convenience method to simplify the creation of a text button with a specified action command and margin size of zero.
	 * @param aLabel The text to label this button.
	 * @param aActionCommand The action command string to set for this button.
	 * @return A newly created JButton with a specified margin size.
	 */
	public static final JButton makeTextButton(String aLabel,String aActionCommand){
		return makeTextButton(aLabel,aActionCommand,0);
	}


	/**
	 * Convenience method to simplify the creation of a text button with a specified action command and margin size.
	 * @param aLabel The text to label this button.
	 * @param aActionCommand The action command string to set for this button.
	 * @param aMarginSize The pixel size of the buttons margin.
	 * @return A newly created JButton with a specified margin size.
	 */
	public static final JButton makeTextButton(String aLabel,String aActionCommand,int aMarginSize){
		JButton jb = new JButton(aLabel);
		jb.setActionCommand(aActionCommand);
		jb.setMargin(new Insets(aMarginSize,aMarginSize,aMarginSize,aMarginSize));
		return jb;
	}


	/**
	 * Convenience method to simplify the creation of a text and graphic button with an ActionListener.
	 * @param base object reference used to establish relative path to image resource.
	 * @param text The text to label this button.
	 * @param fileName The file containing the buttons image.
	 * @param aListener An interested listener to the button being clicked.
	 * @return A newly created JButton with a listener already added.
	 */
	public static final JButton makeTextGraphicButton(Object base,String text,String fileName,ActionListener aListener){
		JButton jb = new JButton(getImageIcon(base,fileName));
		jb.setMargin(new Insets(0,0,0,0));
		jb.addActionListener(aListener);
		return jb;
	}


	/**
	 * Convenience method to simplify the creation of a text toggle button with an ActionListener.
	 * @param group The button group which this button should be a member.
	 * @param label The text to label this button.
	 * @param aListener An interested listener to the button being clicked.
	 * @param toolTipText Tool tip text to popup for this button.
	 * @return A newly created JToggleButton with a listener already added.
	 */
	public static final JToggleButton makeTextToggleButton(ButtonGroup group,String label,ActionListener aListener,String toolTipText){
		JToggleButton jb = new JToggleButton(label);
		jb.setSelected(group.getButtonCount()==0);
		jb.setMargin(new Insets(0,0,0,0));
		jb.addActionListener(aListener);
		jb.setToolTipText(toolTipText);
		group.add(jb);
		return jb;
	}


	/**
	 * Convenience method to simplify the creation of a text toggle button.
	 * @param label The text to label this button.
	 * @param toolTipText Tool tip text to popup for this button.
	 * @return A newly created JToggleButton.
	 */
	public static final JToggleButton makeTextToggleButton(String label,String toolTipText){
		JToggleButton tb = new JToggleButton(label);
		tb.setMargin(new Insets(0,0,0,0));
		tb.setToolTipText(toolTipText);
		return tb;
	}

	/**
	 * Creates a "standard" graphical button in that its image comes from the images sub-package of this class.
	 * @param fileName File name of the image file (either GIF or JPG).
	 * @return A newly created graphical JButton.
	 */
	public static final JButton makeStandardGraphicButton(String fileName){
		JButton jb = new JButton(getImageIcon(UtilUI.class,fileName));
		jb.setMargin(new Insets(0,1,0,1));
		return jb;
	}


	/**
	 * Creates a "standard" graphical button in that its image comes from the images sub-package of this class.
	 * @param fileName File name of the image file (either GIF or JPG).
	 * @param aListener An interested listener to this button.
	 * @return A newly created graphical JButton with a listener already added.
	 */
	public static final JButton makeStandardGraphicButton(String fileName,ActionListener aListener){
		JButton jb = makeStandardGraphicButton(fileName);
		jb.addActionListener(aListener);
		return jb;
	}


	/**
	 * Creates a "standard" graphical button in that its image comes from the images sub-package of this class.
	 * @param fileName File name of the image file (either GIF or JPG).
	 * @param toolTipText Tool tip text to popup for this button.
	 * @param aListener An interested listener to this button.
	 * @return A newly created graphical JButton with a listener already added.
	 */
	public static final JButton makeStandardGraphicButton(String fileName,ActionListener aListener,String toolTipText){
		JButton jb = makeStandardGraphicButton(fileName,aListener);
		jb.setToolTipText(toolTipText);
		return jb;
	}


	/**
	 * Creates a labeled "standard" graphical button in that its image comes from the images sub-package of this class.
	 * @param text The text to label this button.
	 * @param fileName File name of the image file (either GIF or JPG).
	 * @return A newly created graphical JButton.
	 */
	public static final JButton makeStandardGraphicButton(String text,String fileName){
		JButton jb = new JButton(text,getImageIcon(UtilUI.class,fileName));
		jb.setMargin(new Insets(0,1,0,1));
		return jb;
	}


	/**
	 * Creates a "standard" graphical button in that its image comes from the images sub-package of this class.
	 * @param text The text to label this button.
	 * @param fileName File name of the image file (either GIF or JPG).
	 * @param aListener An interested listener to this button.
	 * @return A newly created graphical JButton with a listener already added.
	 */
	public static final JButton makeStandardGraphicButton(String text,String fileName,ActionListener aListener){
		JButton jb = makeStandardGraphicButton(text,fileName);
		jb.addActionListener(aListener);
		return jb;
	}


	/**
	 * Creates a "standard" graphical button in that its image comes from the images sub-package of this class.
	 * @param text The text to label this button.
	 * @param fileName File name of the image file (either GIF or JPG).
	 * @param toolTipText Tool tip text to popup for this button.
	 * @param aListener An interested listener to this button.
	 * @return A newly created graphical JButton with a listener already added.
	 */
	public static final JButton makeStandardGraphicButton(String text,String fileName,ActionListener aListener,String toolTipText){
		JButton jb = makeStandardGraphicButton(text,fileName,aListener);
		jb.setToolTipText(toolTipText);
		return jb;
	}


	public static final JButton makeStandardGraphicButton(String aLabel,String aFileName,Object aTarget,String aMethodName){
		JButton jb = makeStandardGraphicButton(aLabel,aFileName);
		jb.addActionListener(new InvokerActionListener(aTarget,aMethodName));
		return jb;
	}

	/**
	 * Gets a "standard" ImageIcon from a resource file. The icon is atndard in that it comes from
	 * the images sub-package (i.e. com.lmco.adp.osa.utility.images).
	 * @param iconFileName The name of the image resource file.
	 * @return The newly created ImageIcon object.
	 */
	public static final ImageIcon getStandardImageIcon(String iconFileName) {
		return getImageIcon(UtilUI.class,iconFileName);
	}

	public static final double inputDoublePrimitive(String msg,double defaultValue) {
		String newValue = JOptionPane.showInputDialog(msg,String.valueOf(defaultValue));
		return newValue==null ? defaultValue : Double.parseDouble(newValue);
	}


	public static final int inputIntegerPrimitive(String msg,int defaultValue) {
		String newValue = JOptionPane.showInputDialog(msg,String.valueOf(defaultValue));
		return newValue==null ? defaultValue : Integer.parseInt(newValue);
	}


	public static final Double inputDouble(String msg,Double defaultValue) {
		String newValue = JOptionPane.showInputDialog(msg,defaultValue==null ? "" : defaultValue.toString());
		return newValue==null ? defaultValue : new Double(newValue);
	}


	public static final Integer inputInteger(String msg,Integer defaultValue) {
		String newValue = JOptionPane.showInputDialog(msg,defaultValue==null ? "" : defaultValue.toString());
		return newValue==null ? defaultValue : new Integer(newValue);
	}


	public static final String inputString(String msg,String defaultValue) {
		return JOptionPane.showInputDialog(msg,defaultValue);
	}

	/**
	 * Wrapps an array of arbitrary objects in a Container with a FlowLayout.
	 * If an object is a Component it will be added, if not the retsult of
	 * toString will be wrappered in a JLabel.
	 * @param aObjs An array of objects.
	 * @return A Container with the components added in a FlowLayout.
	 */
	public static final Container flowContain(Object[] aObjects,int aAlignment) {
		Container c = new Container();
		c.setLayout(new FlowLayout(aAlignment,1,1));
		for (int i = 0; i < aObjects.length; i++){
			c.add( aObjects[i] instanceof Component ? (Component)aObjects[i] : new JLabel(aObjects[i].toString()) );
		}
		return c;
	}


	public static final int yesNoCancelDialog(Component parent,String title,Object message) {
		return JOptionPane.showOptionDialog(
			parent,
			message,
			title,
			JOptionPane.YES_NO_CANCEL_OPTION,
			JOptionPane.QUESTION_MESSAGE,
			null,
			null,
			null
		);
	}


	public static final boolean yesNoDialog(Component parent,String title,Object message) {
		return JOptionPane.showOptionDialog(
			parent,
			message,
			title,
			JOptionPane.YES_NO_OPTION,
			JOptionPane.QUESTION_MESSAGE,
			null,
			null,
			null
		)==JOptionPane.YES_OPTION;
	}

	public static final boolean okCancelDialog(Component parent,String title,Object message) {
		return JOptionPane.showOptionDialog(
			parent,
			message,
			title,
			JOptionPane.OK_CANCEL_OPTION,
			JOptionPane.QUESTION_MESSAGE,
			null,
			null,
			null
		)==JOptionPane.OK_OPTION;
	}

	public static final boolean saveDismissDialog(Component parent,String title,Object message) {
		return JOptionPane.showOptionDialog(
			parent,
			message,
			title,
			JOptionPane.OK_CANCEL_OPTION,
			JOptionPane.QUESTION_MESSAGE,
			null,
			new Object[] {"Save","Dismiss"},
			null
		)==0;
	}

	public static final void dismissableDialog(Component parent,String title,Object message) {
		JOptionPane.showOptionDialog(
			parent,
			message,
			title,
			JOptionPane.OK_CANCEL_OPTION,
			JOptionPane.PLAIN_MESSAGE,
			null,
			new Object[]{"Dismiss"},
			null
		);
	}


	public static final void alert(Component aParent,String aTitle,Object aMessage) {
		JOptionPane.showMessageDialog(
			aParent, 
			aMessage, 
			aTitle, 
			JOptionPane.WARNING_MESSAGE
		);
	}


	public static final void message(Component aParent,String aTitle,Object aMessage) {
		JOptionPane.showMessageDialog(
			aParent, 
			aMessage, 
			aTitle, 
			JOptionPane.PLAIN_MESSAGE
		);
	}

	public static JDialog getDialog(Component parentComponent){
		if(parentComponent instanceof Frame){
			return new JDialog((Frame)parentComponent,true);
		}else if(parentComponent instanceof Dialog){
			return new JDialog((Dialog)parentComponent,true);
		}else{
			return getDialog(parentComponent.getParent());
		}
	}

	public static final Object itemChooser(Component parent,String title,Object[] items) {
		JComboBox chooser = new JComboBox(items);
		if(chooser.getItemCount()>1)message(parent,title,chooser);
		return chooser.getSelectedItem();
	}

	/**
	 * Sizes a component as a fraction of the screen width and height
	 * and then centers it.
	 * @param aComponent The component to size and center.
	 * @param widthFactor The factor of the screens width to size to.
	 * @param heightFactor The factor of the screens height to size to.
	 * @param widthMax The maximum width.
	 * @param heightMax The maximum height.
	 */
	public final static void sizeByFactorAndCenter(
		Component aComponent,
		float widthFactor,
		float heightFactor,
		int widthMax,
		int heightMax
	) {
		Dimension screen_size = Toolkit.getDefaultToolkit().getScreenSize();
		int w = Math.min((int)(screen_size.width * widthFactor),widthMax);
		int h = Math.min((int)(screen_size.height * heightFactor),heightMax);
		int x = (screen_size.width - w) / 2;
		int y = (screen_size.height - h) / 2;
		aComponent.setBounds(x,y,w,h);
	}
	

	public static class ComponentHideButton extends JButton implements ActionListener
	{
		private Component mComponent;

		public ComponentHideButton(String label,Component aComponent)
		{
			super(label);
			this.mComponent = aComponent;
			addActionListener(this);
		}

		/*** @see java.awt.event.ActionListener#actionPerformed(java.awt.event.ActionEvent) */
		public void actionPerformed(ActionEvent e) {
			mComponent.setVisible(false);
		}
	}


	/**
	 * Frame for unit testing
	 */
	public static class TestFrame extends JFrame
	{
		public TestFrame(Component aComponent) 
		{
			this("Test Frame",aComponent,true,true);
		}
		
		public TestFrame(String aTitle,Component aComponent,boolean visible,boolean closeable) 
		{
			super(aTitle);
			Container c = this.getContentPane();
			c.setLayout(new BorderLayout());
			c.add(aComponent,BorderLayout.CENTER);
			if(closeable)addWindowListener(
				new WindowAdapter(){
					public void windowClosing(WindowEvent e){
						System.exit(0);
					}
				}
			);
			this.pack();
			setLocationRelativeTo(null);
			this.setVisible(visible);
		}
	
	}

	/**
	 * Dialog for unit testing
	 */
	public static class TestDialog extends JDialog
	{
		public TestDialog(Component aCenterComponent,Component aSouthComponent)
		{
			this("Test Dialog",aCenterComponent,aSouthComponent,true,true);
		}
		
		public TestDialog(String aTitle,Component aNorthComponent,Component aSouthComponent,boolean visible,boolean closeable)
		{
			super();
			setTitle(aTitle);
			Container c = getContentPane();
			c.setLayout(new BorderLayout());
			c.add(aNorthComponent,BorderLayout.CENTER);
			c.add(aSouthComponent,BorderLayout.SOUTH);
			pack();
			if(closeable)addWindowListener(
				new WindowAdapter(){
					public void windowClosing(WindowEvent e){
						System.exit(0);
					}
				}
			);
			setLocationRelativeTo(null);
			setVisible(visible);
		}
	}

	
 	private abstract static class ExceptionInvokerThread implements Runnable 
 	{
		private String mMessage;
		private Throwable mThrowable;

		private ExceptionInvokerThread(String message,Throwable exc) {
			this.mMessage = message;
			this.mThrowable = exc;
			SwingUtilities.invokeLater(this);
		}
		
		public String getMessage() {
			return mMessage;
		}

		public Throwable getThrowable() {
			return mThrowable;
		}
 	}

 	public static class InvokerActionListener implements ActionListener
	{
		private Object mTarget;
		private String mMethodName;
	
		public InvokerActionListener(Object aTarget,String aMethodName) {
			this.mTarget = aTarget;
			this.mMethodName = aMethodName;
		}
	
		/*** @see java.awt.event.ActionListener#actionPerformed(java.awt.event.ActionEvent) */
		public void actionPerformed(ActionEvent e) {
			try {
				mTarget.getClass().getMethod(mMethodName,null).invoke(mTarget,null);
			} catch (Exception exc) {
				exception(exc);
			}
		}
	}
 	
 	
 	public static class GridContainer extends JComponent
	{
		public GridContainer(int aRows,int aCols)
		{
			setLayout(new GridLayout(aRows,aCols,1,1));
		}
		
		public GridContainer addItem(Object aObject) {
			add( aObject instanceof Component ? (Component)aObject : new JLabel(aObject.toString(),JLabel.CENTER) );
			return this;
		}
	}

 	
 	public static class BorderContainer extends JComponent
 	{
		public BorderContainer(int hGap,int vGap)
		{
			setLayout(new BorderLayout(hGap,vGap));
		}
		
		public BorderContainer()
		{
			setLayout(new BorderLayout(1,1));
		}

		public BorderContainer addItem(Object aObject,Object aConstraints) {
			add(
				aObject instanceof Component ? (Component)aObject : new JLabel(aObject.toString()),
				aConstraints
			);
			return this;
		}
 	}
 	
 	
 	public static class FlowContainer extends JComponent
	{
		public FlowContainer(int aAlignment,int hGap,int vGap)
		{
			setLayout(new FlowLayout(aAlignment,hGap,vGap));
		}
		
		public FlowContainer(int aAlignment)
		{
			setLayout(new FlowLayout(aAlignment,1,1));
		}
		
		public FlowContainer addItem(Object aObject) {
			add( aObject instanceof Component ? (Component)aObject : new JLabel(aObject.toString()) );
			return this;
		}
	}

}

/**
 * 
 * $Log: UtilUI.java,v $
 * Revision 1.4  2007/09/11 19:11:16  g137997
 * Changed export methodology.
 *
 * Revision 1.3  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.1  2007/03/25 14:36:52  g137997
 * Imported several usefull utilities from another development effort.
 *
 * 
 */