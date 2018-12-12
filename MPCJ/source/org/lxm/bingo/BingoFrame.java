/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/bingo/BingoFrame.java,v 1.4 2011/03/17 18:04:03 g137997 Exp $
 * 
 * BingoFrame
 * Created on Nov 16, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.bingo;

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Graphics2D;
import java.awt.event.ActionEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.JFileChooser;
import javax.swing.JFrame;

import org.lxm.util.ActionButton;
import org.lxm.util.Util;

public class BingoFrame extends JFrame //implements Printable
{
	public static void main(String[] args) throws Exception {
		//UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		new BingoFrame(Util.getString("Enter word (5 letters) for cards","BINGO")); 
	}
	
	private Util.ScrollTabs mCards;
	private Util.FlowLayoutContainer mButtons;
	private String mWord;
	
	public BingoFrame(String aWord)
	{
		super("CARD GENERATOR");
		this.mWord = aWord.length()<5 ? "BINGO" : aWord;
		setLayout(new BorderLayout(4,4));
		add(this.mCards = new Util.ScrollTabs(),BorderLayout.CENTER);
		add(this.mButtons = new Util.FlowLayoutContainer(),BorderLayout.SOUTH);
		
		
		mButtons.add(
			new ActionButton("Save Images") {
				public void actionPerformed(ActionEvent aE) {
					JFileChooser choose = new JFileChooser(".");
					choose.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
					if(choose.showDialog(BingoFrame.this,"Select Folder")==JFileChooser.APPROVE_OPTION) {
						for(int i = 0;i < mCards.getTabCount();i++) {
							BingoGrid grid = (BingoGrid)mCards.getComponentAt(i);
							savePanelToImage(new File(choose.getSelectedFile(),mWord+"_"+grid.getCode()+".png"),mCards.getComponentAt(i));
						}
					}
				}
			}
		);
		//mButtons.add(
		//	new Util.ActionButton("Print") {
		//		public void actionPerformed(ActionEvent aE) {
		//			PrinterJob job = PrinterJob.getPrinterJob();
		//			job.setPrintable(BingoFrame.this);
		//			if(job.printDialog()) {
		//				try {
		//					job.print();
		//				} catch(PrinterException exc) {
		//					exc.printStackTrace();
		//				}
		//			}
		//		}
		//	}
		//);
		mButtons.add(
			new ActionButton("Re-Generate") {
				public void actionPerformed(ActionEvent aE) {
					genCards(Util.getInt("Number of Grids"));
				}
			}
		);
		
		addWindowListener(
			new WindowAdapter() {
				public void windowClosing(WindowEvent aE) {
					System.exit(0);
				}
			}
		);
		
		genCards(Util.getInt("Number of Grids"));
		
		pack();
		setLocationRelativeTo(null);
		setResizable(false);
		setVisible(true);
	}
	
	private void savePanelToImage(File aFile,Component c) {
		BufferedImage bufferedImage = new BufferedImage(c.getWidth(),c.getHeight(),BufferedImage.TYPE_INT_RGB);
		Graphics2D g2 = bufferedImage.createGraphics();
		c.paint(g2);
		try {
			ImageIO.write(bufferedImage,"png",aFile);
		} catch(IOException exc) {
			exc.printStackTrace();
		}
	}
	
	public void genCards(int aCount) {
		mCards.removeAll();
		for(int i = 0;i < aCount;i++) {
			BingoGrid card = new BingoGrid(mWord);
			List pick = getGridList();
			getSquare(card,pickGridBlock(pick)).setCircled(true);
			getSquare(card,pickGridBlock(pick)).setCircled(true);
			getSquare(card,pickGridBlock(pick)).setCircled(true);
			getSquare(card,pickGridBlock(pick)).setDiamonded(true);
			getSquare(card,pickGridBlock(pick)).setDiamonded(true);
			mCards.addCard(card);
		}
		pack();
	}
	
	private BingoSquare getSquare(BingoGrid grid,GridBlock block) {
		return grid.getSquare(block.getRow(),block.getCol());
	}
	
	private GridBlock pickGridBlock(List data) {
		return (GridBlock)data.remove((int)(Math.random()*data.size()));
	}
	
	private List getGridList() {
		List data = new ArrayList();
		for(int row=1;row<=5;row++)for(int col=1;col<=5;col++) {
			if(!(row==3&&col==3))data.add(new GridBlock(row,col));
		}
		return data;
	}
	
	//public int print(Graphics g, PageFormat pf, int idx) throws PrinterException {
	//	Graphics2D g2 = (Graphics2D)g;
	//	g2.translate(pf.getImageableX(), pf.getImageableY());
	//	if(idx<mCards.getTabCount()) {
	//		mCards.getComponentAt(idx).paint(g2);
	//		return Printable.PAGE_EXISTS;
	//	} else {
	//		return Printable.NO_SUCH_PAGE;
	//	}
	//}
	
	private static class GridBlock
	{
		private int mRow,mCol;

		public GridBlock(int aCol, int aRow) {
			this.mCol = aCol;
			this.mRow = aRow;
		}

		public int getCol() {
			return this.mCol;
		}

		public int getRow() {
			return this.mRow;
		}
		
		public String toString() {
			return "("+mRow+","+mCol+")";
		}
	}
}


/**
 * 
 * $Log: BingoFrame.java,v $
 * Revision 1.4  2011/03/17 18:04:03  g137997
 * Removed whitespace.
 *
 * Revision 1.3  2008/05/28 17:41:37  g137997
 * Chnaged to ensure WORD is at least five letters.
 *
 * Revision 1.2  2007/08/16 17:40:30  g137997
 * Changes to reflect re-organized utilities.
 *
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.9  2006/02/02 13:23:37  g137997
 * Disabled direct to printer capability.
 * Added save cards to images capability.
 *
 * Revision 1.8  2006/01/30 13:02:37  g137997
 * Added diamond and circle logic.
 *
 * Revision 1.7  2006/01/19 18:52:29  g137997
 * Made more enhancements.
 *
 * Revision 1.6  2006/01/19 17:49:54  g137997
 * Changed default word.
 *
 * Revision 1.5  2006/01/18 22:02:45  g137997
 * Added bonus square.
 *
 * Revision 1.4  2005/12/14 21:29:21  g137997
 * Added prompted input for the card word.
 *
 * Revision 1.3  2005/12/14 21:22:46  g137997
 * Added game call manager.
 *
 * Revision 1.2  2005/11/17 22:42:18  g137997
 * Added major enhancements.
 *
 * Revision 1.1  2005/11/16 22:39:38  g137997
 * Initial check-in.
 *
 * 
 */