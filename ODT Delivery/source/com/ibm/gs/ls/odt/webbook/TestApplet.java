package com.ibm.gs.ls.odt.webbook;


//Import Statements
import java.awt.event.*;
import java.awt.*;
import java.applet.*;

/**
 * <filename>
 *
 * Created: <date>
 *
 * @author <authorname>
 * @version $Revision: 1.2 $    Last Updated: $Date: 2005/01/12 17:39:05 $ 
 * @see <relatedclassname>
 * 
 * $Log: TestApplet.java,v $
 * Revision 1.2  2005/01/12 17:39:05  g137997
 * Initial check-in.
 *
 * 
 * 
 */

public class TestApplet extends Applet implements ActionListener
{
	public void init()
	{
		setLayout(null);
		setBackground(Color.white);
		
		final StickyPopupMenu pm0 = new StickyPopupMenu("MainMenu");
		final StickyPopupMenu pm1 = new StickyPopupMenu("This is a SubMenu");
		final StickyPopupMenu pm2 = new StickyPopupMenu("Another SubMenu");
		final StickyPopupMenu pm2_1 = new StickyPopupMenu("SUB SubMenu");
		
		final Button b0 = new Button("Click Me");
		b0.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e)
			{
				pm0.showVerticalTo( b0.getBounds() );
			}
		});
		
		final Button b1 = new Button("Click Me Also");
		b1.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e)
			{
				pm0.showHorizontalTo( b1.getBounds() );
			}
		});

		
		pm0.addItem("Larry");
		pm0.addItem(pm1);
		pm0.addItem("Morrissey");
		pm0.addItem("Was");
		pm0.addItem("Here");
		pm0.addItem(pm2);
		pm0.addItem("Today (10/14/2001)");
		
		pm1.addItem("Disney Land");
		pm1.addItem("Walt Disney World");
		
		pm2.addItem("Aerosmith",this);
		pm2.addItem("AC/DC");
		pm2.addItem(pm2_1);
		pm2.addItem("Def Leppard");
		pm2.addItem("Eagles");
		
		pm2_1.addItem("Men In Black",this);
		pm2_1.addItem("Wild Wild West",this);
		pm2_1.addItem("Independence Day",this);
		
		add(b0);
		b0.setBounds(10,50,100,40);
		
		add(b1);
		b1.setBounds(200,50,200,40);
		
		pm0.addToContainer(this);
	}
	
	
	public void actionPerformed(ActionEvent e)
	{
		System.out.println(e);
	}
}