import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Toolkit;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.FilenameFilter;

import javax.swing.JFileChooser;
import javax.swing.JFrame;

/**
 * Created on Apr 30, 2004 at 12:30:26 AM
 */
/**
 * @author Lawrence Morrissey 
 */
public class ImageGrid extends JFrame
{
	private static int MAX_DIMENSION = 120;
	private static int MAX_FILES = 200;
	
	
	public ImageGrid()
	{
		super("Images");
		sizeByFactorAndCenter(this,0.9f,0.9f,1280,1024);
		setVisible(true);
		
		Container con = getContentPane();
		con.setLayout(new FlowLayout(FlowLayout.LEFT,0,0));
		
		JFileChooser chooser = new JFileChooser(".");
		chooser.setFileSelectionMode( JFileChooser.DIRECTORIES_ONLY );
		if(chooser.showDialog(this,"Select Directory")!=JFileChooser.APPROVE_OPTION)System.exit(0);
		
		File[] files = chooser.getSelectedFile().listFiles(
			new FilenameFilter(){
				public boolean accept(File dir, String name) {
					String lowerName = name.toLowerCase();
					return lowerName.endsWith(".jpg") || lowerName.endsWith(".gif");
				}
			}
		);
		
		setTitle("Images From: "+chooser.getSelectedFile());
		
		addWindowListener(
			new WindowAdapter(){
				public void windowClosing(WindowEvent arg0) {
					System.exit(0);
				}
			}
		);
		
		//randomOrder(files);
		
		for (int i = 0; i < Math.min(files.length,MAX_FILES); i++) {
			//con.add(new ScalableImagePanel(files[i],MAX_DIMENSION));
			try {
                con.add(new NewThumbNail(files[i]));
            } catch (Exception exc) {
                exc.printStackTrace();
            }
		}
	}
	
	public final static void sizeByFactorAndCenter(
		Component aComponent,
		float widthFactor,
		float heightFactor,
		int widthMax,
		int heightMax
	) {
		Dimension screen_size = Toolkit.getDefaultToolkit().getScreenSize();
		int w = Math.min((int)(screen_size.width * widthFactor),widthMax);
		int h = Math.min((int)(screen_size.height * heightFactor),heightMax);
		int x = (screen_size.width - w) / 2;
		int y = (screen_size.height - h) / 2;
		aComponent.setBounds(x,y,w,h);
	}
	
	private void randomOrder(Object[] oa) {
		for (int i = 0; i < oa.length; i++)for (int j = 0; j < oa.length; j++) {
			int i1 = (int)(Math.random()*oa.length);
			int i2 = (int)(Math.random()*oa.length);
			swap(oa,i1,i2);
		}
	}
	
	private void swap(Object [] oa,int idx1,int idx2){
		Object o = oa[idx1];
		oa[idx1] = oa[idx2];
		oa[idx2] = o;
	}
	
	public static void main(String[] args) {
		new ImageGrid();
	}
	
}
