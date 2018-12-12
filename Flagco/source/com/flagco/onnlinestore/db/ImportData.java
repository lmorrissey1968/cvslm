/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/ImportData.java,v 1.11 2007/05/15 22:59:21 g137997 Exp $
 * 
 * ImportData
 * Created on Mar 5, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.flagco.onnlinestore.db;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import com.flagco.onnlinestore.db.tabledef.CATALOG;
import com.lxm.utilities.db.DataBaseConnector;
import com.lxm.utilities.db.Insert;

/**
 * TODO BRIEF DESCRIPTION OF WHAT THIS CLASS DOES
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.11 $
 */
public class ImportData implements CATALOG
{
	public static final String TSV_SPLIT = "[\"]*\t[\"]*";

	private DataBaseConnector mDB;
	
	public ImportData() throws Exception 
	{
		this.mDB = new DataBaseConnector(null);
		loadProducts();
	}
	
	public void loadProducts() throws SQLException, IOException {
		Connection c = mDB.getConnection(false);
		BufferedReader br = new BufferedReader(new FileReader("data\\catalog20070302.txt"));
		br.readLine();
		int i=0;
		for(String line;(line=br.readLine())!=null;i++) {
			String[] split = line.replaceAll("\"\"","\"").split(TSV_SPLIT);
			Insert insert = new Insert(CATALOG.TableName);
			insert.setFieldValuePair(ITEMNO,split[0]);
			insert.setFieldValuePair(MODEL,split[1]);
			insert.setFieldValuePair(DESCRIPTION,split[2]);
			if(split.length>3)insert.setFieldValuePair(PRICE,new Float(split[3]));
			if(split.length>4)insert.setFieldValuePair(WEIGHT,new Float(split[4]));
			if(split.length>5)insert.setFieldValuePair(SHIPOK,new Integer(split[5]));
			if(split.length>6)insert.setFieldValuePair(SHIPADD,new Integer(split[6]));
			if(split.length>8)insert.setFieldValuePair(BOXES,new Integer(split[8]));
			insert.execute(c);
		}
		c.commit();
		System.out.println(i+" rows commited");
	}

	public static void main(String[] args) throws Exception {
		new ImportData();
	}
}


/**
 * 
 * $Log: ImportData.java,v $
 * Revision 1.11  2007/05/15 22:59:21  g137997
 * Changed field type.
 *
 * Revision 1.10  2007/04/24 13:38:29  g137997
 * Work in progress.
 *
 * Revision 1.9  2007/03/19 21:00:24  g137997
 * Continued to enhance all aspects if this tool.
 *
 * Revision 1.8  2007/03/18 03:07:49  g137997
 * Re-organized code.
 *
 * Revision 1.7  2007/03/16 04:32:13  g137997
 * Renamed PRODUCTS to ITEMS.
 *
 * Revision 1.6  2007/03/12 13:00:45  g137997
 * Fixed text file parser regular expression.
 *
 * Revision 1.5  2007/03/08 19:57:06  g137997
 * Fixed split regular expression.
 *
 * Revision 1.4  2007/03/07 22:36:28  g137997
 * Re-packaged existing classes a bit.
 *
 * Revision 1.3  2007/03/07 22:06:35  g137997
 * Finshed getting logon panel to work.
 *
 * Revision 1.2  2007/03/07 12:37:46  g137997
 * Added some new stuff.
 * Moved classes to new packages.
 *
 * Revision 1.1  2007/03/06 18:31:08  g137997
 * Initial check-in.
 *
 * 
 */