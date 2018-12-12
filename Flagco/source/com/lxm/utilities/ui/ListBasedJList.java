/**
 * 
 * $Header: /repository/CVSLM/Flagco/source/com/lxm/utilities/ui/ListBasedJList.java,v 1.1 2007/09/10 12:02:16 g137997 Exp $
 * 
 * ListBasedJList
 * Created on Oct 8, 2003
 *
 * © Lockheed Martin Corporation, (2003). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */
 
package com.lxm.utilities.ui;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.swing.JList;
import javax.swing.ListModel;
import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;

/**
 * This class is a JList backed by an ArrayList collection.
 * 
 * @author Lawrence Morrissey
 * @version 1.0
 */
public class ListBasedJList extends JList 
{
	private Set mListeners = new HashSet();
	private List mData;
	
	public ListBasedJList()
	{
		this(new ArrayList());
	}
	
	public ListBasedJList(Object[] listData) 
	{
		this(Arrays.asList(listData));
	}

	public ListBasedJList(Collection listData) 
	{
		this(new ArrayList());
		mData.addAll(listData);
	}

	public ListBasedJList(List aList) 
	{
		this.mData = aList;
		setModel(
			new ListModel(){
				public int getSize() {
					return mData.size();
				}
	
				public Object getElementAt(int index) {
					return mData.size()>index ? mData.get(index) : null ;
				}
	
				public void addListDataListener(ListDataListener aListener) {
					mListeners.add(aListener);
				}
	
				public void removeListDataListener(ListDataListener aListener) {
					mListeners.remove(aListener);
				}
			}
		);
	}
	
	private void notifyDataListeners(int index0,int index1) {
		for(Iterator it = mListeners.iterator();it.hasNext();){
			ListDataListener cur = (ListDataListener)it.next();
			cur.contentsChanged(new ListDataEvent(this,ListDataEvent.CONTENTS_CHANGED,index0,index1));
		}
	}
	
	/**
	 * Copies the data in the list model to a java.util.List and returns it.
	 * @return The data in this structure as a List.
	 */
	public List getAsList() {
		return new ArrayList(mData);
	}
	
	public void touch(int index) {
		notifyDataListeners(index,index);
	}
	
	public void touch(Object item) {
		touch(mData.indexOf(item));
	}
	
	public void addItem(Object item) {
		add(item);
	}
	
	public void removeItem(Object item) {
		remove(item);
	}
	
	public boolean addAll(Collection c) {
		int index = mData.size();
		boolean rv = mData.addAll(c);
		notifyDataListeners(index,mData.size()-1);
		return rv;
	}
	
	public void add(int index, Object element) {
		mData.add(index, element);
		notifyDataListeners(index,index);
	}
	
	public boolean add(Object o) {
		int index = mData.size();
		boolean rv = mData.add(o);
		notifyDataListeners(index,index);
		setSelectedIndex(index);
		return rv;
	}

	public void moveDown() {
		int index = getSelectedIndex();
		if(index<mData.size()-1){
			mData.add(index+1,mData.remove(index));
			setSelectedIndex(index+1);
			notifyDataListeners(index,index+1);
		}
	}
	
	public void moveUp() {
		int index = getSelectedIndex();
		if(index>0){
			mData.add(index-1,mData.remove(index));
			setSelectedIndex(index-1);
			notifyDataListeners(index-1,index);
		}
	}
	
	public void remove() {
		remove(getSelectedIndex());
	}

	public void remove(int index) {
		if(index>=0){
			mData.remove(index);
			setSelectedIndex(-1);
			notifyDataListeners(index,index);
		}
	}

	public boolean remove(Object o) {
		int index = mData.indexOf(o);
		boolean rv = mData.remove(o);
		if(rv)notifyDataListeners(index,index);
		return rv;
	}
	
	public void clear() {
		mData.clear();
		notifyDataListeners(0,0);
	}
	
}

/**
 *
 * $Log: ListBasedJList.java,v $
 * Revision 1.1  2007/09/10 12:02:16  g137997
 * Re-packaged several classes.
 *
 * Revision 1.1  2007/03/25 14:36:52  g137997
 * Imported several usefull utilities from another development effort.
 *
 * Revision 1.1  2005/08/04 22:00:56  g137997
 * Moved more common stuff from OSA to Common Utilities.
 *
 * Revision 1.1  2005/05/25 10:20:43  g596060
 * Mods due to changing package name for OSA comm, entities, media, etc.,
 * classes and resources.
 *
 * Revision 1.8  2005/03/16 15:07:07  g137997
 * Re-organized code.
 *
 * Revision 1.7  2005/03/16 12:19:15  g137997
 * Added setSelectedIndex() call in add() method.
 *
 * Revision 1.6  2005/03/16 03:55:21  g137997
 * Added touch() methods.
 *
 * Revision 1.5  2005/03/15 19:13:03  g137997
 * Added new modification logic.
 *
 * Revision 1.4  2005/01/13 21:38:26  g137997
 * Added methods more in line with List interface.
 *
 * Revision 1.3  2004/12/09 20:43:53  g137997
 * Added clear() method.
 *
 * Revision 1.2  2004/05/18 00:11:50  lxm01
 * Added getAsList() method.
 *
 * Revision 1.1  2004/04/20 23:59:07  lxm01
 * Renamed EasyJList to ListBasedJList.
 *
 * Revision 1.3  2004/02/25 22:04:58  lxm01
 * Added some JavaDocs and renamed instance variables.
 *
 * Revision 1.2  2003/10/17 18:07:21  g137997
 * Added CVS Header and Footer
 *
 *
 */