import java.awt.*;
import java.awt.font.*;
import java.awt.geom.*;

public class RollingText {
  public static void main(String[] args) {
    Frame f = new ApplicationFrame("RollingText v1.0") {
      public void paint(Graphics g) {
        Graphics2D g2 = (Graphics2D)g;

        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
            RenderingHints.VALUE_ANTIALIAS_ON);
        
        String s = "What's our vector, Victor?";
        Font font = new Font("Serif", Font.PLAIN, 24);
        FontRenderContext frc = g2.getFontRenderContext();
        g2.translate(40, 80);

        GlyphVector gv = font.createGlyphVector(frc, s);
        int length = gv.getNumGlyphs();
        for (int i = 0; i < length; i++) {
          Point2D p = gv.getGlyphPosition(i);
          double theta = (double)i / (double)(length - 1) * Math.PI / 4;
          AffineTransform at = AffineTransform.getTranslateInstance(
              p.getX(), p.getY());
          at.rotate(theta);
          Shape glyph = gv.getGlyphOutline(i);
          Shape transformedGlyph = at.createTransformedShape(glyph);
          g2.fill(transformedGlyph);
        }
      }
    };
    f.setVisible(true);
  }
}