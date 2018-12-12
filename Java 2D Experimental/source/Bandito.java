import java.awt.*;
import java.awt.event.*;
import java.awt.image.*;

public class Bandito {
  public static void main(String[] args) {
    // Create a frame window to hold everything.
    ApplicationFrame f = new ApplicationFrame("Bandito v1.0");
    // Create a SplitImageComponent with the source image.
    String filename = "Ethol with Roses.small.jpg";
    SplitImageComponent sic = new SplitImageComponent(filename);
    
    // Create a BandCombineOp.
    float[][] matrix = {
      { -1, 0, 0, 255 },
      {  0, 1, 0, 0 },
      {  0, 0, 1, 0 }
    };
    BandCombineOp op = new BandCombineOp(matrix, null);

    // Process the source image raster.
    BufferedImage sourceImage = sic.getImage();
    Raster source = sourceImage.getRaster();
    WritableRaster destination = op.filter(source, null);
    
    // Create a destination image using the processed
    //   raster and the same color model as the source image.
    BufferedImage destinationImage = new BufferedImage(
        sourceImage.getColorModel(), destination, false, null);
    sic.setSecondImage(destinationImage);
    
    // Set up the frame window.
    f.setLayout(new BorderLayout());
    f.add(sic, BorderLayout.CENTER);
    f.setSize(f.getPreferredSize());
    f.center();
    f.setVisible(true);
  }
}