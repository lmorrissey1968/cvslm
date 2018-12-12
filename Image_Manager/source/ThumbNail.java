import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Image;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JComponent;

import com.sun.image.codec.jpeg.ImageFormatException;

/**
 * Created on Apr 29, 2004 at 11:48:44 PM
 */
/**
 * @author lmorrissey
 */
public class ThumbNail extends JComponent 
{
    private Image mImage;
    private Dimension mPreferredSize;

	public ThumbNail(File aImageFile,double aScale) throws ImageFormatException, FileNotFoundException, IOException	{
		Image image = new ImageIcon(aImageFile.toString()).getImage();
		double width = image.getWidth(this);
		double height = image.getHeight(this);
		double scale = Math.min(aScale/width,aScale/height);
		this.mPreferredSize = new Dimension((int)(width*scale),(int)(height*scale));
		this.mImage = image.getScaledInstance(this.mPreferredSize.width,this.mPreferredSize.height,Image.SCALE_SMOOTH);
		setToolTipText(aImageFile.getName());
    }
    
	public void paint(Graphics g) {
		// This is a test.
		g.drawImage(this.mImage,0,0,Color.BLACK,this);
	}
	
	public Dimension getPreferredSize() {
		return this.mPreferredSize;
	}
}
