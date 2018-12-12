package com.ibm.gs.ls.odt.runtime;

import com.ibm.gs.ls.odt.info.*;
import java.awt.*;
import java.awt.event.*;

public class Index extends DataLoader implements TextListener,ItemListener,ActionListener,KeyListener
{
   	static final String MSG1 = "Type the first few letters of the word you are looking for";
   	static final String MSG2 = "Click the index entry you want, and then press Enter";
   	static final int W = 400;
   	static final int H = 320;

	CourseData		cd;

	String			target;
	
	TextField		tf;
	java.awt.List	li;
	Button			bu;
	Info			io;
   	IndexItem		ia[];
   	IndexWindow		iw;
//	boolean			done=false;

	public void init()
	{
	   	target = getParameter("target")==null?"_self":getParameter("target");

		iw = new IndexWindow();
		iw.setSize(W,H);
  		iw.setLayout(new GridBagLayout());
 		iw.setBackground(Color.lightGray);
		addToGrid(iw,new Label(MSG1),0,0,2,1,0.0,0.0);
		addToGrid(iw,tf = new TextField(),0,1,1,1,5.0,0.0);
		addToGrid(iw,bu = new Button("Enter"),1,1,1,1,0.0,0.0);
		addToGrid(iw,new Label(MSG2),0,2,2,1,0.0,0.0);
		addToGrid(iw,li = new java.awt.List(),0,3,2,1,0.0,1.0);
		tf.setBackground(Color.white);
		li.setBackground(Color.white);

		(cd = new CourseData(this)).start();
	}

	public void doneNotify()
	{
//		done = true;
		io = cd.getByID(cd.getVAR("submenu"));
		
		if(io.isInfoLevel()){
			ia = ((InfoLevel)io).getIndexItemArray();
			for(int i=0;i<ia.length;i++)li.addItem(ia[i].getItem());
		}
	
		tf.addTextListener(this);
		li.addItemListener(this);
//    	li.addActionListener(this);
		bu.addActionListener(this);

		tf.addKeyListener(this);
		li.addKeyListener(this);
		bu.addKeyListener(this);
	}
	
	// ----------------------------------------------------------------
	boolean mutex = false;

	public void textValueChanged(TextEvent e)
	{
		if(!mutex){
			int ci = findClosest(tf.getText());
			li.select(ci);
			li.makeVisible(ci-1>0?ci-1:0);
		}else{
			mutex = false;	
		}
	}

	public void itemStateChanged(ItemEvent e)
	{
		mutex = true;
		IndexItem ii = ia[li.getSelectedIndex()];
	    	tf.setText(ii.getItem());
//		getAppletContext().showStatus("INDEX: "+ii.toString());
	}

	public void actionPerformed(ActionEvent e)
	{
		navigate();
	}

	public void keyPressed(KeyEvent e)
	{
		if(e.getKeyCode()==KeyEvent.VK_ENTER)navigate();
	}

	public void keyTyped(KeyEvent e){}
	public void keyReleased(KeyEvent e){}

//------------------------------------------------------
	void navigate()
	{
		int si = li.getSelectedIndex();
		if(si>-1){
 			cd.setVAR("module","");
			cd.gotoIO(ia[si].getContent(),true,ia[si].getAnchor());
			ia[si].getContent().use();
	   		iw.dispose();
		}
	}

//------------------------------------------------------
	public Info getAppletRootIO()
	{
		return this.io;
	}

	// ----------------------------------------------------------------
	public CourseData getCourseData()
	{
		return this.cd;
	}
	
	// ----------------------------------------------------------------
	public void stop()
	{
		iw.dispose();
	}
	
	// ----------------------------------------------------------------
	public void activate()
	{
		tf.setText("");
		li.makeVisible(0);
		li.select(0);
		li.deselect(0);
		iw.setSize(W,H);
   		iw.show();
		iw.requestFocus();
	   	tf.requestFocus();
	}

	int findClosest(String x)
	{
		IndexItem ii = new IndexItem(null,x,"");
		for(int i=0;i<ia.length;i++){
			if(ia[i].gt_or_eq(ii))return i;
		}
		return ia.length-1;
	}
	

	static void addToGrid(Container cont, Object arg,
							int x, int y, int w, int h,
							double weightx, double weighty)
	{
		GridBagLayout gbl = (GridBagLayout)cont.getLayout();
		GridBagConstraints c = new GridBagConstraints();
		Component comp;

		c.fill = GridBagConstraints.BOTH;
		c.gridx = x;
		c.gridy = y;
		c.gridwidth = w;
		c.gridheight = h;
		c.weightx = weightx;
		c.weighty = weighty;
		if (arg instanceof String) {
			comp = new Button((String)arg);
		} else {
			comp = (Component)arg;
		}
		cont.add(comp);
		gbl.setConstraints(comp, c);
	}

	class IndexWindow extends Frame implements WindowListener
	{
		public IndexWindow()
		{
			super(getParameter("index_title")==null?"Index":getParameter("index_title"));
			addWindowListener(this);
		}
		
		public void windowClosing(WindowEvent e)
		{
			dispose();
		}
		public void windowOpened(WindowEvent e){}
		public void windowClosed(WindowEvent e){}
		public void windowIconified(WindowEvent e){}
		public void windowDeiconified(WindowEvent e){}
		public void windowActivated(WindowEvent e){}
		public void windowDeactivated(WindowEvent e){}	
	}
}

/**
 * 
 * $Log: Index.java,v $
 * Revision 1.2  2007/02/02 14:49:25  g137997
 * Added call to CourseData (cd) start() since it is now required.
 * This should fix most of the race condidtion NPEs that were occuring.
 *
 * 
 */