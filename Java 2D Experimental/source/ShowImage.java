import java.applet.*;
import java.awt.*;

public class ShowImage
    extends Applet {
  private Image mImage;

  public void init() {
    mImage = getImage(getDocumentBase(), "oreilly.gif");
  }

  public void paint(Graphics g) {
    g.drawImage(mImage, 0, 0, this);
  }
}