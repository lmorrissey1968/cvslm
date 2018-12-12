/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/ImportExport.java,v 1.4 2007/09/14 03:29:55 g137997 Exp $
 * 
 * ImportExport
 * Created on Sep 6, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.flagco.onnlinestore.db;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.JComponent;
import javax.swing.JLabel;

import com.lxm.utilities.db.DataBaseConnector;
import com.lxm.utilities.db.DataBaseConnector.DumpFileNameGenerator_IF;
import com.lxm.utilities.ui.ActionButton;
import com.lxm.utilities.ui.FileSelector;
import com.lxm.utilities.ui.ConsoleFrame.ErrorHandler.Error;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.4 $
 */
public class ImportExport extends JComponent
{
	private DataBaseConnector mConnector;
	private FileSelector mTargetSelector;

	public ImportExport(DataBaseConnector aConnector)
	{
		this.mConnector = aConnector;
		setLayout(new FlowLayout(FlowLayout.CENTER));
		add(new JLabel("Export Directory"));
		add(
			this.mTargetSelector = new FileSelector(
				mConnector.getConfigProperty("db.exportdir",".")
			) {
				public void targetChanged(File target) {
					mConnector.setConfigProperty("db.exportdir",target.toString());
				}
			}
		);
		add(
			new ActionButton("EXPORT") {
				public void actionPerformed(ActionEvent e) {
					try {
						mConnector.mySQLDump(
							new DumpFileNameGenerator_IF() {
								/*** @see com.lxm.utilities.db.DataBaseConnector.DumpFileNameGenerator_IF#getTargetFile(java.lang.String, java.lang.String) */
								public File getTargetFile(String host, String db) {
									SimpleDateFormat FMT = new SimpleDateFormat("yyyyMMddHHmmss");
									File target = new File(
										mTargetSelector.getTargetDirectory(),
										db+"_"+FMT.format(new Date())+".sql"
									);
									if(target!=null)mConnector.setConfigProperty("db.exportdir",target.getParent());
									return target;
								}
							}
						);
					} catch(IOException exc) {
						Error.error(exc);
					}
				}
			}
		);
	}

}


/**
 * 
 * $Log: ImportExport.java,v $
 * Revision 1.4  2007/09/14 03:29:55  g137997
 * Modified to stay compileable.
 *
 * Revision 1.3  2007/09/11 19:11:16  g137997
 * Changed export methodology.
 *
 * Revision 1.2  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.1  2007/09/10 12:03:28  g137997
 * Initial check-in.
 *
 * 
 */