/**
 * 
 * $Header: /repository/CVSLM/Parser/picsel/com/lxm/picsel/PicSelect.java,v 1.1 2015/08/17 18:03:13 g137997 Exp $
 * 
 * PicSelect
 * Created on Aug 15, 2015
 *
 * © Lockheed Martin Corporation, (2015). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.picsel;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

import com.lmco.adp.utility.io.FileIterator;
import com.lmco.adp.utility.ui.DirectoryChooserTextField;
import com.lmco.adp.utility.ui.GUIUtil_IM;
import com.lmco.adp.utility.ui.MemoryFramePrefs;
import com.lmco.adp.utility.ui.TextValueChangeEvent;
import com.lmco.adp.utility.ui.TextValueChangeListener_IF;
import com.lmco.adp.utility.ui.WrapLayout;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (lmorrissey)
 * @version $Revision: 1.1 $
 */
public class PicSelect extends MemoryFramePrefs 
{
	public static void main(String[] args) throws IOException { new PicSelect(args.length>0 ? args[0] : "."); }

	private DirectoryChooserTextField mPath;
	private JComponent mGallery;

	public PicSelect(String wd) throws IOException {
		super("Picture Selector",PicSelect.class);
		setLayout(new BorderLayout());
		
		add(this.mPath = new DirectoryChooserTextField(new File(wd).getCanonicalFile()),BorderLayout.NORTH);
		add(new JScrollPane(this.mGallery = new JPanel(new WrapLayout(WrapLayout.LEADING))),BorderLayout.CENTER);
		
		mPath.addTextValueChangedListener(
			new TextValueChangeListener_IF() {
				public void valueChanged(TextValueChangeEvent e) {
					if(!e.getOldValue().equals(e.getNewValue()))addThumbsThread();
				}
			}
		);
		
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setVisible(true);
		
		addThumbsThread();
	}
	
	private void repaintMe() {
		mGallery.doLayout();
		repaint(); 
	}
	
	private FileFilter FF = new FileFilter() {
		public boolean accept(File f) {
			String fn = f.getName().toLowerCase();
			return fn.endsWith(".jpg") || fn.endsWith(".png");
		}
	};
	
	private void addThumbsThread() {
		new Thread() {
			public void run() {
				try {
					addThumbs(mPath.getFile());
				} catch (IOException exc) {
					exc.printStackTrace();
				}		
			}
		}.start();
	}
	
	private void addThumbs(File path) throws IOException {
		for (File f : new FileIterator(path,FF)) {
			mGallery.add(new Thumb(f,80,60));
			repaintMe();
		}
	}
	
	public static class Thumb extends JPanel {
		private File src;
		private BufferedImage mImage;
		private int dw,dh;

		public Thumb(File img,int dw,int dh) throws IOException {
			this.mImage = GUIUtil_IM.getScaledImage(
				ImageIO.read(this.src = img),
				RenderingHints.VALUE_INTERPOLATION_BILINEAR,
				this.dw = dw,
				this.dh = dh,
				true
			);
			setPreferredSize(new Dimension(dw,dh));
			
			addMouseListener(
				new MouseAdapter() {
					public void mouseClicked(MouseEvent e) {
						System.out.println(src);
					}
				}
			);
		}
		
		protected void paintComponent(Graphics g) {
			((Graphics2D)g).drawImage(mImage,null,(dw-mImage.getWidth())/2,(dh-mImage.getHeight())/2);
		}
	}
}


/**
 * 
 * $Log: PicSelect.java,v $
 * Revision 1.1  2015/08/17 18:03:13  g137997
 * Check-in.
 *
 * 
 */