import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Image;
import java.io.File;
import java.sql.Timestamp;

import javax.swing.ImageIcon;
import javax.swing.JPanel;

import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.imaging.jpeg.JpegProcessingException;
import com.drew.metadata.MetadataException;
import com.drew.metadata.exif.ExifDirectory;

/**
 * Created on May 4, 2004 at 11:46:23 PM
 */
/**
 * @author Lawrence Morrissey
 */
public class NewThumbNail extends JPanel 
{
    private Image mImage;
    
    public NewThumbNail(File aImageName) throws JpegProcessingException, MetadataException 
	{
		ExifDirectory exif = (ExifDirectory)JpegMetadataReader.readMetadata(aImageName).getDirectory(ExifDirectory.class);
		System.out.println(	new Timestamp(exif.getDate(ExifDirectory.TAG_DATETIME_DIGITIZED).getTime()) );
		this.mImage = new ImageIcon(exif.getThumbnailData()).getImage();
    }
    
    public void paint(Graphics g) {
    	g.drawImage(this.mImage,0,0,Color.BLACK,this);
    }
    
    public Dimension getPreferredSize() {
    	return new Dimension(this.mImage.getWidth(this),this.mImage.getHeight(this)); 
    }
}
