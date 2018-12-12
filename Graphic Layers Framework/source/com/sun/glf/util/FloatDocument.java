/*
 * @(#)FloatDocument.java
 *
 * Copyright (c) 1999 Sun Microsystems, Inc. All Rights Reserved.
 *
 * Sun grants you ("Licensee") a non-exclusive, royalty free, license to use,
 * modify and redistribute this software in source and binary code form,
 * provided that i) this copyright notice and license appear on all copies of
 * the software; and ii) Licensee does not utilize the software in a manner
 * which is disparaging to Sun.
 *
 * This software is provided "AS IS," without a warranty of any kind. ALL
 * EXPRESS OR IMPLIED CONDITIONS, REPRESENTATIONS AND WARRANTIES, INCLUDING ANY
 * IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR
 * NON-INFRINGEMENT, ARE HEREBY EXCLUDED. SUN AND ITS LICENSORS SHALL NOT BE
 * LIABLE FOR ANY DAMAGES SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING
 * OR DISTRIBUTING THE SOFTWARE OR ITS DERIVATIVES. IN NO EVENT WILL SUN OR ITS
 * LICENSORS BE LIABLE FOR ANY LOST REVENUE, PROFIT OR DATA, OR FOR DIRECT,
 * INDIRECT, SPECIAL, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE DAMAGES, HOWEVER
 * CAUSED AND REGARDLESS OF THE THEORY OF LIABILITY, ARISING OUT OF THE USE OF
 * OR INABILITY TO USE SOFTWARE, EVEN IF SUN HAS BEEN ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGES.
 *
 * This software is not designed or intended for use in on-line control of
 * aircraft, air traffic, aircraft navigation or aircraft communications; or in
 * the design, construction, operation or maintenance of any nuclear
 * facility. Licensee represents and warrants that it will not use or
 * redistribute the Software for such purposes.
 */

package com.sun.glf.util;

import javax.swing.text.*;

/**
 * Helper class. Only allows an float value in the document.
 * 
 * @author          Vincent Hardy
 * @version         1.0, 10/16/1998
 */
public class FloatDocument extends PlainDocument {
  /** 
   * Strip all non digit characters. '-' and '+' are only allowed as the
   * first character. Only one '.' is allowed.
   **/
  public void insertString(int offs, String str, AttributeSet a) throws BadLocationException { 
    if (str == null) {
      return;
    }

    // Get current value
    String curVal = getText(0, getLength());
    boolean hasDot = curVal.indexOf(".")!=-1;

    // Strip non digit characters
    char[] buffer = str.toCharArray();
    char[] digit = new char[buffer.length];
    int j = 0;

    if(offs==0 && buffer!=null && buffer.length>0 && buffer[0]=='-')
      digit[j++] = buffer[0];

    for (int i = 0; i < buffer.length; i++) {
      if(Character.isDigit(buffer[i]))
	digit[j++] = buffer[i];
      if(!hasDot && buffer[i]=='.'){
	digit[j++] = '.';
	hasDot = true;
      }
    }

    // Now, test that new value is within range.
    String added = new String(digit, 0, j);
    try{
      StringBuffer val = new StringBuffer(curVal);
      val.insert(offs, added);
      if(val.toString().equals(".") || val.toString().equals("-") || val.toString().equals("-.")){
	super.insertString(offs, added, a);
      }
      else{
	Float.valueOf(val.toString());
	super.insertString(offs, added, a);
      }
    }catch(NumberFormatException e){
      // Ignore insertion, as it results in an out of range value
    }
  }
}


