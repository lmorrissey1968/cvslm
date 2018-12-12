/**
 * 
 * $Header: /repository/CVSLM/MP3\040Util/source/com/lxm/mp3/util/DistributeToCarCD.java,v 1.4 2008/04/23 14:23:52 g137997 Exp $
 * 
 * DistributeToCarCD
 * Created on Oct 8, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.mp3.util;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTree;
import javax.swing.event.TreeModelEvent;
import javax.swing.event.TreeModelListener;
import javax.swing.tree.TreeModel;
import javax.swing.tree.TreePath;

import com.lmco.adp.utility.ui.ActionButton;
import com.lmco.adp.utility.ui.ColumnLayout;
import com.lmco.adp.utility.ui.ConsoleFrame;
import com.lmco.adp.utility.ui.DirectoryChooserTextField;
import com.lmco.adp.utility.ui.FileChooserTextField;
import com.lmco.adp.utility.ui.GUIUtil_IM;
import com.lmco.adp.utility.ui.IntegerTextField;
import com.lmco.adp.utility.ui.JPanelBuilder;

public class DistributeToCarCD
{
	public static final int MEG = 1024 * 1024;
	
	private File mListFile;
	private File mTargetDir;
	private int mTargetSize;
	
	private int mSpacePerDisc;
	
	private List<SongCollection> mCDs = new ArrayList<SongCollection>() {
		public String toString() {
			StringBuilder sb = new StringBuilder();
			for(int i = 0;i < size();i++) {
				if(i>0)sb.append('\n');
				sb.append(get(i).getTotalSize());
			}
			return sb.toString();
		}
	};
	private DistributionTreeModel mModel;


	public DistributeToCarCD(File aListFile,File aTargetDir, int aTargetSize) throws IOException
	{
		this.mListFile = aListFile;
		this.mTargetDir = aTargetDir;
		this.mTargetSize = aTargetSize;
		
		this.mModel = new DistributionTreeModel();
		
		calculateCDs();
		
		new GUIUtil_IM.TestDialog(
			new JScrollPane(new JTree(mModel)) {
				public Dimension getPreferredSize() {
					return new Dimension(800,600);
				}
			},
			new JPanelBuilder(new FlowLayout(FlowLayout.CENTER)) {
				public void configure() {
					add(
						new ActionButton("GO") {
							public Dimension getPreferredSize() { return new Dimension(200,50); }

							public void actionPerformed(ActionEvent evt) {
//								new Thread() {
//									public void run() {
										try {
											trasferFiles(new PrintStream(new ConsoleFrame(true).getOutputStream()));
										} catch(IOException exc) {
											exc.printStackTrace();
										}
//									}
//								}.start();
							}
						}
					);
					add(
						new ActionButton("Recalculate") {
							public Dimension getPreferredSize() { return new Dimension(200,50); }

							public void actionPerformed(ActionEvent evt) {
								mTargetSize = GUIUtil_IM.inputInteger("New megabytes per disc",mTargetSize);
								try {
									calculateCDs();
								} catch(IOException exc) {
									exc.printStackTrace();
								}
							}
						}
					);
				}
			}
		);
	}
	
	
	private class DistributionTreeModel implements TreeModel
	{
		private Set<TreeModelListener> mListeners = new HashSet<TreeModelListener>();
		
		/*** @see javax.swing.tree.TreeModel#getChild(java.lang.Object, int) */
		public Object getChild(Object parent, int index) {
			if(parent instanceof SongCollection) {
				SongCollection sc = (SongCollection)parent;
				return sc.get(index);
			} else {
				return mCDs.get(index);
			}
		}

		/*** @see javax.swing.tree.TreeModel#getChildCount(java.lang.Object) */
		public int getChildCount(Object parent) {
			if(parent instanceof SongCollection) {
				SongCollection sc = (SongCollection)parent;
				return sc.size();
			} else {
				return mCDs.size();
			}
		}

		/*** @see javax.swing.tree.TreeModel#getIndexOfChild(java.lang.Object, java.lang.Object) */
		public int getIndexOfChild(Object parent, Object child) {
			if(parent instanceof SongCollection) {
				SongCollection sc = (SongCollection)parent;
				return sc.indexOf(child);
			} else {
				return mCDs.indexOf(parent);
			}
		}

		/*** @see javax.swing.tree.TreeModel#getRoot() */
		public Object getRoot() {
			return this;
		}
		
		/*** @see java.lang.Object#toString() */
		public String toString() {
			return "ROOT";
		}

		/*** @see javax.swing.tree.TreeModel#isLeaf(java.lang.Object) */
		public boolean isLeaf(Object node) {
			return node instanceof Song;
		}

		/*** @see javax.swing.tree.TreeModel#addTreeModelListener(javax.swing.event.TreeModelListener) */
		public void addTreeModelListener(TreeModelListener listener) {
			mListeners.add(listener);
		}
		
		/*** @see javax.swing.tree.TreeModel#removeTreeModelListener(javax.swing.event.TreeModelListener) */
		public void removeTreeModelListener(TreeModelListener listener) {
			mListeners.remove(listener);
		}
		
		public void notifyListeners() {
			for(TreeModelListener listener : mListeners) {
				listener.treeStructureChanged(
					new TreeModelEvent(this,new TreePath(this))
				);
			}
		}

		/*** @see javax.swing.tree.TreeModel#valueForPathChanged(javax.swing.tree.TreePath, java.lang.Object) */
		public void valueForPathChanged(TreePath path, Object value) {
		}
	}
	
	private void calculateCDs() throws IOException {
		this.mSpacePerDisc = mTargetSize * MEG;

		mCDs.clear();
		SongCollection songs = new SongCollection(mListFile);
		
		int remaining = 0;
		SongCollection cur = null;
		while(songs.size()>0) {
			Song song = songs.getNextSong();
			if(song.getSize()>remaining)song = songs.findClosestSize(remaining);
			if(song==null) {
				mCDs.add(cur = new SongCollection(mCDs.size()));
				remaining = mSpacePerDisc;
			} else {
				cur.addSong(song);
				songs.removeSong(song);
				remaining -= song.getSize();
			}
		}
		
		mModel.notifyListeners();
	}
	
	private void trasferFiles(PrintStream ps) throws IOException {
		for(int i = 0;i < mCDs.size();i++) {
			File dir = new File(mTargetDir,"CD"+(i+1));dir.mkdirs();
			ps.println(dir);
			
			SongCollection sc = mCDs.get(i);
			for(int j = 0;j < sc.size();j++) {
				Song s = sc.getSong(j);
				File in = s.getFile();
				String outName = FileUtility.toValidFileNameString(s.getLongTitle());
				
				if(outName.toLowerCase().startsWith("the "))outName = outName.substring(4).trim();
				
				char first = Character.toLowerCase(outName.charAt(0));
				File out = new File(
					dir,
					(Character.isLetter(first)?first:'#')+File.separator+outName+".mp3"
				);
				ps.println("\t"+out.getName());
				FileUtility.copyFile(in,out);
			}
			ps.println("==========================");
		}
	}
	
	public static class SongCollection
	{
		private List<Song> mOrdered = new ArrayList<Song>();
		private List<Song> mShuffled = new ArrayList<Song>();
		private List<Song> mBySize = new ArrayList<Song>();
		private Set<Song> mUnique = new HashSet<Song>();
		private int mIndex;
		
		public SongCollection(int aIndex) {
			this.mIndex = aIndex;
		}
		
		public SongCollection(File listFile) throws IOException
		{
			BufferedReader br = new BufferedReader(new FileReader(listFile));
			for(String line;(line = br.readLine())!=null;) {
				if(!line.startsWith("#")) {
					File songFile = new File(line);
					if(songFile.exists()) {
						addSong(new Song(songFile));
					}
				}
			}
			br.close();
			Collections.shuffle(mShuffled);
		}
		
		public Song getNextSong() {
			//return mShuffled.get(0);
			return mOrdered.get(0);
		}
		
		public Song getSong(int idx) {
			//return mShuffled.get(idx);
			return mOrdered.get(idx);
		}
		
		public void addSong(Song song) {
			if(mUnique.add(song)) {
				mOrdered.add(song);
				mShuffled.add((int)(Math.random()*mShuffled.size()),song);
				int idx = Collections.binarySearch(mBySize,song);
				mBySize.add(idx<0 ? Math.abs(idx+1) : idx,song);
			}
		}
		
		public void removeSong(Song song) {
			mUnique.remove(song);
			mBySize.remove(song);
			mOrdered.remove(song);
			mShuffled.remove(song);
		}
		
		public Song findClosestSize(int size) {
			for(int i = mBySize.size()-1;i >= 0;i--) {
				Song s = mBySize.get(i);
				if(s.getSize()<size)return s;
			}
			return null;
		}
		
		public long getTotalSize() {
			long accum = 0;
			for(Song song : mOrdered) {
				accum += song.getSize();
			}
			return accum;
		}
		
		public void dump() {
			for(Song song : mShuffled) {
				System.out.println(song);
			}
			System.out.println("=================");
			System.out.println(getTotalSize());
		}
		
		/*** @see java.lang.Object#toString() */
		public String toString() {
			return "Disc "+mIndex+" ("+size()+" items / "+(getTotalSize()/MEG)+" mb)";
			//StringBuilder sb = new StringBuilder();
			//for(int i = 0;i < mShuffled.size();i++) {
			//	if(i>0)sb.append('\n');
			//	sb.append(mShuffled.get(i));
			//}
			//return sb.toString();
		}
		
		public int size() {
			return mOrdered.size();
		}

		public int indexOf(Object value) {
			return mOrdered.indexOf(value);
		}

		public Song get(int index) {
			return mOrdered.get(index);
		}
	}
	
	public static class Song implements Comparable<Song>
	{
		private File mFile;
		private int mSize;
		private ID3V2 mID3;

		public Song(File aFile) throws IOException
		{
			this.mFile = aFile;
			RandomAccessFile raf = new RandomAccessFile(mFile,"r");
			this.mSize = (int)raf.length();
			raf.close();
			try {
				this.mID3 = new ID3V2(mFile);
			} catch(IOException e) {
				System.err.println(mFile);
				throw e;
			}
		}
		
		/*** @see java.lang.Object#hashCode() */
		public int hashCode() {
			return mFile.hashCode();
		}
		
		/*** @see java.lang.Object#equals(java.lang.Object) */
		public boolean equals(Object other) {
			if(other instanceof Song) {
				Song song = (Song)other;
				return song.mFile.equals(mFile);
			} else {
				return false;
			}
		}

		public File getFile() {
			return mFile;
		}

		public int getSize() {
			return mSize;
		}

		/*** @see java.lang.Comparable#compareTo(java.lang.Object) */
		public int compareTo(Song other) {
			return mSize-other.mSize;
		}
		
		public String getArtistID3() {
			return mID3.getTag("TPE1");
		}

		public String getTitleID3() {
			return mID3.getTag("TIT2");
		}
		
		public String getLongTitle() {
			String artist = getArtistID3();
			String title = getTitleID3();
			return artist==null||title==null ? mFile.getName() : artist+" - "+title;
		}
		
		/*** @see java.lang.Object#toString() */
		public String toString() {
			return getLongTitle()+" ("+mSize+")";
		}
	}
	
	public static class ConfigPanel extends JPanel
	{
		private FileChooserTextField mSource;
		private DirectoryChooserTextField mTarget;
		private IntegerTextField mTargetSize;

		public ConfigPanel()
		{
			setLayout(new ColumnLayout(2));
			ColumnLayout.addLabeledRow(this,"Music List",this.mSource = new FileChooserTextField());
			ColumnLayout.addLabeledRow(this,"Target Dircetory",this.mTarget = new DirectoryChooserTextField());
			ColumnLayout.addLabeledRow(this,"Megabytes/Sub-Directory",this.mTargetSize = new IntegerTextField(702,false));
		}
		
		public File getSource() {
			return mSource.getFile();
		}
		
		public File getTarget() {
			return mTarget.getFile();
		}
		
		public int getTargetSize() {
			return mTargetSize.getValuePrimitive();
		}
	}
	
	public static void main(String[] args) throws IOException {
		ConfigPanel cfg = new ConfigPanel();
		
		if(GUIUtil_IM.okCancelDialog(null,"Make Selections",cfg)) {
			new DistributeToCarCD(
				cfg.getSource(),
				cfg.getTarget(),
				cfg.getTargetSize()
			);
		}
	}
}


/**
 * 
 * $Log: DistributeToCarCD.java,v $
 * Revision 1.4  2008/04/23 14:23:52  g137997
 * Major mods.
 *
 * Revision 1.3  2008/03/19 18:56:31  g137997
 * Removed shuffle.
 *
 * Revision 1.2  2007/11/09 14:47:53  g137997
 * Location of Common Utilities collection related classes changed.
 * Organized imports.
 *
 * Revision 1.1  2007/10/08 17:32:29  g137997
 * Initial check-in.
 *
 * 
 */