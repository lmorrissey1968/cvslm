package com.ibm.gs.ls.odt.runtime;

import java.util.*;
import com.ibm.gs.ls.odt.info.*;

public class History
{
	Vector list = new Vector(10,5);
	int ptr = 0;
	
	public void reset()
	{
		list.removeAllElements();
		ptr = 0;
	}
	
	public void reset(Info io)
	{
		reset();
		add(io);
	}

	public boolean is1st()
	{
		return (ptr<=1);
	}

	public boolean isLast()
	{
		return (ptr==list.size());
	}

	public Info forward()
	{
		ptr++;
		return current();
	}
	
	public Info back()
	{
		ptr--;
		return current();
	}
	
	public Info current()
	{
		return ptr>0?(Info)list.elementAt(ptr-1):null;
	}
	
	public void add(Info io)
	{
		if(ptr<list.size())list.setSize(ptr);
		ptr++;
		list.addElement(io);
	}
}
