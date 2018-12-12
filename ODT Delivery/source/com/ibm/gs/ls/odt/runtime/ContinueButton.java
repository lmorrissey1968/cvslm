package com.ibm.gs.ls.odt.runtime;

import com.ibm.gs.ls.odt.info.*;
import java.awt.*;
import java.awt.event.*;


public class ContinueButton extends DataLoader implements ActionListener
{
	CourseData	cd;
	Info		io;
	Button		go;
	
	public void init()
	{	
		setLayout(new BorderLayout());
		add(go=new Button("Loading..."));
		go.setEnabled(false);
		(cd = new CourseData(this)).start();
	}

	public void doneNotify()
	{	
		io = cd.getByID(cd.getVAR("submenu"));
		go.setLabel(getParameter("message"));
		go.setEnabled(true);
		go.addActionListener(this);
	}
	
	public void actionPerformed(ActionEvent e)
	{
		cd.launch();
	}
	
	public CourseData getCourseData()
	{
		return this.cd;
	}
	
	public Info getAppletRootIO()
	{
		return this.io;
	}
}

/**
 * 
 * $Log: ContinueButton.java,v $
 * Revision 1.2  2007/02/02 14:49:25  g137997
 * Added call to CourseData (cd) start() since it is now required.
 * This should fix most of the race condidtion NPEs that were occuring.
 *
 * 
 */