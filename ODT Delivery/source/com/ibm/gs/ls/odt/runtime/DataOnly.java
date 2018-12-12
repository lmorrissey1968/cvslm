package com.ibm.gs.ls.odt.runtime;

import com.ibm.gs.ls.odt.info.*;


public class DataOnly extends DataLoader
{
	CourseData	cd;
	Info		io;

	public void init()
	{
		(cd = new CourseData(this)).start();
	}

	public void doneNotify()
	{
		io = cd.getByID(cd.getVAR("submenu"));
	}
	
	// ----------------------------------------------------------------
	public CourseData getCourseData()
	{
		return this.cd;
	}
	
	// ----------------------------------------------------------------
	public Info getAppletRootIO()
	{
		return this.io;
	}
}

/**
 * 
 * $Log: DataOnly.java,v $
 * Revision 1.2  2007/02/02 14:49:25  g137997
 * Added call to CourseData (cd) start() since it is now required.
 * This should fix most of the race condidtion NPEs that were occuring.
 *
 * 
 */