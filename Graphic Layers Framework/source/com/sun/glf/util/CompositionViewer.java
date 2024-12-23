/*
 * @(#)CompositionViewer.java
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

import java.awt.*;
import java.beans.Beans;
import java.io.*;
import java.awt.event.*;
import java.awt.image.*;
import com.sun.image.codec.jpeg.*;

import com.sun.glf.*;
import com.sun.glf.util.*;

/**
 * Executable class that takes the name of a CompositionFactory bean
 * or class as an input. It will try to load the bean and use it to create a
 * composition that is then displaed in a frame size to the dimension
 * of the composition. When exiting the viewer, the user is prompted whether
 * or not he/she wants to save the composition as a JPEG image.
 *
 * @author           Vincent Hardy
 * @version          1.0, 03/04/1998
 * @see              j2d.factories.CompositionFactory
 */
public 
class CompositionViewer {
  static final String USAGE = "Usage : java CompositionViewer <builderBeanName>";

  static {
    // Initialize Swing defaults
    Toolbox.swingDefaultsInit();
  }

  /**
   * Entry point. 
   * @param args command line arguments. First argument is expected to be a beans name
   * @exception IllegalArgumentException if no argument or if beans cannot be loaded
   *            or is not a CompositionFactory.
   * @exception Error if bean file cannot be read.
   */
  public static void main(String args[]){
    // Check input arguments.
    if(args==null || args.length<1)
      throw new IllegalArgumentException(USAGE);
    
    String getAllFonts = System.getProperty("com.sun.glf.getAllFonts", "false");
    if(getAllFonts.equalsIgnoreCase("true")){
      Toolbox.initFonts();
    }
    
    // Try and load builder bean
    CompositionFactory builder = null;
    try{
	if(args[0].toLowerCase().endsWith(".ser.txt"))
	  builder = (CompositionFactory)TextBeans.read(new FileInputStream(args[0]));
	else
	  builder = (CompositionFactory)Beans.instantiate(null, args[0]);
    }catch(ClassNotFoundException e){
      System.out.println(USAGE);
      e.printStackTrace();
      throw new IllegalArgumentException(args[0] + " class not found");
    }catch(IOException e){
      e.printStackTrace();
      throw new Error("Could not read bean file. IO Error. File may be corrupted.");
    }catch(ClassCastException e){
      e.printStackTrace();
      throw new IllegalArgumentException(args[0] + " is not a CompositionFactory");
    }

    final CompositionFrame frame = new CompositionFrame("");
    frame.load(builder);
    frame.setVisible(true);

    frame.addWindowListener(new WindowAdapter(){
      public void windowClosing(WindowEvent evt){
	System.exit(0);
      }
    });
  }
}
