/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/util/IntegerTextField.java,v 1.1 2006/02/13 22:14:08 g137997 Exp $
 * 
 * IntegerTextField
 * Created on Oct 9, 2003
 *
 * © Lockheed Martin Corporation, (2003). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */
 
package org.lxm.util;

import java.awt.Toolkit;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.text.DecimalFormat;

import javax.swing.JTextField;
import javax.swing.text.AttributeSet;
import javax.swing.text.BadLocationException;
import javax.swing.text.PlainDocument;


/**
 * This class extends the capabilities of a JTextField to conveniently handle integers.
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.1 $
 */
public class IntegerTextField extends JTextField implements FocusListener
{
	private static final Integer ZERO = new Integer(0);
	
	private Integer mValue;
	private DecimalFormat mFormat;
	
	private boolean mHasFocus;
	private boolean mHasChanged;
	private boolean mNullable = true;


	/**
	 * Constructor: Master
	 * @param value The initial value of this field.
	 * @param aNullable Should this field be nullable?
	 */
	public IntegerTextField(Integer aValue,boolean aNullable)
	{
		super(12);
		setDocument(
			new PlainDocument() {
				public void insertString(int offset, String str, AttributeSet a) throws BadLocationException {
					try {
						if(Util.conatainsWhiteSpace(str)){
							Toolkit.getDefaultToolkit().beep();
						}else{
							String newValue = new StringBuffer(getText(0,getLength())).insert(offset,str).toString();
							if(newValue.equals("-"))newValue="-0";
							try {
								Integer.parseInt(newValue);
								super.insertString(offset,str,a);
							} catch (Exception exc) {
								Toolkit.getDefaultToolkit().beep();
							}
						}
					} catch (Exception exc) {
						Toolkit.getDefaultToolkit().beep();
					}
				}
			}
		);
		setNullable(aNullable);
		setValue(aValue);
		this.mHasChanged = false;
		setHorizontalAlignment(RIGHT);
		formatText();
		addFocusListener(this);
	}
	
	/**
	 * Constructor: Primitive convenience overload
	 * @param aValue
	 * @param aNullable
	 */
	public IntegerTextField(int aValue,boolean aNullable)
	{
		this(new Integer(aValue),aNullable);
	}

	/**
	 * Constructor
	 * Creates a nullable decimal text field with a specified initial value.
	 * @param value The initial value of this field.
	 */
	public IntegerTextField(Integer aValue)
	{
		this(aValue,true);
	}

	/**
	 * Constructor: Primitive convenience overload
	 * Creates a nullable decimal text field with a specified initial value.
	 * @param aValue
	 * @param aNullable
	 */
	public IntegerTextField(int aValue)
	{
		this(new Integer(aValue));
	}

	public IntegerTextField(boolean aNullable,int aColumns)
	{
		this(aNullable ? null : ZERO, aNullable);
		setColumns(aColumns);
	}

	
	/**
	 * Constructor
	 * Creates a decimal text field with a defualt initial value.
	 * NOTE: Will be null if nullable and 0 if not nullable.
	 * @param aNullable Should this field be nullable?
	 */
	public IntegerTextField(boolean aNullable)
	{
		this(aNullable ? null : ZERO, aNullable);
	}


	/**
	 * Constructor
	 * @param value The initial value of this field.
	 * @param aNullable Should this field be nullable?
	 * @param aFormat Format that the number should take.
	 */
	public IntegerTextField(int aValue,boolean aNullable,DecimalFormat aFormat)
	{
		this(aValue,aNullable);
		this.mFormat = aFormat;
		formatText();
	}

	/**
	 * Clears the field back to its default value
	 */
	public void clear() {
		setValue(null);
	}
	
	/**
	 * Sets the nullability of this field.
	 * @param aNullable true if the field should be nullable else false.
	 */
	public void setNullable(boolean aNullable) {
		this.mNullable = aNullable;
		if(mNullable && mValue==null){
			setValue(ZERO);
		}
	}
	
	/**
	 * Sets the numerical formatter for this field.
	 * @param aFormat a DecimaFormat object containing the template for formatting this field. 
	 */
	public void setFormat(DecimalFormat aFormat) {
		this.mFormat = aFormat;
	}
	
	/**
	 * Gets the value object for this field.
	 * @return the value object for this field.
	 */
	public Integer getValue() {
		return this.mValue;
	}
	
	/**
	 * Gets the primitive version of the value for this field.
	 * @return the primitive version of the value for this field.
	 */
	public int getValuePrimitive() {
		return this.mValue.intValue();
	}
	
	public void setValue(int value) {
		setValue(new Integer(value));
	}
	
	public void setValue(Integer value) {
		this.mValue = mNullable ? value : value==null ? ZERO : value ;
		this.mHasChanged = true;
		formatText();
	}
	
	private void formatText(){
		super.setText( this.mValue==null ? "" : this.mFormat==null ? this.mValue.toString() : mFormat.format(this.mValue) );
	}
	
	/**
	 * Flag to see if the value has changed since last flag reset.
	 * @return true if the value has changed/false if it has not.
	 */
	public boolean hasChanged() {
		return this.mHasChanged;
	}
	
	/*** @see javax.swing.text.JTextComponent#setText(java.lang.String) */
	public void setText(String data) {
		if(data==null || data.equals("")){
			setValue( mNullable ? null : ZERO ); 
		}else{
			try {
				setValue( new Integer(data) );
			} catch (NumberFormatException exc) {
				setValue( ZERO );
				requestFocus();
			}
		}
	}
	
	/*** @see java.awt.event.FocusListener#focusGained(java.awt.event.FocusEvent) */
	public void focusGained(FocusEvent e){
		selectAll();
		mHasFocus = true;
	}
	
	public void sync() {
		setText(getText());
	}
	
	/*** @see java.awt.event.FocusListener#focusLost(java.awt.event.FocusEvent) */
	public void focusLost(FocusEvent e){
		if(mHasFocus){
			mHasFocus = false;
			setText(getText());
		}
	}
	
}

/**
 *
 * $Log: IntegerTextField.java,v $
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2006/01/30 13:00:59  g137997
 * Initial check-in.
 *
 * Revision 1.1  2005/07/18 17:05:22  g137997
 * Moved more common stuff to common project.
 *
 * Revision 1.2  2005/07/12 12:11:37  g137997
 * Moved commonly used utilities to new "Common Utilities" project.
 *
 * Revision 1.1  2005/05/25 10:20:43  g596060
 * Mods due to changing package name for OSA comm, entities, media, etc.,
 * classes and resources.
 *
 * Revision 1.9  2005/05/24 17:22:36  g596060
 * Mods due to changing package name for OSA utility classes.
 * Also, organized imports.
 *
 * Revision 1.8  2005/01/12 20:51:36  g137997
 * Added a new constructor.
 *
 * Revision 1.7  2005/01/05 15:04:50  g137997
 * Now allows the entry of a negative sign before numbers.
 *
 * Revision 1.6  2004/12/15 19:47:24  g137997
 * Unit Conversion work in progress.
 *
 * Revision 1.5  2004/12/09 20:43:53  g137997
 * Added clear() method.
 *
 * Revision 1.4  2004/12/09 19:16:12  g137997
 * Added whitespace filtering.
 *
 * Revision 1.3  2004/12/09 18:05:58  g137997
 * Modified to be more stringent on what is allowed to be typed in field.
 *
 * Revision 1.2  2004/06/28 17:59:02  g137997
 * Fixed keyword expansion.
 *
 * Revision 1.5  2004/04/20 00:00:22  lxm01
 * Decreased default width.
 *
 * Revision 1.4  2004/04/15 21:34:18  lxm01
 * Decreased default width of field.
 *
 * Revision 1.3  2004/03/23 00:26:54  lxm01
 * Changed default width from 8 to 16.
 *
 * Revision 1.2  2004/03/20 00:26:05  lxm01
 * Added overload constructor.
 * Added javadoc comments.
 *
 * Revision 1.1  2004/03/19 01:05:31  lxm01
 * Checked in under new name of a renamed class.
 *
 * Revision 1.5  2004/03/10 01:36:04  lxm01
 * Added setValue(double).
 *
 * Revision 1.4  2004/03/09 00:21:38  lxm01
 * Added NULLABLE flag.
 *
 * Revision 1.3  2004/03/02 18:49:05  lxm01
 * Changed encapsulted number from BigDecimal to Double.
 *
 * Revision 1.2  2003/10/17 18:07:22  g137997
 * Added CVS Header and Footer
 *
 *
 */