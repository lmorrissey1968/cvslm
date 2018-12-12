/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/Catalog.java,v 1.12 2007/09/14 03:30:26 g137997 Exp $
 * 
 * Products
 * Created on Mar 8, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.flagco.onnlinestore.db;

import java.sql.SQLException;
import java.text.DecimalFormat;

import com.flagco.onnlinestore.db.tabledef.CATALOG;
import com.flagco.onnlinestore.db.tabledef.CATEGORY;
import com.lxm.utilities.db.DataBaseConnector;
import com.lxm.utilities.db.DatabasePanel;
import com.lxm.utilities.db.ForeignKeyDataField;
import com.lxm.utilities.db.ForeignKeyDataFieldWrapper;
import com.lxm.utilities.db.FormattedDataField;
import com.lxm.utilities.db.SearchDialogWrapper;
import com.lxm.utilities.db.SearchField;
import com.lxm.utilities.db.StringDataField;

public class Catalog extends DatabasePanel implements CATALOG
{
	private FieldPanel mFields;
	private ForeignKeyDataField mCATEGORY_CD;
	
	private ItemAttributePanel mItemAttributePanel;
	private ModelCategoryAttributePanel mModelAttributePanel;
	//private SearchPanel mSearchComponent;

	public Catalog(DataBaseConnector aConnector)
	{
		super(aConnector);
		addSection(this.mFields = new FieldPanel());
		mFields.addField(
			"Item#",
			new SearchDialogWrapper(
				new StringDataField(ITEMNO,this).setStyle(15,LEFT,true),
				new SearchField(ITEMNO,this).setStyle(15,LEFT,true),
				"Item Number"
			)
		);
		mFields.addField(
			"Model",
			new SearchDialogWrapper(
				new StringDataField(MODEL,this).setStyle(15,LEFT,true),
				new SearchField(MODEL,this).setStyle(15,LEFT,true),
				"Model"
			)
		);
		mFields.addField(
			"Description",
			new SearchDialogWrapper(
				new StringDataField(DESCRIPTION,this).setStyle(45,LEFT,true),
				new SearchField(DESCRIPTION,this).setStyle(45,LEFT,true),
				"Description"
			)
		);
		mFields.addField(
			"Category",
			new SearchDialogWrapper(
				this.mCATEGORY_CD = new ForeignKeyDataField(CATEGORY_CD,this,aConnector,CATEGORY.TableDefinition),
				new ForeignKeyDataFieldWrapper(CATEGORY_CD,this,aConnector,CATEGORY.TableDefinition),
				"Category"
			)
		);
		mFields.addField("Price $",new FormattedDataField(PRICE,this,new DecimalFormat("0.00")).setStyle(8,RIGHT,true));
		mFields.addField("Weight",new FormattedDataField(WEIGHT,this,new DecimalFormat("#.#")).setStyle(8,RIGHT,true));
		mFields.addField("UPS",new FormattedDataField(SHIPOK,this,new DecimalFormat("#")).setStyle(8,RIGHT,true));
		mFields.addField("Ship Add",new FormattedDataField(SHIPADD,this,new DecimalFormat("#")).setStyle(8,RIGHT,true));
		mFields.addField("Number of Boxes",new FormattedDataField(BOXES,this,new DecimalFormat("#")).setStyle(8,RIGHT,true));
		addSection(this.mModelAttributePanel = new ModelCategoryAttributePanel(aConnector,this));
		addSection(this.mItemAttributePanel = new ItemAttributePanel(aConnector,this));
		//this.mSearchComponent = new SearchPanel(this,aConnector);
		init();
	}
	
	//private static class SearchPanel extends FieldPanel
	//{
	//	public SearchPanel(DataRefreshManager aManager, DataBaseConnector aConnector)
	//	{
	//		addField("Item#",new SearchWrapper(new SearchField(ITEMNO,aManager).setStyle(15,LEFT,true)));
	//		addField("Model",new SearchWrapper(new SearchField(MODEL,aManager).setStyle(15,LEFT,true)));
	//		addField("Description",new SearchWrapper(new SearchField(DESCRIPTION,aManager).setStyle(45,LEFT,true)));
	//		addField("Category",new SearchWrapper(new ForeignKeyDataField(CATEGORY_CD,aManager,aConnector,CATEGORY.TableDefinition)));
	//	}
	//}
	
	/*** @see com.lxm.utilities.db.DatabasePanel#getBaseSelect() */
	public String getBaseSelect() {
		return "select * from "+TableName;
	}

	/*** @see com.lxm.utilities.db.DatabasePanel#refreshDependancies() */
	public void refreshDependancies() throws SQLException {
		mCATEGORY_CD.reset();
		mItemAttributePanel.refresh();
		mModelAttributePanel.refresh();
	}
}

/**
 * 
 * $Log: Catalog.java,v $
 * Revision 1.12  2007/09/14 03:30:26  g137997
 * Modified to use ForeignKeyDataFieldWrapper.
 *
 * Revision 1.11  2007/09/10 20:47:27  g137997
 * Changed to use new search dialog.
 *
 * Revision 1.10  2007/09/10 19:47:19  g137997
 * Work in progress.
 *
 * Revision 1.9  2007/09/10 17:31:43  g137997
 * Class uses renamed DataRefreshListener to DataRefreshManager.
 *
 * Revision 1.8  2007/09/06 12:33:30  g137997
 * Modified to utilize new DataField_IF.
 *
 * Revision 1.7  2007/08/08 21:12:30  g137997
 * Changed to stay compatible with SearchWrapper.
 *
 * Revision 1.6  2007/05/22 15:10:30  g137997
 * Changed to use fewer connections.
 *
 * Revision 1.5  2007/05/21 12:41:09  g137997
 * Added refresh call to new panel.
 *
 * Revision 1.4  2007/05/18 15:39:51  g137997
 * Work in progress.
 *
 * Revision 1.3  2007/05/12 12:15:56  g137997
 * Added refresh depandancies logic.
 *
 * Revision 1.2  2007/04/26 23:08:20  g137997
 * Put ItemAttributePanel in a JScrollPane.
 *
 * Revision 1.1  2007/04/24 13:38:29  g137997
 * Work in progress.
 *
 * Revision 1.5  2007/03/27 22:10:14  g137997
 * Added call to init().
 *
 * Revision 1.4  2007/03/27 12:36:46  g137997
 * Changed to use ItemAttribbutePanel.
 *
 * Revision 1.3  2007/03/25 14:38:03  g137997
 * Category to Attribute association work in progress.
 *
 * Revision 1.2  2007/03/19 21:00:24  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.1  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.2  2007/03/16 19:40:27  g137997
 * Made use of search type.
 *
 * Revision 1.1  2007/03/16 04:31:28  g137997
 * Renamed PRODUCTS to ITEMS.
 *
 * Revision 1.5  2007/03/14 16:09:35  g137997
 * Changed to implement abstract superclass requirements.
 *
 * Revision 1.4  2007/03/14 14:54:52  g137997
 * Moved common logic to re-useable superclass.
 *
 * Revision 1.3  2007/03/13 22:16:57  g137997
 * Continued adding functionality.
 *
 * Revision 1.2  2007/03/08 19:57:06  g137997
 * Fixed split regular expression.
 *
 * Revision 1.1  2007/03/08 19:52:35  g137997
 * Initial check-in.
 *
 * 
 */