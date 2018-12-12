/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/Attribute.java,v 1.9 2007/09/10 19:47:19 g137997 Exp $
 * 
 * Category
 * Created on Mar 14, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.flagco.onnlinestore.db;

import java.awt.Component;
import java.awt.FlowLayout;
import java.sql.SQLException;
import java.text.DecimalFormat;

import javax.swing.JScrollPane;

import com.flagco.onnlinestore.db.tabledef.ATTRIBUTE;
import com.lxm.utilities.db.DataBaseConnector;
import com.lxm.utilities.db.DatabasePanel;
import com.lxm.utilities.db.FormattedDataField;
import com.lxm.utilities.db.SearchWrapper;
import com.lxm.utilities.db.StringDataField;
import com.lxm.utilities.ui.JPanelBuilder;

public class Attribute extends DatabasePanel implements ATTRIBUTE
{
	private FieldPanel mFields;
	private JScrollPane mScoller;

	public Attribute(DataBaseConnector aConnector)
	{
		super(aConnector);
		addSection(
			new JPanelBuilder(new FlowLayout(FlowLayout.LEFT)) {
				public void configure() {
					addLabel("Attribute");
					add(new FormattedDataField(ATTRIBUTE_CD,Attribute.this,new DecimalFormat("#")).setStyle(5,RIGHT,false));
					add(new SearchWrapper(new StringDataField(ATTRIBUTE_DESC,Attribute.this).setStyle(25,LEFT,true)));
				}
			}
		);
		//addSection(this.mFields = new FieldPanel());
		//mFields.addField("Attribute",new SearchWrapper(null,30,ATTRIBUTE_DESC,this,SearchMode.FUZZY));
		//mFields.addField("Attribute Code",new SearchWrapper(new DecimalFormat("#"),8,ATTRIBUTE_CD,this,SearchMode.ABSOLUTE));
		
		init();
	}
	
	/*** @see com.lxm.utilities.db.DatabasePanel#getBaseSelect() */
	public String getBaseSelect() {
		return "select * from "+TableName;
	}

	/*** @see com.lxm.utilities.db.DatabasePanel#refreshDependancies() */
	public void refreshDependancies() throws SQLException {
	}

	/*** @see com.lxm.utilities.db.DatabasePanel#getSearchComponent() */
	public Component getSearchComponent() {
		//TODO Attribute.getSearchComponent(...)
		return null;
	}
}


/**
 * 
 * $Log: Attribute.java,v $
 * Revision 1.9  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * Revision 1.8  2007/09/06 12:33:30  g137997
 * Modified to utilize new DataField_IF.
 *
 * Revision 1.7  2007/08/08 21:12:30  g137997
 * Changed to stay compatible with SearchWrapper.
 *
 * Revision 1.6  2007/05/18 15:39:51  g137997
 * Work in progress.
 *
 * Revision 1.5  2007/05/12 12:15:56  g137997
 * Added refresh depandancies logic.
 *
 * Revision 1.4  2007/04/30 11:56:43  g137997
 * Changed field layout.
 *
 * Revision 1.3  2007/03/27 22:10:05  g137997
 * Added call to init().
 *
 * Revision 1.2  2007/03/22 20:04:09  g137997
 * Work in progress.
 *
 * Revision 1.1  2007/03/21 22:06:47  g137997
 * Added Attribute tab.
 *
 * Revision 1.5  2007/03/19 21:00:24  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.4  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.3  2007/03/16 19:40:38  g137997
 * Started adding attributes.
 *
 * Revision 1.2  2007/03/16 04:33:23  g137997
 * Work in progress.
 *
 * Revision 1.1  2007/03/14 15:50:44  g137997
 * Initial check-in.
 *
 * 
 */