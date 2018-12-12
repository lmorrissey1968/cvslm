/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/unittest/TestImport.java,v 1.4 2008/07/07 21:54:36 g137997 Exp $
 * 
 * TestImport
 * Created on Mar 8, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.unittest;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import com.lxm.utilities.ui.UtilUI;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.4 $
 */
public class TestImport
{
	public static final String TSV_SPLIT = "[\"]*\t[\"]*";

	
	public static void main(String[] args) throws IOException {
		File chosen = UtilUI.chooseFile(null,".");
		if(chosen!=null){
			BufferedReader br = new BufferedReader(new FileReader(chosen));
			br.readLine();
			String line;
			for(int i=0;(line=br.readLine())!=null && i<40;i++) {
				System.out.println(Arrays.toString(line.replaceAll("\"\"","\"").split(TSV_SPLIT)));
			}
			br.close();
		}
	}

}


/**
 * 
 * $Log: TestImport.java,v $
 * Revision 1.4  2008/07/07 21:54:36  g137997
 * Test modifications.
 *
 * Revision 1.3  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.2  2007/03/12 13:00:45  g137997
 * Fixed text file parser regular expression.
 *
 * Revision 1.1  2007/03/08 19:55:46  g137997
 * Initial check-in.
 *
 * 
 */