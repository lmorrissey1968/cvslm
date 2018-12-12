package com.ibm.gs.ls.test;

import java.applet.Applet;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.CardLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
import java.awt.Dialog;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Frame;
import java.awt.Graphics;
import java.awt.GridLayout;
import java.awt.Label;
import java.awt.Panel;
import java.awt.TextField;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.Vector;
import java.util.zip.ZipInputStream;

import com.ibm.gs.ls.test.awt.BreakingFlowLayout;
import com.ibm.gs.ls.test.awt.WWLabel;
import com.ibm.gs.ls.test.compiler.Attributes;
import com.ibm.gs.ls.test.compiler.TestParser;
import com.ibm.gs.ls.test.component.QComponent;
import com.ibm.gs.ls.test.component.Question;
import com.ibm.gs.ls.test.component.TouchListener;


public class MultiQ extends Applet implements ActionListener,TouchListener
{
	private Frame mCertificateFrame;
	private TextField mCertificateLastName;
	private TextField mCertificateFirstName;
	
	private final static Dimension SCREEN = Toolkit.getDefaultToolkit().getScreenSize();
	private static Hashtable ah = new Hashtable();

	private Attributes mAttributes;
	private QComponent[] mQuestions;
	private Panel mQuestionPanel;
	private Panel mButtonPanel;
	private Panel mScorePanel;
	private CardLayout mQuestionCards;
	private WWLabel mProgressIndicator = new WWLabel("");
	private Button bu_done,bu_rem,bu_rev,bu_prev,bu_next,bu_exit;
	private boolean	exit_b = true;
	private boolean	mReenterFlag = true;
	private boolean mTouchedFlag = false;
	private int mCurrentQuestionIdx = 0;
	private String mFileNameInArchive;
	private int maxtries = 0;
	
    public void init()
	{
		setBackground(Color.white);
		setLayout(new BorderLayout());

		String tfname = getParameter("testfile");
		if(tfname!=null){
			this.mReenterFlag = getBooleanParam("re_enter",true);
			try{
				// ********** Load/Parse Questions ***********
				URL atu = new URL(getDocumentBase(),getParameter("attrfile"));
				if((mAttributes=(Attributes)ah.get(atu))==null)try{
					ah.put(atu,mAttributes = new Attributes(getReader(atu),atu+(mFileNameInArchive==null?"":"/["+mFileNameInArchive+"]")));
				}catch(Exception exc){
					mAttributes = new Attributes();
				}

				URL tfu = new URL(getDocumentBase(),tfname);
				System.out.println("TEST: "+tfu);
				TestParser tp = new TestParser(getReader(tfu),tfu+(mFileNameInArchive==null?"":"/["+mFileNameInArchive+"]"));
				int rp = getIntegerParam("poolsize",0);
				mQuestions	= QComponent.getQCArray(rp==0?tp.getTest():randomPool(tp.getTest(),rp),mAttributes);
				mQuestionPanel	= QComponent.getCardPanel(mQuestions);
				
				if(getParameter("bkimage")!=null){
					mQuestions[0].setBack(new URL(getDocumentBase(),getParameter("bkimage")));
				}

				for(int i=0;i<mQuestions.length;i++){ mQuestions[i].setTouchListener(this); }

				// ********** Build/Layout Components ***********
				mQuestionCards = (CardLayout)mQuestionPanel.getLayout();
				mButtonPanel = getButtonPanel();
				mProgressIndicator.setFont(mAttributes.getFont("progind",new Font("Helvetica",Font.PLAIN,14)));
				mProgressIndicator.setBorder(true,false); mProgressIndicator.setJustification(WWLabel.CENTER);
			
				add(mProgressIndicator,BorderLayout.NORTH);
				add(mQuestionPanel,BorderLayout.CENTER);
				setProgInd();
				setButtons();
			}catch(Exception exc){
				this.add(new Label(exc.toString()));
				exc.printStackTrace();
			}
			
			if(getBooleanParam("controls",false)){
				add(mButtonPanel,BorderLayout.SOUTH);
			}
		
			if(getParameter("maxtries")!=null)try{
				maxtries = Integer.parseInt(getParameter("maxtries"));
			}catch(NumberFormatException nfe){
				maxtries = 0;
			}
		}else{
			add(new Label("Parameter: 'testfile' not specified",Label.CENTER),BorderLayout.CENTER);
		}
	}

	public void paint(Graphics g){
		if(mQuestions!=null)mQuestions[0].paintBack(g);
		super.paint(g);
	}

	public void stop() {
	}

	public void actionPerformed(ActionEvent e)
	{
		Object src = e.getSource();
		if(src instanceof Button){
			if(src==bu_prev){
				prev();
			}else if(src==bu_next){
				next();
			}else if(src==bu_rev){
				rev();
			}else if(src==bu_exit){
				exit();
			}else if(src==bu_rem){
				System.out.println(getRemediation());
			}else if(src==bu_done){
				done();
			}
		}
	}

	public Panel getButtonPanel()
	{
		Panel p = new Panel(){
			public void paint(Graphics g){
				mQuestions[0].paintBack(g);
				super.paint(g);
			}
		};
		
		Font f = new Font("Courier",Font.BOLD,14);
		
		if (getBooleanParam("bu_done", true)) {
			p.add(this.bu_done = makeTextButton("DONE",this));
		}
		if (getBooleanParam("bu_rem", true)) {
			p.add(this.bu_rem = makeTextButton("Remediate",this));
		}
		if (getBooleanParam("bu_rev", true)) {
			p.add(this.bu_rev = makeTextButton("Reveal",this));
		}
		if (getBooleanParam("bu_prev", true)) {
			p.add(this.bu_prev = makeTextButton("<<",this));
			this.bu_prev.setFont(f);
		}
		if (getBooleanParam("bu_next", true)) {
			p.add(this.bu_next = makeTextButton(">>",this));
			this.bu_next.setFont(f);
		}
		if (getBooleanParam("bu_exit", true)) {
			p.add(this.bu_exit = makeTextButton(mReenterFlag?"Exit/Re-Enter":"Exit Test",this));
		}
		return p;
	}
	
	private Button makeTextButton(String aLabel,ActionListener aListener) {
		Button b = new Button(aLabel);
		b.addActionListener(aListener);
		return b;
	}

	public boolean state_prev() { return bu_prev!=null && bu_prev.isEnabled(); }
	public boolean state_next() { return bu_next!=null && bu_next.isEnabled(); }
	public boolean state_done() { return bu_done!=null && bu_done.isEnabled(); }
	public boolean state_exit() { return bu_exit!=null && bu_exit.isEnabled(); }
	public boolean state_rem() { return bu_rem!=null && bu_rem.isEnabled(); }
	public boolean state_rev() { return bu_rev!=null && bu_rev.isEnabled(); }

	public void rev() {
		QComponent qc = mQuestions[mCurrentQuestionIdx];
		Question q = qc.getQuestion();
		qc.reveal();
		qc.showFeedback(
			q.getFeedbackREV(),
			mAttributes.getColor("b_feed_rev",Color.cyan),
			mAttributes.getColor("f_feed_rev",Color.blue)
		);
		setButtons();
	}

	public void touched() {
		mTouchedFlag = true;
	}

	public void done() {
		if(mTouchedFlag){
			grade();
		}else{
			mQuestions[mCurrentQuestionIdx].showFeedback(	
				"You have not answered yet",
				mAttributes.getColor("b_feed_cor",Color.cyan),
				mAttributes.getColor("f_feed_cor",Color.blue)
			);
		}
	}

	public void prev() {
		if(mTouchedFlag && !getBooleanParam("bu_done",true)){
			grade();
		}else{
			showQC(mCurrentQuestionIdx>0?--mCurrentQuestionIdx:0);
			setProgInd();
			setButtons();
		}
	}

	public void next() {
		if(mTouchedFlag && !getBooleanParam("bu_done",true)){
			grade();
		}else{
			if(mCurrentQuestionIdx<mQuestions.length-1){
				showQC(++mCurrentQuestionIdx);
				setProgInd();
				setButtons();
			}else{
				exit(); 
			}
		}
	}

	public boolean exit() {
		if(exit_b){
			if(mTouchedFlag){
				grade();
			}else{
				showScore();
				disableAllButtons();
				exit_b = !exit_b;
				return true;
			}
		}else if(mReenterFlag){
			showQC(mCurrentQuestionIdx);
			mQuestionPanel.remove(mScorePanel);
			setProgInd();
			setButtons();
			exit_b = !exit_b;
		}
		return false;
	}

	public boolean exited() {
		return !exit_b;
	}

	public Vector getRemediation() {
		Question q = mQuestions[mCurrentQuestionIdx].getQuestion();
		Vector v = new Vector(2);
		v.addElement(q.getLink1());
		v.addElement(q.getLink2());
		return v;
	}

	public Vector getScore() {
		return QComponent.getScore(mQuestions);
	}
	
	public int getScore_Correct() {
		return ((Integer)getScore().get(0)).intValue();
	}

	public int getScore_Attempted() {
		return ((Integer)getScore().get(1)).intValue();
	}
	
	public int getScore_Total() {
		return ((Integer)getScore().get(2)).intValue();
	}
	
	public double getScore_AttemptedPCT() {
		return ((Double)getScore().get(3)).doubleValue();
	}
	
	public double getScore_TotalPCT() {
		return ((Double)getScore().get(4)).doubleValue();
	}

	public String getNameForCertificate() {
		return this.mCertificateFirstName.getText().trim()+" "+this.mCertificateLastName.getText().trim();
	}
	
	private void swap(Object[] x,int a,int b)
	{
		Object tmp = x[a];
		x[a] = x[b];
		x[b] = tmp;
	}
	
	private Question[] randomPool(Question[] q,int size)
	{
		if(size<=q.length){
			Question[] rq = new Question[size];
			for(int i=0;i<(int)(q.length*13*Math.random());i++){
				swap(q,(int)(q.length*Math.random()),(int)(q.length*Math.random()));
			}
			for(int i=0;i<size;i++){
				rq[i] = q[i];
			}
			return rq;
		}else{
			return q;
		}
	}
	
	private Reader getReader(URL file) throws IOException
	{
		if(file.toString().toLowerCase().indexOf(".zip")!=-1){
			ZipInputStream zis = new ZipInputStream(file.openStream());
			this.mFileNameInArchive = zis.getNextEntry().getName();
			return new InputStreamReader(zis);
		}else{
			this.mFileNameInArchive = null;
			return new InputStreamReader(file.openStream());
		}
	}
	
	private Double getDoubleParam( String aParamName ) {
		try {
			return new Double(getParameter(aParamName)) ;
		} catch (Exception e) {
			return null;
		}
	}
	
	private String getStringParam( String aParamName, String aDefaultValue ) {
		String param = getParameter(aParamName);
		return param==null ? aDefaultValue : param ;
	}
	
	private int getIntegerParam( String aParamName, int aDefaultValue ) {
		try {
			String param = getParameter(aParamName);
			return param==null ? aDefaultValue : Integer.parseInt(param) ;
		} catch (Exception e) {
			return aDefaultValue;
		}
	}

	private boolean getBooleanParam( String aParamName, boolean aDefaultValue ) {
		try {
			String param = getParameter(aParamName);
			return param==null ? aDefaultValue : param.equalsIgnoreCase("true") ;
		} catch (Exception e) {
			return aDefaultValue;
		}
	}
	
	private void grade() {
		QComponent qc = mQuestions[mCurrentQuestionIdx];
		Question q = qc.getQuestion();
		qc.incTries();
		if(qc.isCorrect()){
			qc.showFeedback(
				q.getFeedbackCOR(),
				mAttributes.getColor("b_feed_cor", Color.blue),
				mAttributes.getColor("f_feed_cor", Color.yellow)
			);
		}else{
			if(maxtries>0 && qc.getTries()>=maxtries){
				rev();
			}else{
				qc.showFeedback(
					q.getFeedbackINC(),
					mAttributes.getColor("b_feed_inc", Color.red),
					mAttributes.getColor("f_feed_inc", Color.white)
				);
			}
		}
		mTouchedFlag = false;
		setButtons();
	}

	private void showScore() {
		mProgressIndicator.setText("TEST RESULTS");
		mProgressIndicator.repaint();
		
		this.mScorePanel = new Panel(new BorderLayout()){
			public void paint(Graphics g) {
				mQuestions[0].paintBack(g);
				super.paint(g);
			}
		};
		
		Vector scoreData = QComponent.getScore(mQuestions);
		
		WWLabel sc = new WWLabel(
			subst(
				mAttributes.getString(QComponent.allAttempted(mQuestions)?"result_full":"result_part","%0/%1/%2: %3%%,%4%%"),
				scoreData
			)
		);
		this.mScorePanel.add("Center",sc);
		sc.setJustification(WWLabel.CENTER);
		sc.setFont(this.mAttributes.getFont("result_font",new Font("Helvetica",Font.BOLD,20)));

		String extr_msg = mAttributes.getString("extr_msg",null);
		if(extr_msg!=null){
			WWLabel ex = new WWLabel(extr_msg);
			this.mScorePanel.add("South",ex);
			ex.setBorder(true);
			ex.setJustification(WWLabel.CENTER);
			ex.setFont(this.mAttributes.getFont("extr_msg_font",new Font("Helvetica",Font.PLAIN,14)));
		}
		
		this.mQuestionPanel.add(this.mScorePanel,"score");
		this.mQuestionCards.show(this.mQuestionPanel,"score");
		
		Double cert_pct = getDoubleParam("cert_pct");
		if(cert_pct!=null){
			double actu_pct = ((Double)scoreData.elementAt(4)).doubleValue();
			if( actu_pct >= cert_pct.doubleValue() ){
				showPassedDialog();
			}else{
				showFailedDialog();
			}
		}
	}
	
	private void showPassedDialog() {
		Container cNORTH = new Panel();
		cNORTH.setLayout(new GridLayout(0,1,1,1));
		StringTokenizer st = new StringTokenizer(mAttributes.getString("cert_passed_msg","Passed Test"),"|");
		while(st.hasMoreTokens()){
			cNORTH.add(new Label(st.nextToken()));
		}

		Container cCENTER = new Panel();
		cCENTER.setLayout(new BreakingFlowLayout(1,1));
		
		cCENTER.add(new Label("First Name"));
		cCENTER.add(this.mCertificateFirstName = new TextField(30),BreakingFlowLayout.BREAK);
	
		cCENTER.add(new Label("Last Name"));
		cCENTER.add(this.mCertificateLastName = new TextField(30));
		
		Container cSOUTH = new Panel();
		cSOUTH.setLayout(new FlowLayout(FlowLayout.CENTER,1,1));
		cSOUTH.add(makeTextButton("OK",new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				try {
					URL certURL = new URL( getCodeBase(), getStringParam("cert_doc_offset","certificate.html") );
					getAppletContext().showDocument(certURL,"certificate");
					mCertificateFrame.dispose();
				} catch (MalformedURLException exc) {
					exc.printStackTrace();
				}
			}
		}));
		
		this.mCertificateFrame = new Frame(mAttributes.getString("cert_passed_titlebar","PASSED"));
		mCertificateFrame.setLayout(new BorderLayout(1,1));
		
		mCertificateFrame.add(cNORTH,BorderLayout.NORTH);
		mCertificateFrame.add(cCENTER,BorderLayout.CENTER);
		mCertificateFrame.add(cSOUTH,BorderLayout.SOUTH);
		
		mCertificateFrame.pack();
		center(mCertificateFrame);
		mCertificateFrame.show();
		mCertificateFrame.toFront();
	}
	
	private void showFailedDialog() {
		Container cNORTH = new Panel();
		cNORTH.setLayout(new GridLayout(0,1,1,1));
		StringTokenizer st = new StringTokenizer(mAttributes.getString("cert_failed_msg","Failed Test!"),"|");
		while(st.hasMoreTokens()){
			cNORTH.add(new Label(st.nextToken()));
		}
		
		Container cSOUTH = new Panel();
		cSOUTH.setLayout(new FlowLayout(FlowLayout.CENTER,1,1));
		cSOUTH.add(makeTextButton("OK",new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				mCertificateFrame.dispose();
			}
		}));
		
		this.mCertificateFrame = new Frame(mAttributes.getString("cert_failed_titlebar","FAILED"));
		mCertificateFrame.setLayout(new BorderLayout(1,1));
		
		mCertificateFrame.add(cNORTH,BorderLayout.NORTH);
		mCertificateFrame.add(cSOUTH,BorderLayout.SOUTH);
		
		mCertificateFrame.pack();
		center(mCertificateFrame);
		mCertificateFrame.show();
		mCertificateFrame.toFront();
	}
	
	private void center(Frame f) {
		Dimension d = f.getSize();
		f.setLocation(
			(SCREEN.width-d.width)/2,
			(SCREEN.height-d.height)/2
		);
	}
	
	private String subst(String t,Vector v) {
		StringBuffer sb = new StringBuffer("");
		int i = t.indexOf("%"),last = 0;
		while(i!=-1){
			sb.append(t.substring(last,i));
			char z = t.charAt(i+1);
			if(z=='%'){
				sb.append("%");
			}else{
				sb.append(v.elementAt(Integer.parseInt("0"+z)));
			}
			last=i+2; i=t.indexOf("%",last);
		}
		sb.append(t.substring(last));
		return sb.toString();
	}

	private void disableAllButtons() {
		Component[] ca = mButtonPanel.getComponents();
		for(int i=0;i<ca.length;i++)ca[i].setEnabled(false);
		bu_exit.setEnabled(mReenterFlag);
	}

	private void setButtons() {
		QComponent qc = mQuestions[mCurrentQuestionIdx];
		if(bu_rev!=null)bu_rev.setEnabled(qc.isAttemptedWrong()?!qc.isRevealed():false);
		if(bu_rem!=null)bu_rem.setEnabled(true);
		if(bu_prev!=null)bu_prev.setEnabled(mCurrentQuestionIdx!=0);
//		if(bu_next!=null)bu_next.setEnabled(mCurrentQuestionIdx!=mQuestions.length-1);
		if(bu_next!=null)bu_next.setEnabled(true);
		if(bu_exit!=null)bu_exit.setEnabled(true);
	}

	private void setProgInd() {
		mProgressIndicator.setText("QUESTION "+(mCurrentQuestionIdx+1)+" OF "+mQuestions.length);
		mProgressIndicator.repaint();
	}

	private void showQC(int n) {
		mQuestionCards.show(mQuestionPanel,String.valueOf(n));
	}
}