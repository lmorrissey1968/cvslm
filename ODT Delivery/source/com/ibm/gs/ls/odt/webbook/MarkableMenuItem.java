package com.ibm.gs.ls.odt.webbook;


import java.awt.*;
import java.awt.event.*;

public class MarkableMenuItem extends MenuItem implements ActionListener
{
	private boolean checked = false;
	// ×
	
	public MarkableMenuItem(String label,boolean b)
	{
		super();
		addActionListener(this);
		if(b){
			setLabel("*"+label);
		}else{
			setLabel(" "+label);
		}
	}
	
	public void actionPerformed(ActionEvent e)
	{
		if(!checked){
			checked = true;
			setLabel("*"+getLabel().trim());
		}
	}

}