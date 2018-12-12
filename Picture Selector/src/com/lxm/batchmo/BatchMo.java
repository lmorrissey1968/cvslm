/**
 * 
 * $Header: /repository/CVSLM/PicSel/src/com/lxm/batchmo/BatchMo.java,v 1.1 2016/01/15 21:01:02 g137997 Exp $
 * 
 * BatchMo
 * Created on Dec 9, 2015
 *
 * © Lockheed Martin Corporation, (2015). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.batchmo;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.io.File;

import javax.swing.JFrame;
import javax.swing.JList;
import javax.swing.JScrollPane;

import com.lmco.adp.utility.EnhancedProperties;
import com.lmco.adp.utility.ui.ActionButton;
import com.lmco.adp.utility.ui.DirectoryChooserTextField;
import com.lmco.adp.utility.ui.GUIUtil_IM;
import com.lmco.adp.utility.ui.ListListModel;
import com.lmco.adp.utility.ui.MemoryFramePrefs;
import com.lmco.adp.utility.ui.TextValueChangeEvent;
import com.lmco.adp.utility.ui.TextValueChangeListener_IF;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (lmorrissey)
 * @version $Revision: 1.1 $
 */
public class BatchMo extends MemoryFramePrefs 
{
	public static void main(String[] args) { new BatchMo(); }

	public static final String KEY_DEFAULT_PATH = "default.path";
	public static final String KEY_BATCH_FILES = "batch.files";
	public static final String KEY_OUTPUT_DIR = "out.dir";

	private EnhancedProperties mEP;
	
	private ListListModel<File> mModel = new ListListModel<File>();
	private JList<File> mList = new JList<File>(mModel);
	private DirectoryChooserTextField mOutput;
	
	public BatchMo() {
		super("Batch Manager",BatchMo.class);
		this.mEP = new EnhancedProperties(getProperties());
		
		setLayout(new BorderLayout());
		add(
			new JScrollPane(mList),
			BorderLayout.CENTER
		);
		
		add(
			new GUIUtil_IM.FlowContainer(FlowLayout.CENTER).addItems(
				"Output Directory",
				this.mOutput = new DirectoryChooserTextField(mEP.getFile(KEY_OUTPUT_DIR,".")) {{
					addTextValueChangedListener(
						new TextValueChangeListener_IF() {
							public void valueChanged(TextValueChangeEvent evt) { mEP.setFile(KEY_OUTPUT_DIR,getFile()); }
						}
					);
				}}
			),
			BorderLayout.NORTH
		);
		
		add(
			new GUIUtil_IM.FlowContainer(FlowLayout.CENTER).addItems(
				new ActionButton("ADD") { public void actionPerformed(ActionEvent e) { addFiles(); } },
				new ActionButton("CLEAR") { public void actionPerformed(ActionEvent e) { clearFiles(); } },
				new ActionButton("RUN") { public void actionPerformed(ActionEvent e) { runBatch(); } }
			),
			BorderLayout.SOUTH
		);
		
		for (File f : mEP.getFilesForKeysLike(KEY_BATCH_FILES,false))mModel.add(f);
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		if(!isBoundsLoaded()){
			pack();
			setLocationRelativeTo(null);
		}
		setVisible(true);
	}
	
	private void runBatch() {
		for (File f : mModel.getData()) {
			
			String name = f.getName();
			String newName = name.substring(0, name.indexOf('(')).trim();
			
			System.out.println(
				String.format(
					//"ffmpeg -i \"%s\" -c:v copy -b:a 192k -ac 2 -ar 48000 \"%s\"\n",
					"ffmpeg " +
					"-i \"%s\" " +
					"-c:v copy " +
					"-c:a copy \"%s\"",
					f,
					new File(mOutput.getFile(),newName+".mp4")
				)
			);
		}
	}
	
	private void clearFiles() {
		mModel.clear();
		saveModel();
	}
	
	private void saveModel() { mEP.setFileList(KEY_BATCH_FILES,mModel.getData()); }

	public void addFiles() {
		File[] files = GUIUtil_IM.chooseFiles(this,mEP.getFile(KEY_DEFAULT_PATH,new File(".")),new File("."), "Add");
		if(files!=null){
			mEP.setFile(KEY_DEFAULT_PATH,files[0].getParentFile());
			for (File f : files)mModel.add(f);
			saveModel();
		}
	}
	
}


/**
 * 
 * $Log: BatchMo.java,v $
 * Revision 1.1  2016/01/15 21:01:02  g137997
 * Check-in.
 *
 * 
 */