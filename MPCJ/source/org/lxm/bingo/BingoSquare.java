package org.lxm.bingo;


import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;
import java.awt.geom.AffineTransform;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Rectangle2D;

import javax.swing.JButton;

public class BingoSquare extends JButton
{
	private static final BasicStroke STROKE_CIRCLE = new BasicStroke(2,BasicStroke.CAP_BUTT,BasicStroke.JOIN_BEVEL,0,new float[]{6,2},0);
	private static final BasicStroke STROKE_DIAMOND = new BasicStroke(2);
	private static final BasicStroke STROKE_EXED = new BasicStroke(3);
	
	private Font mBaseFont;
	private boolean mMarked = false;
	private int mFlags = 0;
	
	public BingoSquare(String aValue,boolean aMarkable)
	{
		super(aValue);
		if(aMarkable)addActionListener(
			new ActionListener() {
				public void actionPerformed(ActionEvent aE) {
					toggle();
				}
			}
		);
		if(aValue.equals("FREE"))toggle();
		
		addComponentListener(
			new ComponentAdapter() {
				public void componentResized(ComponentEvent evt) {
					flowText();
				}
			}
		);
	}
	
	private void flowText() {
		if(mBaseFont==null)this.mBaseFont = getFont();
		if(mBaseFont!=null) {
			Insets inset = getInsets();
			Dimension size = getSize();
			FontMetrics fm = getFontMetrics(mBaseFont);
			
			float tWidth = fm.stringWidth(getText());
			float tHeight = fm.getHeight();
			
			float cWidth = size.width-(inset.left+inset.right);
			float cHeight = size.height-(inset.top+inset.bottom);
			
			float sWidth = (cWidth / tWidth);
			float sHeight = (cHeight / tHeight);
			
			float scale = Math.min(sWidth,sHeight);
			
			AffineTransform tx = new AffineTransform();
			tx.scale(scale*0.85,sHeight);
			setFont(mBaseFont.deriveFont(tx));
		}
	}
	
	public BingoSquare(Integer aValue,boolean aMarkable)
	{
		this(String.valueOf(aValue),aMarkable);
	}
	
	public void paint(Graphics g) {
		super.paint(g);
		Graphics2D g2 = (Graphics2D)g;
		if(mMarked)drawMark(g2);
		if(isFlagSet(0x01))drawCircle(g2);
		if(isFlagSet(0x02))drawDiamond(g2);
	}
	
	private boolean isFlagSet(int bits) { 
		return (mFlags&bits)>0; 
	}
	
	private void setFlag(int bits,boolean b) {
		this.mFlags = b ? mFlags|bits : mFlags&~bits;
	}
	
	public void setCircled(boolean b) {
		setFlag(0x01,b);
	}

	public void setDiamonded(boolean b) {
		setFlag(0x02,b);
	}

	public void setMarked(boolean aMarked) {
		this.mMarked = aMarked;
	}

	private void toggle() {
		this.mMarked = !mMarked;
	}
	
	public void setText(String aText) {
		super.setText(aText);
		flowText();
	}
	
	private void drawMark(Graphics2D g2) {
		int x1 = getInsets().left;int y1 = getInsets().top;
		int x2 = getWidth() - x1;int y2 = getHeight() - y1;
		g2.setXORMode(new Color(255,255,0));
		g2.fillRect(x1,y1,x2-x1,y2-y1);
	}
	
	private void drawExed(Graphics2D g2) {
		int x1 = getInsets().left; int y1 = getInsets().top;
		int x2 = getWidth() - x1 ; int y2 = getHeight() - y1;
		g2.setStroke(STROKE_EXED);
		g2.setXORMode(new Color(0,255,255));
		
		g2.drawLine(x1,y1,x2,y1);
		g2.drawLine(x1,y1,x1,y2);
		g2.drawLine(x1,y2,x2,y2);
		g2.drawLine(x2,y2,x2,y1);
		
		g2.drawLine(x1,y1,x2,y2);
		g2.drawLine(x1,y2,x2,y1);
	}
	
	private void drawDiamond(Graphics2D g2) {
		int hyp = (int)(Math.sqrt((getHeight()*getHeight())/2)*0.95);
		int inset = (getWidth()-hyp)/2;
		int diameter = Math.min(getHeight(),getWidth())-(inset*2);
		g2.setPaintMode();
		g2.setPaint(Color.GREEN);
		g2.setStroke(STROKE_DIAMOND);
		g2.draw(
			AffineTransform.getRotateInstance(Math.PI/4,(diameter/2)+inset,(diameter/2)+inset).createTransformedShape(
				new Rectangle2D.Float(inset,inset,diameter,diameter)
			)
		);
	}
	
	public char getCode() {
		try {
			return "0123456789ABCDE".charAt(
				(Integer.parseInt(getText())-1)%15
			);
		} catch(NumberFormatException e) {
			return 'F';
		}
	}
	
	private void drawCircle(Graphics2D g2) {
		int diameter = Math.min(getHeight(),getWidth())-10;
		g2.setPaintMode();
		g2.setColor(Color.BLUE);
		g2.setStroke(STROKE_CIRCLE);
		g2.draw(new Ellipse2D.Float(5,5,diameter,diameter));
	}
}

/**
 * 
 * $Log: BingoSquare.java,v $
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.8  2006/02/02 13:22:34  g137997
 * Added getCode() method.
 *
 * Revision 1.7  2006/01/30 13:39:07  g137997
 * Added Xed draw logic.
 *
 * Revision 1.6  2006/01/30 13:02:38  g137997
 * Added diamond and circle logic.
 *
 * Revision 1.5  2006/01/20 20:33:16  g137997
 * Moved text flowing logic to re-useable method.
 *
 * Revision 1.4  2006/01/19 18:52:29  g137997
 * Made more enhancements.
 *
 * Revision 1.3  2005/12/14 21:22:47  g137997
 * Added game call manager.
 *
 * Revision 1.2  2005/11/17 22:42:18  g137997
 * Added major enhancements.
 *
 * Revision 1.1  2005/11/16 22:39:38  g137997
 * Initial check-in.
 *
 * Revision 1.1  2005/11/08 20:31:44  g137997
 * Initial check-in.
 *
 * 
 */