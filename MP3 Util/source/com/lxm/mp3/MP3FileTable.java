/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/MP3FileTable.java,v 1.6 2007/08/31 15:59:59 g137997 Exp $
 * 
 * MP3FileTable
 * Created on Apr 23, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3;

import java.awt.Dimension;
import java.io.File;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;

import com.lmco.adp.utility.ui.GUIUtil_IM;
import com.lmco.adp.utility.ui.TableSorter;
import com.lxm.mp3.util.FileListModel;
import com.lxm.mp3.util.MP3FileWrapper;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.6 $
 */
public class MP3FileTable extends JTable
{
	private FileListModel mModel;
	private TableSorter mSorter;
	private int mTotalWidth;
	
	
	private MP3FileTable(FileListModel aModel)
	{
		setModel(this.mSorter = new TableSorter(this.mModel = aModel));
		mSorter.setTableHeader(getTableHeader());
		setAutoResizeMode(JTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
		setDefaultRenderer(String.class,mModel);
		adjustColumnWidths();
	}
	
	private void adjustColumnWidths() {
		this.mTotalWidth = mModel.setColumnWidths(this);
	}

	public MP3FileTable() {
		this(new FileListModel());
	}
	
	public MP3FileTable(File baseDir)
	{
		this(new FileListModel(baseDir,true));
	}
	
	public MP3FileWrapper getRow(int idx) {
		return mModel.get(mSorter.modelIndex(idx));
	}
	
	//addMouseListener(
	//	new MouseAdapter() {
	//		public void mouseClicked(MouseEvent e) {
	//			MP3FileWrapper row = mModel.get(mSorter.modelIndex(rowAtPoint(e.getPoint())));
	//			if(e.getClickCount()==2) {
	//				File dir = FileUtility.chooseDirectory(MP3FileTable.this,new File("D:\\ZZ_TEST\\"));
	//				if(dir!=null) {
	//					try {
	//						row.getID3().writeRetaggedFile(dir);
	//					} catch(IOException exc) {
	//						exc.printStackTrace();
	//					}
	//				}
	//			} else {
	//				System.out.println(row);
	//			}
	//		}
	//	}
	//);

	
	/*** @see javax.swing.JTable#getPreferredScrollableViewportSize() */
	public Dimension getPreferredScrollableViewportSize() {
		Dimension ps = super.getPreferredScrollableViewportSize();
		ps.width = mTotalWidth;
		return ps;
	}

	
	
	public static void main(String[] args) {
		JFrame frame = new JFrame("MP3 File List");
		frame.add(
			new JScrollPane(
				new MP3FileTable(
					GUIUtil_IM.chooseDirectory(null,args.length==0 ? "." : args[0])
				)
			)
		);
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocation(100,100);
		frame.setVisible(true);
	}

	public void addFile(MP3FileWrapper file) {
		mModel.addFile(file);
		adjustColumnWidths();
	}

	public void addFiles(File path,boolean recurse) {
		mModel.addFiles(path,recurse);
		adjustColumnWidths();
	}
}


/**
 * 
 * $Log: MP3FileTable.java,v $
 * Revision 1.6  2007/08/31 15:59:59  g137997
 * Moved file utilites to GUIUtil_IM in common.
 *
 * Revision 1.5  2007/08/21 20:59:59  g137997
 * Chnaged to use convenience version.
 *
 * Revision 1.4  2007/08/21 20:59:11  g137997
 * Work in progress.
 *
 * Revision 1.3  2007/08/21 20:16:28  g137997
 * More re-factoring.
 *
 * Revision 1.2  2007/08/21 20:14:39  g137997
 * Factored out inner class.
 *
 * Revision 1.1  2007/08/21 20:07:08  g137997
 * Class Renamed.
 *
 * Revision 1.1  2007/08/21 19:53:38  g137997
 * Renamed class.
 *
 * Revision 1.1  2007/08/21 17:43:27  g137997
 * Reorganization.
 *
 * Revision 1.4  2007/08/21 16:11:40  g137997
 * Work In Progress.
 *
 * Revision 1.3  2007/08/21 14:20:07  g137997
 * Enhancements made.
 *
 * Revision 1.2  2007/06/06 21:10:26  g137997
 * Added new logic.
 *
 * Revision 1.1  2007/04/23 20:41:05  g137997
 * Started work on MP3FileTable.
 *
 * 
 */