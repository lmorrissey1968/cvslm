import java.awt.*;
import java.awt.event.*;

public class Annoyance extends ApplicationFrame implements MouseMotionListener 
{
	private Image mImage;
	private int mX, mY;
	
	public static void main(String[] args) {
		new Annoyance();
	}
	
	public Annoyance() {
		super("Annoyance v1.0");
		addMouseMotionListener(this);
		setVisible(true);
	}

	public void mouseMoved(MouseEvent me) {
		//mouseDragged(me);
	}

	public void mouseDragged(MouseEvent me) {
		mX = (int)me.getPoint().getX();
		mY = (int)me.getPoint().getY();
		repaint();
	}

	public void update(Graphics g) {
		paint(g);
	}

	private void checkImage() {
		if(this.mImage == null || this.mImage.getWidth(this)!=getWidth() || this.mImage.getHeight(this)!=getHeight()){
			this.mImage = createImage(getWidth(), getHeight());
		}
	}

	public void paint(Graphics g) {
		int s = 30;
		
		checkImage();
		Graphics mg = mImage.getGraphics();

		mg.clearRect(0,0,getWidth(),getHeight());
		mg.setColor(Color.blue);
		mg.fillRect(mX - s / 2, mY - s / 2, s, s);

		g.drawImage(mImage, 0, 0, this);
	}
}