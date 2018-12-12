/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/Category.java,v 1.16 2007/09/10 20:47:27 g137997 Exp $
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

import com.flagco.onnlinestore.db.tabledef.CATEGORY;
import com.lxm.utilities.db.DataBaseConnector;
import com.lxm.utilities.db.DatabasePanel;
import com.lxm.utilities.db.FormattedDataField;
import com.lxm.utilities.db.SearchDialogWrapper;
import com.lxm.utilities.db.SearchField;
import com.lxm.utilities.db.StringDataField;
import com.lxm.utilities.ui.JPanelBuilder;

public class Category extends DatabasePanel implements CATEGORY
{
	private CategoryAttributePanel mCategoryAttributes;

	public Category(DataBaseConnector aConnector)
	{
		super(aConnector);
		addSection(
			new JPanelBuilder(new FlowLayout(FlowLayout.LEFT)) {
				public void configure() {
					addLabel("Category");
					add(new FormattedDataField(CATEGORY_CD,Category.this,new DecimalFormat("#")).setStyle(5,RIGHT,false));
					add(
						new SearchDialogWrapper(
							new StringDataField(CATEGORY_DESC,Category.this).setStyle(25,LEFT,true),
							new SearchField(CATEGORY_DESC,Category.this).setStyle(25,LEFT,true),
							"Category Description"
						)
					);
					addLabel("Table Design");
					add(new FormattedDataField(TABLE_DESIGN_CD,Category.this,new DecimalFormat("#")).setStyle(5,RIGHT,true));
				}
			}
		);
		//addSection(this.mFields = new FieldPanel());
		//mFields.addField("Category",new SearchWrapper(null,30,CATEGORY_DESC,this,SearchMode.FUZZY));
		//mFields.addField("Category Code",new SearchWrapper(new DecimalFormat("#"),8,CATEGORY_CD,this,SearchMode.ABSOLUTE));
		addSection(this.mCategoryAttributes = new CategoryAttributePanel(aConnector,this));
		
		init();
	}
	
	/*** @see com.lxm.utilities.db.DatabasePanel#getBaseSelect() */
	public String getBaseSelect() {
		return "select * from "+TableName;
	}

	/*** @see com.lxm.utilities.db.DatabasePanel#refreshDependancies() */
	public void refreshDependancies() throws SQLException {
		mCategoryAttributes.refresh();
	}

	/*** @see com.lxm.utilities.db.DatabasePanel#getSearchComponent() */
	public Component getSearchComponent() {
		//TODO Category.getSearchComponent(...)
		return null;
	}


}


/**
 * 
 * $Log: Category.java,v $
 * Revision 1.16  2007/09/10 20:47:27  g137997
 * Changed to use new search dialog.
 *
 * Revision 1.15  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * Revision 1.14  2007/09/06 12:33:30  g137997
 * Modified to utilize new DataField_IF.
 *
 * Revision 1.13  2007/08/08 21:12:30  g137997
 * Changed to stay compatible with SearchWrapper.
 *
 * Revision 1.12  2007/05/22 15:10:30  g137997
 * Changed to use fewer connections.
 *
 * Revision 1.11  2007/05/18 15:39:51  g137997
 * Work in progress.
 *
 * Revision 1.10  2007/05/12 12:15:56  g137997
 * Added refresh depandancies logic.
 *
 * Revision 1.9  2007/04/30 11:56:43  g137997
 * Changed field layout.
 *
 * Revision 1.8  2007/03/27 22:10:05  g137997
 * Added call to init().
 *
 * Revision 1.7  2007/03/25 14:38:03  g137997
 * Category to Attribute association work in progress.
 *
 * Revision 1.6  2007/03/22 20:04:09  g137997
 * Work in progress.
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