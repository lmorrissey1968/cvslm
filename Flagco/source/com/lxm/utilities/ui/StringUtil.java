/**
 *
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/StringUtil.java,v 1.1 2007/09/10 12:02:16 g137997 Exp $
 *
 * © LXM LLC, (2007). All rights reserved
 *
 */


package com.lxm.utilities.ui;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.StringTokenizer;



/**
 * Utilities to manipulate strings.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.1 $
 */ 
public class StringUtil implements Constants
{
	/**
	 * Removes embedded parent directory (..) path elements from a path/file spec.
	 * @param aFileSpec The path/file spec possibly containing parent directory elements.
	 * @return The resultant path/file spec after removing .. elements.
	 */
	private final static String removeDotDot(String aFileSpec) {
		List path = new ArrayList();
		StringBuffer sb = new StringBuffer();
		StringTokenizer st = new StringTokenizer(aFileSpec, "\\/");
		while (st.hasMoreTokens()) {
			String tok = st.nextToken();
			if (tok.equals("..")) {
				if (path.size() > 0) {
					path.remove(path.size() - 1);
				} else {
					sb.append("../");
				}
			} else {
				path.add(tok);
			}
		}
		for (Iterator it = path.iterator(); it.hasNext();) {
			sb.append(it.next()).append('/');
		}
		return sb.substring(0, sb.length() - 1);
	}
	
	/**
	 * Converts an absolute path to a path that is relative to a specified base path (if possible).
	 * NOTE: If the relative path requires a traversal of the root directory then the net result is
	 *       that no conversion will be done.
	 * @param aBasePath Base path that the resultant path will be relative to.
	 * @param aPathSpec Path that is to be made relative to the base path.
	 * @return The calculated relative path OR the original path spec if no relative path exists. 
	 */
	public static final String relativePath(String aBasePath, String aPathSpec) {
		if(aBasePath.equals(aPathSpec)){
			return "";
		}else{
			StringBuffer sb = new StringBuffer();
			boolean equalSoFar = true;
			StringTokenizer bst = new StringTokenizer(removeDotDot(aBasePath), "\\/");
			boolean bHad;
			StringTokenizer pst = new StringTokenizer(removeDotDot(aPathSpec), "\\/");
			boolean pHad;
			while ((bHad = bst.hasMoreTokens()) | (pHad = pst.hasMoreTokens())) {
				String bTok = bHad ? bst.nextToken() : null;
				String pTok = pHad ? pst.nextToken() : null;
				if (equalSoFar)
					equalSoFar = equals(bTok, pTok);
				if (!equalSoFar) {
					if (bHad)
						sb.insert(0, "../");
					if (pHad)
						sb.append(pTok).append('/');
				}
		
			}
			return sb.substring(0, sb.length() - 1);
		}
	}
	
	
	public final static boolean conatainsWhiteSpace(String aValue) {
		char[] chars = aValue.toCharArray();
		for (int i = 0; i < chars.length; i++){
			if(Character.isWhitespace(chars[i]))return true;
		}
		return false;
	}
	
	/**
	 * Replaces contiguous blocks of embedded whitespace in a String with a specified character.
	 * @param aValue The String to operate on.
	 * @param aReplaceWith The character to put in for each contiguous block of whitespace.
	 * @return The "replaced" version of the String.
	 */
	public final static String replaceEmbeddedWhiteSpace(String aValue,char aReplaceWith) {
		if(aValue==null){
			return null;
		}else{
			String[] split = aValue.split(REG_EXP_WHITESPACE);
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < split.length; i++){
				if(i>0)sb.append(aReplaceWith);
				sb.append(split[i]);
			}
			return sb.toString();
		}
	}

	/**
	 * Trims and replaces contiguous blocks of embedded whitespace in a String with a single space.
	 * @param aValue The String to operate on.
	 * @return The trimmed/"whitespace-normalized" version of the String.
	 */
	public static final String normalizeWhitespace(String aValue) {
		return replaceEmbeddedWhiteSpace(aValue.trim(),' ');
	}
	
	/**
	 * Replaces contiguous blocks of embedded whitespace in a String with a single space.
	 * @param aValue The String to operate on.
	 * @return The "whitespace-normalized" version of the String.
	 */
	public static final String normalizeEmbeddedWhitespace(String aValue) {
		return replaceEmbeddedWhiteSpace(aValue,' ');
	}
	
	/**
	 * Removes whitespace from a specified String.
	 * @param aValue The String to operate on.
	 * @return The "whiteapce removed" version of the String.
	 */
	public final static String removeWhiteSpace(String aValue) {
		String[] split = aValue.split(REG_EXP_WHITESPACE);
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < split.length; i++)sb.append(split[i]);
		return sb.toString();
	} 
	
	/**
	 * This utility will line wrap a String across whitespace at a specified length.
	 * @param aValue The value to wrap.
	 * @param aLineLength The maximum length of a line.
	 * @return An array containing the wrapped string.
	 */
	public final static String[] wrapString(String aValue,int aLineLength) {
		String[] split = aValue.split(REG_EXP_WHITESPACE);
		List lines = new ArrayList();
		StringBuffer line = new StringBuffer();
		for (int i = 0; i < split.length; i++) {
			int curLength = split[i].length();
			if(line.length()+curLength>aLineLength){
				lines.add(line.toString().trim());
				line = new StringBuffer();
			}
			line.append(split[i]).append(' ');
		}
		if(line.length()>0)lines.add(line.toString().trim());
		return (String[])lines.toArray(new String[lines.size()]);
	}
	
	/**
	 * Convenience method to check for an null or blank.
	 * @param s The String to check.
	 * @return true if the String is null or empty.
	 */
	public static final boolean isNullOrBlank(String s) {
		return s == null || s.equals("");
	}
	
	/**
	 * Tests String equality even if one or both are null.
	 * @param s1 String 1
	 * @param s2 String 2
	 * @return true if the strings are equal false otherwise.
	 */
	public static final boolean equals(String s1, String s2) {
		return s1 == s2 ? true : (s1 == null || s2 == null) ? false : s1.equals(s2);
	}
	
	/**
	 * Tests Object equality even if one or both are null.
	 * @param o1 Object 1
	 * @param o2 Object 2
	 * @return true if the Objects are the same instance or are equivalent according to equals.
	 */
	public static final boolean equals(Object o1, Object o2) {
		return o1 == o2 ? true : (o1 == null || o2 == null) ? false : o1.equals(o2);
	}
	
	/**
	 * Replaces all backslash (\) directory separators with the more universal forward slash (/).
	 * @param aFileSpec The path/file spec to operate on.
	 * @return The "fixed" version of the path/file spec.
	 */
	public final static String fixSeparators(String aFileSpec) {
		StringBuffer sb = new StringBuffer();
		StringTokenizer st = new StringTokenizer(" "+aFileSpec+" ","\\",false);
		while (st.hasMoreTokens())sb.append(st.nextToken().trim()).append('/');
		return sb.substring(0, sb.length() - 1);
	}

	public static final String toNestedExceptionString(Throwable exc) {
		StringBuffer sb = new StringBuffer();
		for(int i=0;exc!=null;i++){
			if(i>0)sb.append(Constants.NEWLINE).append("  caused by").append(Constants.NEWLINE);
			sb.append(exc);
			exc = exc.getCause();
		}
		return sb.toString();
	}

	/**
	 * Converts a Throwable object's stack trace into a String.
	 * @param exc A Throwable implementor whose stack trace to String.
	 * @return A stack trace String.
	 */
	public static final String toStackTraceString(Throwable exc) {
		StringWriter sw = new StringWriter();
		exc.printStackTrace(new PrintWriter(sw));
		return sw.toString();
	}
	
	
	/**
	 * This utility method takes a URL search string 
	 * and parses it into a Properties object.
	 * @param search
	 * @return
	 */
	public static final Properties parseSearchString(String search) {
		Properties p = new Properties();
		String[] split = search.split("&");
		for(int i = 0;i < split.length;i++) {
			int eqIdx = split[i].indexOf('=');
			if(eqIdx!=-1){
				p.setProperty(
					split[i].substring(0,eqIdx).trim(),
					split[i].substring(eqIdx+1).trim()
				);
			}
		}
		return p;
	}
	
	/**
	 * Counts the number of tabs at the beginning of a String.
	 * @param aLine The String to count leading tabs from.
	 * @return The number of tabs at the beginning of the String.
	 */
	public final static int numTabs(String aLine){
		int l = aLine.length();
		for(int i = 0;i < l;i++) {
			if(aLine.charAt(i)!='\t')return i;
		}
		return 0;
	}

	/**
	 * Returns the value of a key/value pair where the 
	 * assignment delimeter is an equals character.
	 * @param aData The line containing the key/value pair.
	 * @return The value of the key/value pair.
	 */
	public static final String getPairValue(String aData) {
		return getPairValue(aData,'=');
	}
	
	/**
	 * Returns the value of a key/value pair where the 
	 * assignment delimeter is a specified character.
	 * @param aData The line containing the key/value pair.
	 * @param aDelimeter The assignment delimeter character.
	 * @return The value of the key/value pair.
	 */
	public static final String getPairValue(String aData,char aDelimeter) {
		return aData.substring(aData.indexOf(aDelimeter)+1).trim();
	}
	
	/**
	 * Returns the substring (of a String) after the last
	 * occurence of a specified character. 
	 * @param aData The string containing the desired ending.
	 * @param aSearch The character to search for.
	 * @return The resultant value.
	 */
	public static final String afterLast(String aData,char aSearch) {
		return aData.substring(aData.lastIndexOf(aSearch)+1);
	}

	/**
	 * Returns the substring (of a String) before the last
	 * occurence of a specified character. 
	 * @param aData The string containing the desired start.
	 * @param aSearch The character to search for.
	 * @return The resultant value.
	 */
	public static final String beforeLast(String aData,char aSearch) {
		return aData.substring(0,aData.lastIndexOf(aSearch));
	}

	/**
	 * Returns the rightmost N characters of an input string.
	 * @param aData The string containing the desired data.
	 * @param aNumChars The number of rightmost characters of the string to return.
	 * @return The rightmost N characters of the input string.
	 */
	public static final String rightMost(String aData,int aNumChars) {
		return aData.substring(Math.max(0,aData.length()-aNumChars));
	}
}

/**
 *
 * $Log: StringUtil.java,v $
 * Revision 1.1  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.1  2007/03/25 14:36:52  g137997
 * Imported several usefull utilities from another development effort.
 *
 *
 */