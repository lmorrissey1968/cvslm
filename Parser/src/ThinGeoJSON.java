import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintStream;

/**
 * 
 * $Header: /repository/CVSLM/Parser/src/ThinGeoJSON.java,v 1.1 2015/08/17 18:03:13 g137997 Exp $
 * 
 * ThinGeoJSON
 * Created on Dec 16, 2014
 *
 * © Lockheed Martin Corporation, (2014). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */
public class ThinGeoJSON {

	public static void main(String[] args) throws IOException {
		dump(System.out,args[0]);
	}


	public static void dump(PrintStream ps,String file) throws IOException {
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
		
		int level = 0;
		
		for(int i;(i=bis.read())!=-1;) {
			char c = (char)i;
			if(c=='{'){
				level++; 
				ps.println(); tab(ps,level);
			} else if(c=='}') {
				level--;
				ps.println(); tab(ps,level);
			} else {
			}
			ps.print(c);
		}
	}
	
	public static void tab(PrintStream ps,int num) {
		for (int i = 0; i < num; i++) {
			ps.print("\t");
		}
	}
}


/**
 * 
 * $Log: ThinGeoJSON.java,v $
 * Revision 1.1  2015/08/17 18:03:13  g137997
 * Check-in.
 *
 * 
 */