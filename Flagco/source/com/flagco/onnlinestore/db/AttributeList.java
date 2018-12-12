/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/flagco/onnlinestore/db/AttributeList.java,v 1.2 2007/05/22 15:10:30 g137997 Exp $
 * 
 * AttributeList
 * Created on May 20, 2007
 *
 * © LXM LLC, (2007). All rights reserved
 * 
 */

package com.flagco.onnlinestore.db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.swing.JList;
import javax.swing.ListModel;
import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;

/**
 * This is a JList that allows items to be added one at a time.
 *
 * @author Lawrence Morrissey (g137997)
 * @version $Revision: 1.2 $
 */ 
public abstract class AttributeList extends JList
{
	private List mData = new ArrayList();
	private Set<ListDataListener> mListeners = new HashSet<ListDataListener>();
	
	public abstract Object getItemObject(ResultSet rs) throws SQLException;

	public AttributeList(ResultSet rs) throws SQLException 
	{
		this();
		load(rs);
		rs.close();
	}
	
	public AttributeList() 
	{
		setModel(
			new ListModel() {
				public Object getElementAt(int aIndex) {
					return mData.get(aIndex);
				}

				public int getSize() {
					return mData.size();
				}

				public void addListDataListener(ListDataListener listener) {
					mListeners.add(listener);
				}
				
				public void removeListDataListener(ListDataListener listener) {
					mListeners.add(listener);
				}
			}
		);
	}
	
	private void load(ResultSet rs) throws SQLException {
		while(rs.next())add(getItemObject(rs));
	}

	public void refresh(ResultSet rs) throws SQLException {
		clear();
		load(rs);
	}
	
	private void notifyDataListeners(int idx0,int idx1) {
		for(Iterator it = mListeners.iterator();it.hasNext();){
			ListDataListener cur = (ListDataListener)it.next();
			cur.contentsChanged(new ListDataEvent(this,ListDataEvent.CONTENTS_CHANGED,idx0,idx1));
		}
	}

	public boolean add(Object obj) {
		boolean rv = mData.add(obj);
		notifyDataListeners(0,0);
		return rv;
	}
	
	public void clear() {
		mData.clear();
		notifyDataListeners(0,0);
	}
}

/**
 * 
 * $Log: AttributeList.java,v $
 * Revision 1.2  2007/05/22 15:10:30  g137997
 * Changed to use fewer connections.
 *
 * Revision 1.1  2007/05/21 12:37:47  g137997
 * Pulled up from an inner class.
 *
 * 
 */