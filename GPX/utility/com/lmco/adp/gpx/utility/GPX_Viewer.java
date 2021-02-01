/**
 * 
 * GPX_Viewer
 * Modeled after ViewerFrame on February 1, 2021
 *
 */

package com.lmco.adp.gpx.utility;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.event.WindowFocusListener;
import java.awt.geom.AffineTransform;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.text.ParseException;
import java.util.Map;

import javax.swing.JDialog;
import javax.swing.JMenuBar;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;

import com.lmco.adp.utility.EnhancedProperties;
import com.lmco.adp.utility.ui.ColumnLayout;
import com.lmco.adp.utility.ui.DegreesTextField;
import com.lmco.adp.utility.ui.DoubleTextField;
import com.lmco.adp.utility.ui.GUIUtil_IM;
import com.lmco.adp.utility.ui.GUIUtil_IM.FlowContainer;
import com.lmco.adp.utility.ui.MemoryFramePrefs;
import com.lmco.adp.viewer2d.LayerEnablementState;
import com.lmco.adp.viewer2d.Viewer;
import com.lmco.adp.viewer2d.Viewer.ViewerListener_IF;
import com.lmco.adp.viewer2d.gpx.GPX_Layer;
import com.lmco.adp.viewer2d.layer.Layer;
import com.lmco.adp.viewer2d.layer.map.LatLonGrid;
import com.lmco.adp.viewer2d.layer.route.Routes;
import com.lmco.adp.viewer2d.layer.route.WayPoint;
import com.lmco.adp.viewer2d.layer.satellite.SatelliteCellLayer;
import com.lmco.adp.viewer2d.layer.shape.Boundaries;
import com.lmco.adp.viewer2d.layer.shape.data.ShapeDataConstants;
import com.lmco.adp.viewer2d.layer.shape.data.ShapeDataResource;
import com.lmco.adp.viewer2d.layer.utility.LatLonPointerPositionDisplay;
import com.lmco.adp.viewer2d.layer.utility.MGRSPointerPositionDisplay;
import com.lmco.adp.viewer2d.layer.utility.Scale;
import com.lmco.adp.viewer2d.projection.Projection_IF;
import com.lmco.adp.viewer2d.util.ProjectionTypeChooserComboBox;

/**
 * @author Lawrence Morrissey
 */
public class GPX_Viewer extends MemoryFramePrefs
{
	public static final String KEY_VIEWER_TRANSFORM = "viewer.transform";
	public static final String KEY_EYE_POSITION = "eye.position";
	
	private static final Dimension SCREEN = Toolkit.getDefaultToolkit().getScreenSize();
	private Viewer mViewer = new Viewer(GUIUtil_IM.getAspectRatioDimension(SCREEN,16,9,0.70f));
	
	private JMenuBar mMenuBar;

	private Boundaries mBoundaries;
	private GPX_Layer mGPX;
	
	public GPX_Viewer() throws NumberFormatException, IOException, ParseException, Exception
	{
		super("GPX Utility",GPX_Viewer.class,"gpx.utility");
		
		setJMenuBar(this.mMenuBar = new JMenuBar());
		setLayout(new BorderLayout());
		
		mViewer.setProjection(Projection_IF.MERCATOR);

		mMenuBar.add(mViewer.getLayerEnablementMenu("Layer Enablement"));
		
		mViewer.setBackground(Color.BLACK);
		mViewer.setLayerReorderingAllowed(true);

		//*****************************************************************************
		//* LAYERS
		//*****************************************************************************
		mViewer.addLayer(
			new SatelliteCellLayer(
				new File(System.getProperty("java.io.tmpdir")).toURI().toString(),
				true,
				null,
				null
			),
			LayerEnablementState.DISABLED
		);
		mViewer.addLayer(new LatLonGrid(getProperties()));
		mViewer.addLayer(this.mBoundaries = new Boundaries().setProperties(getProperties()));
		mBoundaries.addShapeData(ShapeDataConstants.SDR_STATES_MED_RES);
		mBoundaries.addShapeDataGroup(
			ShapeDataConstants.SDR_COUNTRY_HIGH_RES,
			new ShapeDataResource(ShapeDataConstants.SDR_COUNTRY_SHI_RES,false)
		);

		mViewer.addLayer(new Scale(),LayerEnablementState.DISABLED);
		mViewer.addLayer(this.mGPX = new GPX_Layer(getProperties()));
		
		addWindowFocusListener(
			new WindowFocusListener(){
				public void windowGainedFocus(WindowEvent e) { repaint(); }
				public void windowLostFocus(WindowEvent e) { repaint(); }
			}
		);

		addWindowListener(
			new WindowAdapter() {
				public void windowClosing(WindowEvent e) {
					mViewer.saveProperties();
					System.exit(0); 
				}
			}
		);
		
		mViewer.addViewerListener(
			new ViewerListener_IF() {
				public void notifyTransformChanged(AffineTransform transform,AffineTransform inverse) {
					getProperties().setProperty(KEY_VIEWER_TRANSFORM,mViewer.getViewerTransformDataAsString());
				}
				
				public void notifyEyePositionChanged(Map<String, String> eyePositions) {
					getEnhancedProperties().setMap(KEY_EYE_POSITION,eyePositions);
				}
			}
		);

		add(
			new FlowContainer(FlowLayout.LEFT,0,0).addItems(
				mViewer.getStackedToolbar(),
				mGPX.getStatus()
			),
        	BorderLayout.NORTH
        );

		add(mViewer,BorderLayout.CENTER);
		
		add(
			new FlowContainer(FlowLayout.CENTER,0,0).addItems(
				new LatLonPointerPositionDisplay(mViewer),
				new MGRSPointerPositionDisplay(mViewer,5),
				new ProjectionTypeChooserComboBox(mViewer),
				mViewer.getStandardDisplayCluster()
			),
			BorderLayout.SOUTH
		);

		getEnhancedProperties().loadMap(KEY_EYE_POSITION,mViewer.getEyePositionMap());

		SwingUtilities.invokeLater(
			new Runnable() {
				public void run() {
					String transform = getProperties().getProperty(KEY_VIEWER_TRANSFORM);
					if(transform==null) {
						mViewer.optimizeZoom();
					} else {
						mViewer.setViewerTransformDataFromString(transform);
					}
					mViewer.setProperties(getProperties(),"ViewerFrame",true);
					
					//mViewer.setPanMode();
				}
			}
		);

		setVisible(true);
	}
	
	public EnhancedProperties getEnhancedProperties() { return new EnhancedProperties(getProperties()); }
	
	public void addLayer(Layer aLayer) {
		mViewer.addLayer(aLayer);
	}
	
	public static class WayPointConfigurationPanel extends JPanel 
	{
		private Routes mRouteLayer;
		private DegreesTextField mLat;
		private DegreesTextField mLon;
		private DoubleTextField mEle;

		public WayPointConfigurationPanel(Routes aRouteLayer)
		{
			this.mRouteLayer = aRouteLayer;
			setLayout(new ColumnLayout(2));
			ColumnLayout.addLabeledRow(this,"Latitude",this.mLat = DegreesTextField.getLatitudeTextField());
			ColumnLayout.addLabeledRow(this,"Longitude",this.mLon = DegreesTextField.getLongitudeTextField());
			ColumnLayout.addLabeledRow(this,"Elevation",this.mEle = new DoubleTextField(false));
		}
		
		public WayPointConfigurationPanel(Routes aRouteLayer,WayPoint aPoint) 
		{
			this(aRouteLayer);
			mLat.setValue(aPoint.getPointLatitude());
			mLon.setValue(aPoint.getPointLongitude());
			mEle.setValue(aPoint.getPointElevation());
		}

		public void copyInto(WayPoint aPoint) {
			mRouteLayer.setPointLocationAndElevation(
				aPoint,
				mLon.getValuePrimitive(),
				mLat.getValuePrimitive(),
				mEle.getValuePrimitive()
			);
		}
	}
	
	public static void main(String[] args) throws Exception {
		new GPX_Viewer();
//		PrintStream output = new PrintStream(new ErrorView());
//		System.setOut(output);
//		System.setErr(output);
	}
	
	static class ErrorView extends OutputStream
	{
		JTextArea mMessages;
		
		private void init() {
			JDialog errorDialog = new JDialog();
			errorDialog.setTitle("ERROR");
			errorDialog.getContentPane().setLayout(new BorderLayout());
			errorDialog.getContentPane().add(new JScrollPane(this.mMessages = new JTextArea(20,100)),BorderLayout.CENTER);
			this.mMessages.setFont(new Font("Courier",Font.BOLD,14));
			this.mMessages.setForeground(Color.CYAN);
			this.mMessages.setBackground(Color.BLACK);
			errorDialog.pack();
			errorDialog.setLocationRelativeTo(null);
			errorDialog.addWindowListener(
				new WindowAdapter(){
					public void windowClosing(WindowEvent e) {
						System.exit(0);
					}
				}
			);
			errorDialog.setVisible(true);
		}
		
		/*** @see java.io.OutputStream#write(int) */
		public void write(int b) throws IOException {
			if(this.mMessages==null)init();
			this.mMessages.append(String.valueOf((char)b));
		}
	}
}