/**
 * 
 * $Header: /repository/CVSLM/Testing/source/com/lxm/seinfeld/EpisodeNamer.java,v 1.2 2011/12/22 00:00:03 g137997 Exp $
 * 
 * EpisodeNamer
 * Created on Dec 21, 2011
 *
 * © Lockheed Martin Corporation, (2011). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.seinfeld;

import java.awt.Component;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.DecimalFormat;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileFilter;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */
public class EpisodeNamer
{
	public static DecimalFormat SEASON = new DecimalFormat("S0");
	public static DecimalFormat SEASON_EPISODE = new DecimalFormat("E00");
	public static DecimalFormat SERIES_EPISODE = new DecimalFormat("(000)");
	
	public static void main(String[] args) throws IOException {
		File inFile = new File(args[0]).getCanonicalFile();
		File inFileDir = inFile.getParentFile();
		String inFileName = inFile.toString();
        int lidx = inFileName.lastIndexOf('.');
		//String outFileName = inFileName.substring(0,lidx)+".out"+args[0].substring(lidx);

		BufferedReader br = new BufferedReader(new FileReader(args[0]));
        //PrintWriter pw = new PrintWriter(outFileName);
		
		int season = 0;
		File seasonDirectory = null;
		for(String line;(line = br.readLine())!=null;) {
			if(line.startsWith("Season")) {
				season = Integer.parseInt(line.substring(6,line.indexOf(':')).trim());
				seasonDirectory = chooseDirectory(inFileDir,season);
			} else {
				String[] split = line.split("\t");
				int seriesEpisodeNum = Integer.parseInt(split[0].trim());
				int seasonEpisodeNum = Integer.parseInt(split[1].trim());
				String episodeName = split[2].trim(); episodeName = episodeName.substring(1,episodeName.length()-1);
				String episodeFileName = "Seinfeld "+SEASON.format(season)+SEASON_EPISODE.format(seasonEpisodeNum)+SERIES_EPISODE.format(seriesEpisodeNum)+" - "+episodeName+".m4v";
				
				if(seasonDirectory!=null) {
					File targetFile = new File(seasonDirectory,episodeFileName);
					if(!targetFile.exists()) {
						File sourceFile = chooseFileOrSkip(seasonDirectory,episodeFileName);
						if(sourceFile!=null) {
							System.out.println("Renaming '"+sourceFile.getName()+"' to '"+targetFile.getName()+"'");
							sourceFile.renameTo(targetFile);
						} else {
							System.out.println("Skipping rename of '"+episodeFileName+"'");
						}
					} else {
						System.out.println("File named '"+episodeFileName+"' already exists in '"+seasonDirectory+"'");
					}
				} else {
					System.out.println("Skipping Season: "+season+", File: "+episodeFileName);
				}
			}
		}
		br.close();
		//pw.close();
	}
	
	public static final File chooseDirectory(File baseDir,int season) {
		JFileChooser choose = new JFileChooser(baseDir);
		choose.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
		choose.setMultiSelectionEnabled(false);
		
		switch(customOptionDialog(null,"Choose Directory For Season "+season,choose,"Select","Skip Season "+season,"Exit")) {
			case 0: 
				return choose.getSelectedFile();
			case 1: default: 
				return null;
			case 2:
				System.exit(0);
				return null;
		}
	}
	
	public static final File chooseFileOrSkip(File baseDir,String targetFile) {
		JFileChooser choose = new JFileChooser(baseDir);
		choose.setFileSelectionMode(JFileChooser.FILES_ONLY);
		choose.setMultiSelectionEnabled(false);
		choose.setFileFilter(
			new FileFilter() {
				public String getDescription() {
					return "Un-renamed file";
				}
				
				public boolean accept(File file) {
					return file.isDirectory()||!file.getName().startsWith("Seinfeld");
				}
			}
		);

		switch(customOptionDialog(null,"File To Be Named "+targetFile,choose,"Select","Skip","Exit")) {
			case 0: 
				return choose.getSelectedFile();
			case 1: default: 
				return null;
			case 2:
				System.exit(0);
				return null;
		}
	}
	
	public static final int customOptionDialog(Component parent,String title,Object message,String...options) {
		return JOptionPane.showOptionDialog(
			parent,
			message,
			title,
			JOptionPane.DEFAULT_OPTION,
			JOptionPane.QUESTION_MESSAGE,
			null,
			options,
			options[0]
		);
	}
}


/**
 * 
 * $Log: EpisodeNamer.java,v $
 * Revision 1.2  2011/12/22 00:00:03  g137997
 * Improved
 *
 * Revision 1.1  2011/12/21 21:54:06  g137997
 * Initial check-in.
 *
 * 
 */