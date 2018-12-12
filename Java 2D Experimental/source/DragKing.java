import java.awt.*;
import java.awt.event.*;
import java.awt.geom.*;

public class DragKing
    extends ApplicationFrame 
    implements MouseListener, MouseMotionListener {
  public static void main(String[] args) {
    new DragKing();
  }

  protected Point2D[] mPoints = {
	new Point2D.Double(50, 75),
	new Point2D.Double(100, 100),
	new Point2D.Double(200, 50),
	new Point2D.Double(250, 75),
	// Quad curve.
	new Point2D.Double(50, 175),
	new Point2D.Double(150, 150),
	new Point2D.Double(250, 175),
	// Line.
	new Point2D.Double(50, 275),
	new Point2D.Double(250, 275)
  };
  protected Point2D mSelectedPoint;
  
  public DragKing() {
    super("DragKing v1.0");
    setSize(400, 400);
    center();
    
    mSelectedPoint = null;

    // Listen for mouse events.
    addMouseListener(this);
    addMouseMotionListener(this);

    setVisible(true);
  }


  public final static double SCALE = 2.0;

  public void paint(Graphics g) {
    Graphics2D g2 = (Graphics2D)g;
	AffineTransform xform = new AffineTransform();
	xform.scale(SCALE,SCALE); 
	g2.setTransform(xform);
    
    // Draw the tangents.
    Line2D tangent1 = new Line2D.Double(mPoints[0], mPoints[1]);
    Line2D tangent2 = new Line2D.Double(mPoints[2], mPoints[3]);
    g2.setPaint(Color.red);
    g2.draw(tangent1);
    g2.draw(tangent2);
    // Draw the cubic curve.
    CubicCurve2D c = new CubicCurve2D.Float();
    c.setCurve(mPoints, 0);
    g2.setPaint(Color.black);
    g2.draw(c);

    // Draw the tangents.
    tangent1 = new Line2D.Double(mPoints[4], mPoints[5]);
    tangent2 = new Line2D.Double(mPoints[5], mPoints[6]);
    g2.setPaint(Color.green);
    g2.draw(tangent1);
    g2.draw(tangent2);
    // Draw the quadratic curve.
    QuadCurve2D q = new QuadCurve2D.Float();
    q.setCurve(mPoints, 4);
    g2.setPaint(Color.black);
    g2.draw(q);
    
    // Draw the line.
    Line2D l = new Line2D.Float(mPoints[7], mPoints[8]);
    g2.setPaint(Color.black);
    g2.draw(l);
    
    

    for (int i = 0; i < mPoints.length; i++) {
      g2.setPaint(mPoints[i] == mSelectedPoint ? Color.red : Color.blue);
      g2.fill(getControlPoint(mPoints[i]));
      
	  g2.setPaint(Color.BLACK);
	  g2.drawString("("+(int)mPoints[i].getX()+","+(int)mPoints[i].getY()+")",(float)mPoints[i].getX(),(float)mPoints[i].getY());
    }
  }
  
  protected Shape getControlPoint(Point2D p) {
    // Create a small square around the given point.
    int side = 6;
    return new Rectangle2D.Double(
        p.getX() - side / 2, p.getY() - side / 2,
        side, side);
  }
  
  public void mousePressed(MouseEvent me) {
    mSelectedPoint = null;
    Point p = new Point((int)(me.getX()/SCALE),(int)(me.getY()/SCALE));
    for (int i = 0; i < mPoints.length; i++) {
      Shape s = getControlPoint(mPoints[i]);
      if (s.contains(p)) {
        mSelectedPoint = mPoints[i];
        break;
      }
    }
    repaint();
  }
  
  public void mouseDragged(MouseEvent me) {
	if (mSelectedPoint != null) {
	  Point p = new Point((int)(me.getX()/SCALE),(int)(me.getY()/SCALE));
	  mSelectedPoint.setLocation(p);
	  repaint();
	}
  }
  
  public void mouseReleased(MouseEvent me) {}
  public void mouseMoved(MouseEvent me) {}
  public void mouseClicked(MouseEvent me) {}
  public void mouseEntered(MouseEvent me) {}
  public void mouseExited(MouseEvent me) {}
}