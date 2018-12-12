/**
 * 
 * $Header: /repository/CVSLM/PicSel/picsel/com/lxm/picsel/PicSelect.java,v 1.3 2015/10/09 22:18:16 g137997 Exp $
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
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

import com.lmco.adp.utility.EnhancedProperties;
import com.lmco.adp.utility.ui.ActionButton;
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
 * @version $Revision: 1.3 $
 */
public class PicSelect extends MemoryFramePrefs 
{
	public static void main(String[] args) throws IOException { new PicSelect(); }

	public static final String DEFAULT_PATH = "default.path";
	
	public static final FileFilter FF = new FileFilter() {
		public boolean accept(File f) {
			String fn = f.getName().toLowerCase();
			return fn.endsWith(".jpg") || fn.endsWith(".png");
		}
	};
	
	private SlideShow mSlide = new SlideShow();
	private Thread mThread;
	private DirectoryChooserTextField mPath;
	private JComponent mGallery;

	public PicSelect() throws IOException {
		super("Picture Selector",PicSelect.class);
		setLayout(new BorderLayout());
		add(this.mPath = new DirectoryChooserTextField(new EnhancedProperties(getProperties()).getFile(DEFAULT_PATH,new File(".").getCanonicalFile())),BorderLayout.NORTH);
		add(new JScrollPane(this.mGallery = new JPanel(new WrapLayout(WrapLayout.LEADING))),BorderLayout.CENTER);
		mPath.addTextValueChangedListener(
			new TextValueChangeListener_IF() {
				public void valueChanged(TextValueChangeEvent e) {
					if(!e.getOldValue().equals(e.getNewValue())){
						new EnhancedProperties(getProperties()).setFile(DEFAULT_PATH,mPath.getFile());
						addThumbsThread();
					}
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
	
	private void addThumbsThread() {
		if(mThread!=null) {
			mThread.stop();
			mThread = null;
		}
		mGallery.removeAll();
		(this.mThread = new Thread() {
			public void run() {
				try {
					addThumbs(mPath.getFile());
					mThread = null;
				} catch (IOException exc) {
					exc.printStackTrace();
				}		
			}
		}).start();
	}
	
	private void addThumbs(File path) throws IOException {
		for (File f : path.listFiles(FF)) {
			mGallery.add(
				new Thumb(80,60){
					public void clicked(File f) {
						try {
							List<File> accum = new ArrayList<File>(); 
							for (int i = 0; i < mGallery.getComponentCount(); i++) {
								Component comp = mGallery.getComponent(i);
								if (comp instanceof Thumb) {
									accum.add(((Thumb)comp).src);
								}
							}
							mSlide.setImages(accum).setImage(f).setVisible(true);
						} catch (IOException exc) {
							exc.printStackTrace();
						} 
					}
				}.setImage(f,false)
			);
			repaintMe();
		}
	}
	
	
	public static class SlideShow extends MemoryFramePrefs {
		private List<File> mImages;
		private int mIndex;
		private Thumb mThumb;

		public SlideShow() {
			super("Slideshow",SlideShow.class);
			setLayout(new BorderLayout());
			add(
				this.mThumb = new Thumb(900,640) { public void clicked(File f) {} },
				BorderLayout.CENTER
			);
			add(
				new GUIUtil_IM.FlowContainer(FlowLayout.CENTER).addItems(
					new ActionButton(" < PREVIOUS ") {
						public void actionPerformed(ActionEvent arg0) {
							try {
								mIndex--;
								if(mIndex<0)mIndex = mImages.size()-1;
								mThumb.setImage(mImages.get(mIndex),true);
								SlideShow.this.repaint();
							} catch (IOException exc) {
								exc.printStackTrace();
							}
						}
					},
					new ActionButton(" NEXT > ") {
						public void actionPerformed(ActionEvent arg0) {
							try {
								mIndex++;
								if(mIndex>mImages.size()-1)mIndex = 0;
								mThumb.setImage(mImages.get(mIndex),true);
								SlideShow.this.repaint();
							} catch (IOException exc) {
								exc.printStackTrace();
							}
						}
					}
				),
				BorderLayout.SOUTH
			);
		}
		
		public SlideShow setImages(List<File> images) {
			this.mImages = images;
			this.mIndex = 0;
			return this;
		}
		
		public SlideShow setImage(File image) throws IOException {
			this.mIndex = mImages.indexOf(image);
			mThumb.setImage(image,true);
			return this;
		}
	}
	
	public static abstract class Thumb extends JPanel {
		private File src;
		private BufferedImage mImage;
		private int dw,dh;

		public Thumb(int dw,int dh) {
			setPreferredSize(new Dimension(this.dw=dw,this.dh=dh));
			addMouseListener(
				new MouseAdapter() {
					public void mouseClicked(MouseEvent e) { clicked(src); }
				}
			);
		}
		
		public Thumb setImage(File img,boolean useHalving) throws IOException {
			this.mImage = GUIUtil_IM.getScaledImage(
				ImageIO.read(this.src = img),
				RenderingHints.VALUE_INTERPOLATION_BILINEAR,
				dw,
				dh,
				useHalving
			);
			return this;
		}
		
		public abstract void clicked(File f);
		
		protected void paintComponent(Graphics g) {
			float scale = Math.min(getWidth()/(float)dw,getHeight()/(float)dh);
			AffineTransform tx = AffineTransform.getScaleInstance(scale,scale);
			
			if(mImage!=null){
				((Graphics2D)g).drawImage(mImage,new AffineTransformOp(tx,AffineTransformOp.TYPE_BICUBIC),0,0);
			}
		}
	}
}


/**
 * 
 * $Log: PicSelect.java,v $
 * Revision 1.3  2015/10/09 22:18:16  g137997
 * Whitespace change.
 *
 * Revision 1.2  2015/09/04 01:34:22  g137997
 * Work in progress.
 *
 * Revision 1.1  2015/08/17 18:05:03  g137997
 * Check-in.
 *
 * Revision 1.1  2015/08/17 18:03:13  g137997
 * Check-in.
 *
 * 
 */