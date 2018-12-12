/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/db/DatabasePanel.java,v 1.27 2007/10/12 17:10:32 g137997 Exp $
 * 
 * DatabasePanel
 * Created on Mar 14, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.lxm.utilities.db;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.swing.BorderFactory;
import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.JPopupMenu;
import javax.swing.JSlider;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

import com.lxm.utilities.ui.ActionButton;
import com.lxm.utilities.ui.ColumnLayout;
import com.lxm.utilities.ui.FlowContainer;
import com.lxm.utilities.ui.RowLayout;
import com.lxm.utilities.ui.UtilUI;
import com.lxm.utilities.ui.ConsoleFrame.ErrorHandler;

/**
 * This is a generic table fetch/update/insert framework.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.27 $
 */ 
public abstract class DatabasePanel extends JPanel implements DataRefreshManager,ErrorHandler
{
	public static final int LEFT = SwingConstants.LEFT;
	public static final int RIGHT = SwingConstants.RIGHT;
	public static final int CENTER = SwingConstants.CENTER;
	
	private DataBaseConnector mConnector;
	private Connection mConnection;
	private ResultSet mRS;
	private Set<DataListener> mListeners = new HashSet<DataListener>();
	private JPanel mMainPanel;
	private boolean mTableDataVisible;
	private ActionButton mButtonBack1,mButtonBack2,mButtonBack3;
	private ActionButton mButtonFwrd1,mButtonFwrd2,mButtonFwrd3;

	private JTextField mRowNum = new JTextField("0",5);
	//private int mRowCount;
	private JPanel mButtonLogoPanel;
	
	public abstract String getBaseSelect();
	
	public abstract void refreshDependancies() throws SQLException;

	//public abstract Component getSearchComponent();
	
	/**
	 * @param aConnector
	 */
	public DatabasePanel(DataBaseConnector aConnector)
	{
		this.mConnector = aConnector;
		this.mConnection = mConnector.getConnection(true);
		setLayout(new BorderLayout());

		add(
			this.mMainPanel = new JPanel(new RowLayout(2,2)),
			BorderLayout.CENTER
		);
		
		FlowContainer north_buttons = new FlowContainer(FlowLayout.LEFT,3,1);
		add(north_buttons,BorderLayout.NORTH);
		north_buttons.setBorder(BorderFactory.createLineBorder(Color.BLUE,1));
		
		north_buttons.addComponent(
			new ActionButton(
				"Save",
				UtilUI.getStandardImageIcon("diskette.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						notifyListenersUpdate();
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
		north_buttons.addComponent(
			new ActionButton(
				"New",
				UtilUI.getStandardImageIcon("new.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						notifyListenersClear();
						notifyListenersInsert();
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
		north_buttons.addComponent(
			new ActionButton(
				"Save/New",
				UtilUI.getStandardImageIcon("savenew.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						notifyListenersUpdate();
						notifyListenersClear();
						notifyListenersInsert();
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
		north_buttons.addComponent(
			new ActionButton(
				"Delete",
				UtilUI.getStandardImageIcon("trash_full.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						if(mTableDataVisible) {
							if(UtilUI.yesNoDialog(DatabasePanel.this,"Confirm","Are you sure?")) {
								notifyListenersDelete();
							}
						} else {
							UtilUI.alert(DatabasePanel.this,"Message","Nothing to delete!");
						}
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
		
		north_buttons.addComponent(
			new ActionButton(
				"Clear",
				UtilUI.getStandardImageIcon("erase2.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						if(hasChanged()) {
							if(UtilUI.yesNoDialog(DatabasePanel.this,"Confirm","Are you sure?")) {
								notifyListenersClear();
							}
						}else {
							notifyListenersClear();
						}
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
		north_buttons.addComponent(
			new ActionButton(
				"Get All",
				UtilUI.getStandardImageIcon("db_execute.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						getAll();
						processResultSet();
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
		
		FlowContainer south_buttons = new FlowContainer(FlowLayout.CENTER);
		add(south_buttons,BorderLayout.SOUTH);
		south_buttons.addComponent(
			this.mButtonBack3 = new ActionButton(
				UtilUI.getStandardImageIcon("backBeginning.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						mRS.first();
						notifyListenersSelect();
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
		south_buttons.addComponent(
			this.mButtonBack2 = new ActionButton(
				UtilUI.getStandardImageIcon("backMany.gif")
			) {
				private JPopupMenu mMenu;
				private JSlider mSlider;

				public void init() {
					this.mMenu = new JPopupMenu();
					mMenu.add(this.mSlider = new JSlider());
					mSlider.addChangeListener(
						new ChangeListener() {
							public void stateChanged(ChangeEvent e) {
								try {
									mRS.absolute(mSlider.getValue());
									notifyListenersSelect();
								} catch(SQLException exc) {
									Error.error(exc);
								}
							}
						}
					);
					mSlider.setPaintTicks(true);
					mSlider.setPaintLabels(true);
				}
				
				public void actionPerformed(ActionEvent e) {
					try {
						int min = 1;
						int max = mRS.getRow();
						mSlider.setMinimum(min);
						mSlider.setMaximum(max);
						mSlider.setValue(max);
						mSlider.setMajorTickSpacing((max-min) / 2);
						mMenu.show(this,0,this.getHeight());
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
				
				//public void actionPerformed(ActionEvent e) {
				//	try {
				//		mRS.absolute(Math.max(mRS.getRow()-10,1));
				//		notifyListenersSelect();
				//	} catch(SQLException exc) {
				//		Error.error(exc);
				//	}
				//}
			}
		);
		south_buttons.addComponent(
			this.mButtonBack1 = new ActionButton(
				UtilUI.getStandardImageIcon("back.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						mRS.previous();
						notifyListenersSelect();
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);

		mRowNum.setFont(new Font("Courier",Font.BOLD,22));
		mRowNum.setEditable(false);
		mRowNum.setHorizontalAlignment(JTextField.CENTER);
		south_buttons.addComponent(mRowNum);
		
		south_buttons.addComponent(
			this.mButtonFwrd1 = new ActionButton(
				UtilUI.getStandardImageIcon("forward.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						mRS.next();
						notifyListenersSelect();
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
		south_buttons.addComponent(
			this.mButtonFwrd2 = new ActionButton(
				UtilUI.getStandardImageIcon("forwardMany.gif")
			) {
				private JPopupMenu mMenu;
				private JSlider mSlider;

				public void init() {
					this.mMenu = new JPopupMenu();
					mMenu.add(this.mSlider = new JSlider());
					mSlider.addChangeListener(
						new ChangeListener() {
							public void stateChanged(ChangeEvent e) {
								try {
									mRS.absolute(mSlider.getValue());
									notifyListenersSelect();
								} catch(SQLException exc) {
									Error.error(exc);
								}
							}
						}
					);
					mSlider.setPaintTicks(true);
					mSlider.setPaintLabels(true);
				}
				
				public void actionPerformed(ActionEvent e) {
					try {
						int min = mRS.getRow(); mRS.last();
						int max = mRS.getRow();
						mSlider.setMinimum(min);
						mSlider.setMaximum(max);
						mSlider.setValue(min);
						mSlider.setMajorTickSpacing((max-min) / 2);
						mMenu.show(this,0,this.getHeight());
					} catch(SQLException exc) {
						Error.error(exc);
					}
					//try {
					//	mRS.absolute(mRS.getRow()+10);
					//	if(mRS.isAfterLast())mRS.last();
					//	notifyListenersSelect();
					//} catch(SQLException exc) {
					//	Error.error(exc);
					//}
				}
			}
		);
		south_buttons.addComponent(
			this.mButtonFwrd3 = new ActionButton(
				UtilUI.getStandardImageIcon("forwardEnd.gif")
			) {
				public void actionPerformed(ActionEvent e) {
					try {
						mRS.last();
						notifyListenersSelect();
					} catch(SQLException exc) {
						Error.error(exc);
					}
				}
			}
		);
		
		disableNavButtons();
	}
	
	private boolean hasChanged() {
		for(DataListener listener : mListeners) {
			if(listener.hasChanged())return true;
		}
		return false;
	}
	
	private void setEnabledForward(boolean b) {
		mButtonFwrd1.setEnabled(b);
		mButtonFwrd2.setEnabled(b);
		mButtonFwrd3.setEnabled(b);
	}
	
	private void setEnabledBack(boolean b) {
		mButtonBack1.setEnabled(b);
		mButtonBack2.setEnabled(b);
		mButtonBack3.setEnabled(b);
	}
	
	private void disableNavButtons() {
		setEnabledBack(false);
		setEnabledForward(false);
	}

	//private void setNumRows(ResultSet aRS) throws SQLException {
	//	aRS.last();
	//	this.mRowCount = aRS.getRow();
	//	aRS.beforeFirst();
	//}
	
	public void addSection(JComponent aComponent) {
		mMainPanel.add(aComponent);
	}

	/*** @see com.lxm.utilities.db.DataRefreshManager#addDataListener(com.lxm.utilities.db.DataListener) */
	public void addDataListener(DataListener aListener) {
		mListeners.add(aListener);
		try {
			aListener.clear();
		} catch(SQLException exc) {
			System.err.println(exc);
			exc.printStackTrace(System.out);
		}
	}
	
	public void init() {
		try {
			getAll();
			if(mRS.next())notifyListenersSelect();
		} catch(SQLException exc) {
			Error.error(exc);
		}
	}
	
	//private void initConnection() throws SQLException {
	//	if(mRS!=null) {
	//		mRS.close(); this.mRS = null;
	//		mConn.close(); this.mConn = null;
	//	}
	//	this.mConn = mConnector.getConnection(true);
	//}
	
	private void processResultSet() throws SQLException {
		if(mRS.next()) {
			if(mRS.isLast()) {
				notifyListenersSelect();
				UtilUI.alert(this,"Warning","Only one row meets search criteria.");
			} else {
				mRS.beforeFirst();
				int row = ResultSetTable.selectResultSetRow(this,mRS);
				if(row>0) {
					mRS.absolute(row);
					notifyListenersSelect();
				}
			}
		} else {
			UtilUI.alert(this,"Warning","No rows meeting search criteria.");
		}
	}

	private void notifyListenersSelect() throws SQLException {
		this.mTableDataVisible = true;
		for(Iterator<DataListener> it = mListeners.iterator();it.hasNext();) {
			DataListener listener = it.next();
			listener.select(mRS);
		}
		
		setEnabledBack(!mRS.isFirst());
		setEnabledForward(!mRS.isLast());
		mRowNum.setText(String.valueOf(mRS.getRow()));
		//mRowNum.setText(mRS.getRow()+"/"+mRowCount);
	}

	private void notifyListenersUpdate() throws SQLException {
		for(Iterator<DataListener> it = mListeners.iterator();it.hasNext();) {
			DataListener listener = it.next();
			listener.update(mRS);
		}
		mRS.updateRow();notifyListenersSelect();
	}
	
	private void notifyListenersInsert() throws SQLException {
		if(mRS==null) {
			this.mRS = mConnector.executeQuery(
				mConnection,
				getBaseSelect(),
				ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_UPDATABLE
			);
		}
			
		mRS.moveToInsertRow();
//		for(Iterator<DataListener> it = mListeners.iterator();it.hasNext();) {
//			DataListener listener = it.next();
//			listener.insert(mRS);
//		}
		mRS.insertRow();
		mRS.last();notifyListenersSelect();
	}

	private void notifyListenersDelete() throws SQLException {
		mRS.deleteRow();
		for(Iterator<DataListener> it = mListeners.iterator();it.hasNext();) {
			DataListener listener = it.next();
			listener.delete(mRS);
			listener.clear();
		}
		this.mTableDataVisible = false;
	}

	private void notifyListenersClear() throws SQLException {
		for(Iterator<DataListener> it = mListeners.iterator();it.hasNext();) {
			DataListener listener = it.next();
			listener.clear();
		}
		disableNavButtons();
		this.mTableDataVisible = false;
	}

	public void getAll() throws SQLException {
		this.mRS = mConnector.executeQuery(
			mConnection, 
			getBaseSelect(),
			ResultSet.TYPE_SCROLL_SENSITIVE,
			ResultSet.CONCUR_UPDATABLE
		);
		//setNumRows(mRS);
	}
	
	/*** @see com.lxm.utilities.db.DataRefreshManager#getRequested(java.lang.String, java.lang.Object) */
	public void getRequested(String aFieldName,Object aValue) {
		try {
			if(aValue==null) {
				getAll();
			} else {
				this.mRS = mConnector.executePreparedQuery(
					mConnection,
					getBaseSelect()+" where "+aFieldName+"=?", 
					ResultSet.TYPE_SCROLL_SENSITIVE,
					ResultSet.CONCUR_UPDATABLE,
					new Object[]{aValue}
				);
				//setNumRows(mRS);
			}
			processResultSet();
		} catch(SQLException exc) {
			Error.error(exc);
		}
	}
	
	/*** @see com.lxm.utilities.db.DataRefreshManager#refreshRequested(java.lang.String) */
	public void searchRequested(String aFieldName,Object aValue) {
		try {
			if(aValue==null) {
				getAll();
			} else {
				this.mRS = mConnector.executePreparedQuery(
					mConnection,
					getBaseSelect()+" where "+aFieldName+" like ?", 
					ResultSet.TYPE_SCROLL_SENSITIVE,
					ResultSet.CONCUR_UPDATABLE,
					new Object[]{"%"+aValue+"%"}
				);
				//setNumRows(mRS);
			}
			processResultSet();
		} catch(SQLException exc) {
			Error.error(exc);
		}
	}

	public static class FieldPanel extends JComponent
	{
		public FieldPanel()
		{
			setLayout(new ColumnLayout(2,0,0));
		}
		
		public void addField(String aFieldName,Component aField) {
			ColumnLayout.addLabeledRow(this,aFieldName,aField);
		}
	}
}


/**
 * 
 * $Log: DatabasePanel.java,v $
 * Revision 1.27  2007/10/12 17:10:32  g137997
 * Added call to delete() method of DataListener interface.
 *
 * Revision 1.26  2007/09/10 20:47:08  g137997
 * Changed disabled code.
 *
 * Revision 1.25  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * Revision 1.24  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.23  2007/09/10 12:04:59  g137997
 * Miscellaneous changes to organization.
 *
 * Revision 1.22  2007/09/05 12:34:46  g137997
 * Added TEST button.
 *
 * Revision 1.21  2007/08/08 21:15:00  g137997
 * Improved search functionality.
 *
 * Revision 1.20  2007/05/22 15:10:30  g137997
 * Changed to use fewer connections.
 *
 * Revision 1.19  2007/05/21 12:38:53  g137997
 * Got rid of PanelPanel (and use of crappy BoxLayout).
 *
 * Revision 1.18  2007/05/18 15:39:08  g137997
 * Re-ordered buttons.
 * Added convenience constants.
 *
 * Revision 1.17  2007/05/12 12:15:31  g137997
 * Added refresh depandancies logic.
 *
 * Revision 1.16  2007/04/30 21:17:37  g137997
 * Added row counter.
 * Added select all button.
 *
 * Revision 1.15  2007/04/30 11:55:53  g137997
 * Re-organized buttons.
 *
 * Revision 1.14  2007/04/26 23:07:37  g137997
 * Moved and re-organized buttons.
 *
 * Revision 1.13  2007/04/24 13:38:29  g137997
 * Work in progress.
 *
 * Revision 1.12  2007/03/27 22:11:14  g137997
 * Added forward and backward NAV buttons.
 *
 * Revision 1.11  2007/03/27 20:35:52  g137997
 * Re-ordered buttons.
 *
 * Revision 1.10  2007/03/27 16:59:14  g137997
 * Added previous and next buttons.
 *
 * Revision 1.9  2007/03/25 14:38:28  g137997
 * Several enhancements to support requirements.
 *
 * Revision 1.8  2007/03/19 21:11:24  g137997
 * Added confirmation on some actions.
 *
 * Revision 1.7  2007/03/19 21:00:23  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.6  2007/03/18 04:27:50  g137997
 * Enhanced to where selection from multiple rows may be done.
 *
 * Revision 1.5  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.4  2007/03/16 19:39:49  g137997
 * Started adding multi search result selector.
 *
 * Revision 1.3  2007/03/16 04:32:00  g137997
 * Made more generic.
 *
 * Revision 1.2  2007/03/14 16:08:03  g137997
 * Added abstract requirement.
 *
 * Revision 1.1  2007/03/14 14:53:17  g137997
 * Initial check-in.
 * Mostly extraced from Products class.
 *
 * 
 */