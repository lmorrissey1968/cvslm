package com.ibm.gs.ls.test.awt;

import java.util.Enumeration;
import java.util.Vector;

public class WWGroup
{
	Vector v = new Vector(5,5);
	
	public void add(WWCheckbox wwc)
	{
		v.addElement(wwc);
	}

	public void clear(WWCheckbox wwc)
	{
		for(Enumeration e=v.elements();e.hasMoreElements();){
			WWCheckbox ww = (WWCheckbox)e.nextElement();
			ww.setState(false);
			ww.repaint();
		}
	}
}