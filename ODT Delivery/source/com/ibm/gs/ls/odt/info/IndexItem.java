package com.ibm.gs.ls.odt.info;

import java.io.*;
import com.ibm.gs.ls.odt.utility.*;

public class IndexItem implements Sortable,Serializable
{
    String item;
    String mark;
    Content co;

    public IndexItem(Content content, String s, String s1)
    {
        co = content;
        item = s;
        mark = s1;
    }

    public String getID()
    {
        return co.getID();
    }

    public Content getContent()
    {
        return co;
    }

    public String getItem()
    {
        return item;
    }
/*
    public String getPath()
    {
        return co.getPath() + (mark.equals("") ? "" : "#" + mark);
    }
*/
	public String getAnchor()
	{
		return mark;
	}

    public boolean gt_or_eq(IndexItem indexitem)
    {
        return getItem().toLowerCase().compareTo(indexitem.getItem().toLowerCase()) >= 0;
    }

    public String getComparator()
    {
        return item.toLowerCase();
    }
/*
    public String toString()
    {
        return item + " (" + getPath() + ")";
    }
*/
}