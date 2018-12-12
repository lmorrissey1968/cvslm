package com.ibm.gs.ls.test.awt;

import java.awt.AWTEventMulticaster;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

public class WWButton extends WWLabel implements MouseListener
{
    private ActionListener al;

	public WWButton(String text)
	{
		this(text,-1);
	}

	public WWButton(String text,int width)
	{
		super(text,width);
		opaque = true;
		setBorder(true);
		addMouseListener(this);
    }

	public void setEnabled(boolean b)
	{
		if(b){
			setForeground(defF);
			setBackground(defB);
		}else{
			setForeground(defB.darker());
		}
		super.setEnabled(b);
	}

	public void mouseClicked(MouseEvent e){}
	public void mouseReleased(MouseEvent e){}
	public void mouseEntered(MouseEvent e){}
	public void mouseExited(MouseEvent e){}
	public void mousePressed(MouseEvent e)
	{
		if(isEnabled() && al!=null){
			al.actionPerformed(new ActionEvent(this,ActionEvent.ACTION_PERFORMED,"ButtonClicked"));
		}
	}

	public void addActionListener(ActionListener l)
	{
		al = AWTEventMulticaster.add(al, l);
	}

	public void removeActionListener(ActionListener l)
	{
		al = AWTEventMulticaster.remove(al, l);
	}
}