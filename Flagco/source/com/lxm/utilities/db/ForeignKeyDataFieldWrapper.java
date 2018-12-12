/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/ForeignKeyDataFieldWrapper.java,v 1.2 2007/10/12 17:09:32 g137997 Exp $
 * 
 * ForeignKeyCodeWrapper
 * Created on Sep 12, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.utilities.db;

import java.awt.Color;
import java.awt.Component;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Insets;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;

import javax.swing.BorderFactory;
import javax.swing.JComponent;
import javax.swing.JFormattedTextField;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;
import javax.swing.border.TitledBorder;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */
public class ForeignKeyDataFieldWrapper extends JComponent implements DataListener,DataField_IF
{
	private ForeignKeyDataField mData;
	private JFormattedTextField mCodeEntry;
	
	public ForeignKeyDataFieldWrapper(
		String aFieldName,
		DataRefreshManager aManager,
		DataBaseConnector aConnector,
		Table_IF aDefinition
	){
		setLayout(new FlowLayout(FlowLayout.LEFT,0,0));
		add(
			this.mData = new ForeignKeyDataField(
				aFieldName,
				aManager,
				aConnector,
				aDefinition
			)
		);
		add(
			this.mCodeEntry = new JFormattedTextField(new DecimalFormat("#"))
		);
		

		TitledBorder tb = new TitledBorder(BorderFactory.createEmptyBorder()) {
			public Insets getBorderInsets(Component c) { return new Insets(0,0,5,0); }
		};
		tb.setTitle("CODE");
		tb.setTitleFont(new Font("sansserif",Font.PLAIN,9));
		tb.setTitleColor(Color.LIGHT_GRAY);

		mCodeEntry.setBorder(tb);
		mCodeEntry.setColumns(5);
		mCodeEntry.setHorizontalAlignment(JTextField.RIGHT);
		mCodeEntry.addFocusListener(
			new FocusListener() {
				public void focusGained(FocusEvent e) {
					mCodeEntry.setValue(mData.getSelectedCode());
					SwingUtilities.invokeLater(
						new Runnable() {
							public void run() {
								mCodeEntry.selectAll();
							}
						}
					);
				}

				public void focusLost(FocusEvent e) {
					mCodeEntry.setValue(null);
				}
			}
		);
		
		mCodeEntry.addKeyListener(
			new KeyListener() {
				public void keyPressed(KeyEvent e) {
				}

				public void keyReleased(KeyEvent e) {
				}

				public void keyTyped(KeyEvent e) {
					SwingUtilities.invokeLater(
						new Runnable() {
							public void run() {
								try {
									mData.setSelected(new Integer(mCodeEntry.getText()));
								} catch(NumberFormatException e) {
								}
							}
						}
					);
				}
			}
		);
	}

	/*** @see com.lxm.utilities.db.DataListener#clear() */
	public void clear() throws SQLException {
		mData.clear();
	}

	/*** @see com.lxm.utilities.db.DataListener#delete(java.sql.ResultSet) */
	public void delete(ResultSet rs) throws SQLException {
		//TODO CategoryAttributePanel.delete(...)
	}

	/*** @see com.lxm.utilities.db.DataListener#hasChanged() */
	public boolean hasChanged() {
		return mData.hasChanged();
	}

	/*** @see com.lxm.utilities.db.DataListener#insert(java.sql.ResultSet) */
	public void insert(ResultSet aRs) throws SQLException {
		mData.insert(aRs);
	}

	/*** @see com.lxm.utilities.db.DataListener#reset() */
	public void reset() throws SQLException {
		mData.reset();
	}

	/*** @see com.lxm.utilities.db.DataListener#select(java.sql.ResultSet) */
	public void select(ResultSet rs) throws SQLException {
		mData.select(rs);
	}

	/*** @see com.lxm.utilities.db.DataListener#update(java.sql.ResultSet) */
	public void update(ResultSet rs) throws SQLException {
		mData.update(rs);
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getFieldComponent() */
	public Component getFieldComponent() {
		return this;
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getFieldName() */
	public String getFieldName() {
		return mData.getFieldName();
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getFieldValue() */
	public Object getFieldValue() {
		return mData.getFieldValue();
	}

	/*** @see com.lxm.utilities.db.DataField_IF#getManager() */
	public DataRefreshManager getManager() {
		return mData.getManager();
	}

	/*** @see com.lxm.utilities.db.DataField_IF#setFieldValue(java.lang.Object) */
	public void setFieldValue(Object aValue) {
		mData.setFieldValue(aValue);
	}
}


/**
 * 
 * $Log: ForeignKeyDataFieldWrapper.java,v $
 * Revision 1.2  2007/10/12 17:09:32  g137997
 * Added implementation of delete(rs) method for DataListener interface.
 *
 * Revision 1.1  2007/09/14 03:27:40  g137997
 * Initial check-in.
 *
 * 
 */