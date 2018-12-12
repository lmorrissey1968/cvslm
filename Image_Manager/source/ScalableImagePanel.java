import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.geom.AffineTransform;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JPanel;

import com.sun.image.codec.jpeg.ImageFormatException;

/**
 * Created on Apr 29, 2004 at 9:22:09 PM
 */
/**
 * @author Lawrence Morrissey
 */
public class ScalableImagePanel extends JPanel
{
	private static final int BORDER = 6;
	
	private Image mImage;
	//private BufferedImage mImage;
	private double mImgWidth;
    private double mImgHeight;
	private Dimension mPreferredSize;
	private boolean mMarked;
	

	public ScalableImagePanel(File aImageFile,double aScale) throws ImageFormatException, FileNotFoundException, IOException
	{
		addMouseListener(
			new MouseAdapter(){
				public void mouseEntered(MouseEvent e) {
					setBackground(mMarked ? Color.GREEN : Color.BLUE);
				}

				public void mouseExited(MouseEvent e) {
					setBackground(mMarked ? Color.YELLOW : getParent().getBackground());
				}

				public void mousePressed(MouseEvent e) {
					setBackground((mMarked = !mMarked) ? Color.YELLOW : Color.BLUE);
//					setBackground((mMarked = !mMarked) ? Color.YELLOW : getParent().getBackground());
				}
			}
		);
		
		setToolTipText(aImageFile.getName());
		
		Image image = new ImageIcon(aImageFile.toString()).getImage();
		double width = image.getWidth(this);
		double height = image.getHeight(this);
		double scale = Math.min(aScale/width,aScale/height);
		
		int intWidth = (int)(this.mImgWidth = width * scale);
		int intHeight = (int)(this.mImgHeight = height * scale);
		
		this.mPreferredSize = new Dimension(intWidth+BORDER*2,intHeight+BORDER*2);
		this.mImage = image.getScaledInstance(intWidth,intHeight,Image.SCALE_SMOOTH);
	}
	
	
	public void paint(Graphics g) {
		super.paint(g);
		
		double drawWidth = getWidth()-BORDER*2;
		double drawHeight = getHeight()-BORDER*2;
		
		double scale = Math.min(drawWidth/mImgWidth,drawHeight/mImgHeight);
		if(scale<=1.0){
			double xPos = ((drawWidth-(mImgWidth*scale))/2)+BORDER;
			double yPos = ((drawHeight-(mImgHeight*scale))/2)+BORDER;
			AffineTransform xform = new AffineTransform();
			xform.translate(xPos,yPos);
			xform.scale(scale,scale);
			Graphics2D g2 = (Graphics2D)g;
			g2.drawImage(this.mImage,xform,this);
		}else{
			double xPos = ((drawWidth-mImgWidth)/2)+BORDER;
			double yPos = ((drawHeight-mImgHeight)/2)+BORDER;
			g.drawImage(this.mImage,(int)xPos,(int)yPos,this);
		}
	}
	
	public Dimension getPreferredSize() {
		return this.mPreferredSize;
	}
	
	
}
