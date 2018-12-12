/**
 * 
 * $Header$
 * 
 * Stripper
 * Created on Dec 12, 2018
 *
 * © Lockheed Martin Corporation, (2018). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.spotify;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.lmco.adp.utility.StringUtil;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision$
 */
public class Stripper {
	public static void main(String[] args) throws IOException {
		if(args.length>0) {
			BufferedReader br = new BufferedReader(new FileReader(args[0]));
			PrintStream ps = args.length>1 ? new PrintStream(new FileOutputStream(args[1])): System.out;
			br.lines()
				.map(String::trim)
				.map(StringUtil::parseCSV)
				.map(sa->fix(sa))
				.forEach(ps::println)
			;
			br.close();
			ps.flush();
			ps.close();
		}
	}

	private static String fix(String[] sa) {
		return Stream.of(sa)
			.map(s->fixSB(s))
			.map(s->fixP(s))
			.map(String::trim)
			.map(StringUtil::normalToCSV)
			.collect(Collectors.joining(","))
		;
	}
	
	private static String fixSB(String s) {
		int idx = s.indexOf("[");
		return idx==-1 ? s : s.substring(0,idx);
	}
	
	private static String fixP(String s) {
		int idx = s.indexOf("(");
		return idx>0 ? s.substring(0,idx) : s;
	}
}


/**
 * 
 * $Log$
 * 
 */