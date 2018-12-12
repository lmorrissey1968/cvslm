/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/FileListModel.java,v 1.3 2007/08/21 20:59:11 g137997 Exp $
 * 
 * FileListModel
 * Created on Aug 21, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.util;

import java.awt.Color;
import java.awt.Component;
import java.awt.FontMetrics;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.swing.JTable;
import javax.swing.event.TableModelListener;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.TableModel;


public class FileListModel extends DefaultTableCellRenderer implements TableModel
{
	private static final Class[] TYPES = { Boolean.class,String.class,String.class,Long.class };
	private static final String[] NAMES = { "Select","Artist","Title","Size" };
	
	private Set<TableModelListener> mListeners = new HashSet<TableModelListener>();
	private List<MP3FileWrapper> mFiles = new ArrayList<MP3FileWrapper>();
	
	private static final FileFilter MP3 = new FileFilter() {
		public boolean accept(File aPath) {
			return aPath.isDirectory() || aPath.getName().toUpperCase().endsWith(".MP3");
		}
	};
	
	
	public FileListModel()
	{
	}
	
	public FileListModel(File aDirectory,boolean recurse)
	{
		addFiles(aDirectory,recurse);
	}
	
	public MP3FileWrapper get(int index) {
		return mFiles.get(index);
	}
	
	/*** @see javax.swing.table.DefaultTableCellRenderer#getTableCellRendererComponent(javax.swing.JTable, java.lang.Object, boolean, boolean, int, int) */
	public Component getTableCellRendererComponent(JTable aTable, Object aValue, boolean aIsSelected, boolean aHasFocus, int aRow, int aColumn) {
		Component cell =  super.getTableCellRendererComponent(aTable, aValue, aIsSelected, aHasFocus, aRow, aColumn);
		Color GOOD = aIsSelected ? Color.LIGHT_GRAY : Color.WHITE;
		Color BAD = aIsSelected ? Color.PINK : Color.ORANGE;
		switch(aColumn){
			case 1:
				cell.setBackground(mFiles.get(aRow).hasID3Artist() ? GOOD : BAD );
				break;
			case 2:
				cell.setBackground(mFiles.get(aRow).hasID3Title() ? GOOD : BAD );
				break;
			default:
				cell.setBackground(GOOD);
		}
		return cell;
	}
	
	public void addFile(MP3FileWrapper aFile) {
		int idx = Collections.binarySearch(mFiles,aFile);
		if(idx<0)idx = (-idx) - 1;
		mFiles.add(idx,aFile);
	}
	
	public void addFiles(File aPath,boolean recurse) {
		if(aPath.isDirectory()) {
			if(recurse) {
				File[] files = aPath.listFiles(MP3);
				for(int i = 0;i < files.length;i++)addFiles(files[i],recurse);
			}
		} else {
			MP3FileWrapper wrap = new MP3FileWrapper(aPath);
			int idx = Collections.binarySearch(mFiles,wrap);
			if(idx<0)idx = (-idx) - 1;
			mFiles.add(idx,wrap);
		}
	}

	/*** @see javax.swing.table.TableModel#addTableModelListener(javax.swing.event.TableModelListener) */
	public void addTableModelListener(TableModelListener aListener) {
		mListeners.add(aListener);
	}

	/*** @see javax.swing.table.TableModel#removeTableModelListener(javax.swing.event.TableModelListener) */
	public void removeTableModelListener(TableModelListener aListener) {
		mListeners.remove(aListener);
	}

	/*** @see javax.swing.table.TableModel#getColumnClass(int) */
	public Class<?> getColumnClass(int aColumnIndex) {
		return TYPES[aColumnIndex];
	}

	/*** @see javax.swing.table.TableModel#getColumnCount() */
	public int getColumnCount() {
		return TYPES.length;
	}

	/*** @see javax.swing.table.TableModel#getColumnName(int) */
	public String getColumnName(int aColumnIndex) {
		return NAMES[aColumnIndex];
	}

	/*** @see javax.swing.table.TableModel#getRowCount() */
	public int getRowCount() {
		return mFiles.size();
	}

	/*** @see javax.swing.table.TableModel#isCellEditable(int, int) */
	public boolean isCellEditable(int aRowIndex, int aColumnIndex) {
		return aColumnIndex==0;
	}

	/*** @see javax.swing.table.TableModel#setValueAt(java.lang.Object, int, int) */
	public void setValueAt(Object aValue, int aRowIndex, int aColumnIndex) {
		boolean flag = (Boolean)aValue; 
		mFiles.get(aRowIndex).setSelected(flag);
	}

	/*** @see javax.swing.table.TableModel#getValueAt(int, int) */
	public Object getValueAt(int aRowIndex, int aColumnIndex) {
		MP3FileWrapper file = mFiles.get(aRowIndex);
		switch(aColumnIndex){
			case 0:
				return file.isSelected();
			case 1:
				return file.getArtist();
			case 2:
				return file.getTitle();
			case 3:
				return file.getSize();
		}
		return null;
	}
	
	public int setColumnWidths(JTable table) {
		FontMetrics fm = table.getFontMetrics(table.getFont());
		int n = getColumnCount();
		int total = 0;
		for(int i = 0;i < n;i++) {
			int w = getColumnWidth(fm,i);
			total+=w;
			table.getColumnModel().getColumn(i).setPreferredWidth(w);
		}
		return total;
	}
	
	public int getColumnWidth(FontMetrics fm, int aColumnIndex) {
		int n = getRowCount();
		int width = fm.stringWidth(NAMES[aColumnIndex]);
		int total = 0;
		for(int i = 0;i < n;i++) {
			Object val = getValueAt(i,aColumnIndex);
			if(val!=null) {
				width = Math.max(width,fm.stringWidth(val.toString()));
				total += fm.stringWidth(val.toString()+"  ");
			}
		}
		return total==0 ? width : total/n;
	}
}

/**
 * 
 * $Log: FileListModel.java,v $
 * Revision 1.3  2007/08/21 20:59:11  g137997
 * Work in progress.
 *
 * Revision 1.2  2007/08/21 20:16:28  g137997
 * More re-factoring.
 *
 * Revision 1.1  2007/08/21 20:14:03  g137997
 * Initial check-in.
 * Moved out of inner class.
 *
 * 
 */