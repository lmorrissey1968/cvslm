import java.awt.Component;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.MediaTracker;
import java.awt.image.BufferedImage;

public class BufferedImageTracker 
{
	private static MediaTracker sTracker;
	private static int sID = 0;
	
	public static void init(Component aIniter){
		if(sTracker==null)sTracker = new MediaTracker(aIniter);
	}

	private static boolean waitForImage(Image image) {
		int id;
		synchronized (sTracker) {
			id = sID++;
		}
		sTracker.addImage(image, id);
		try {
			sTracker.waitForID(id);
		} catch (InterruptedException ie) {
			return false;
		}
		if (sTracker.isErrorID(id))return false;
		return true;
	}

	public static BufferedImage makeBufferedImage(Image image) {
		if (waitForImage(image) == false)return null;

		BufferedImage bufferedImage = new BufferedImage( image.getWidth(null),image.getHeight(null),BufferedImage.TYPE_INT_RGB);
		Graphics2D g2 = bufferedImage.createGraphics();
		g2.drawImage(image, null, null);
		return bufferedImage;
	}
}