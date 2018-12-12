/*
 * @(#)BooleanPropertyEditor.java
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
import java.awt.event.*;
import java.beans.*;

import javax.swing.*;
import javax.swing.event.*;

/**
 * Provides a UI Component to configure a Boolean
 * property.
 *
 * @author       Vincent Hardy
 * @version      1.0, 10/13/1998
 */
public class BooleanPropertyEditor extends PropertyEditorSupport{
  static final String LABEL = "On";

  /**
   * Property editor component
   */
  private JCheckBox checkBox;

  /**
   * This method is intended for use when generating Java code to set
   * the value of the property.  It should return a fragment of Java code
   * that can be used to initialize a variable with the current property
   * value.
   */
  public String getJavaInitializationString() {
    Boolean bool = (Boolean)getValue();
    return "" + bool.booleanValue();
  }

  /**
   * Gets the property value as a string suitable for presentation
   * to a human to edit.
   *
   * @return The property value as a string suitable for presentation
   *       to a human to edit.
   * <p>   Returns "null" is the value can't be expressed as a string.
   * <p>   If a non-null value is returned, then the PropertyEditor should
   *	     be prepared to parse that string back in setAsText().
   */
  public String getAsText() {
    return null;
  }

  /**
   * Sets the property value by parsing a given String.  May raise
   * java.lang.IllegalArgumentException if either the String is
   * badly formatted or if this kind of property can't be expressed
   * as text.
   *
   * @param text  The string to be parsed.
   */
  public void setAsText(String text) throws java.lang.IllegalArgumentException {
    throw new IllegalArgumentException(text);
  }

  /**
   * A PropertyEditor may chose to make available a full custom Component
   * that edits its property value.  It is the responsibility of the
   * PropertyEditor to hook itself up to its editor Component itself and
   * to report property value changes by firing a PropertyChange event.
   * <P>
   * The higher-level code that calls getCustomEditor may either embed
   * the Component in some larger property sheet, or it may put it in
   * its own individual dialog, or ...
   *
   * @return A java.awt.Component that will allow a human to directly
   *      edit the current property value.  May be null if this is
   *	    not supported.
   */
  public synchronized java.awt.Component getCustomEditor() {
    if(checkBox==null){
      checkBox = new JCheckBox(LABEL);

      class ValueChangeListener implements ChangeListener, PropertyChangeListener{
	boolean settingValue = false;
	
	// Synchronize value with UI
	public void stateChanged(ChangeEvent evt){
	  Boolean newVal = new Boolean(checkBox.isSelected());
	  settingValue = true;
	  setValue(newVal);
	  settingValue = false;
	}

	public void propertyChange(PropertyChangeEvent evt){
	  if(!settingValue){
	    Boolean newVal = (Boolean)getValue();
	    checkBox.setSelected(newVal.booleanValue());
	  }
	}
      };

      ValueChangeListener listener = new ValueChangeListener();

      // Synchronize Value with UI
      checkBox.addChangeListener(listener);

      // Synchronize UI with value
      addPropertyChangeListener(listener);

    }

    return checkBox;
  }

  /**
   * Determines whether the propertyEditor can provide a custom editor.
   *
   * @return  True if the propertyEditor can provide a custom editor.
   */
  public boolean supportsCustomEditor() {
    return true;
  }
  
}

