/**
 * 
 * $Header: /repository_rw/CVS/Viewer2D\040UNIT\040TEST/source/com/lmco/adp/viewer2d/ViewerFrame.java,v 1.19 2017/10/25 18:36:10 g137997 Exp $
 * 
 * ViewerFrame
 * Created on May 14, 2004
 *
 * © Lockheed Martin Corporation, (2004). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.utility;

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
 * This class is a test driver from the Layer Manager and Layers.
 * 
 * @author Lawrence Morrissey
 * @version $Revision: 1.19 $
 */
public class GPX_Utility extends MemoryFramePrefs
{
	public static final String KEY_VIEWER_TRANSFORM = "viewer.transform";
	public static final String KEY_EYE_POSITION = "eye.position";
	
	private static final Dimension SCREEN = Toolkit.getDefaultToolkit().getScreenSize();
	private Viewer mViewer = new Viewer(
		GUIUtil_IM.getAspectRatioDimension(SCREEN,16,9,0.70f)
	);
	
	private JMenuBar mMenuBar;

	private Boundaries mBoundaries;
	
	public GPX_Utility() throws NumberFormatException, IOException, ParseException, Exception
	{
		super("GPX Utility",GPX_Utility.class,"gpx.utility");
		
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
		mViewer.addLayer(new GPX_Layer(System.getenv("gpx.dir")));
		
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
				mViewer.getStackedToolbar()
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
		new GPX_Utility();
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


/**
 * 
 * $Log: ViewerFrame.java,v $
 * Revision 1.19  2017/10/25 18:36:10  g137997
 * Removed references.
 *
 * Revision 1.18  2017/07/12 13:42:31  g137997
 * Added CADRG back to sample.
 *
 * Revision 1.17  2016/06/23 13:03:28  g137997
 * *** empty log message ***
 *
 * Revision 1.16  2016/05/11 12:04:42  g137997
 * Re-factoring in the LINK-16 modules.
 *
 * Revision 1.15  2016/05/09 20:13:42  g137997
 * Moved common stuff to Communication module.
 *
 * Revision 1.14  2015/08/17 18:51:51  g137997
 * Added test code for setPanMode().
 *
 * Revision 1.13  2015/03/30 20:07:33  g137997
 * Removed use of saveIfDefaultsUsed() mechanism in AutoPersistProperties in SatelliteLayerWrapper.
 *
 * Revision 1.12  2015/03/10 20:19:28  g137997
 * Disabled CADRG dependency.
 *
 * Revision 1.11  2015/02/27 00:22:58  g137997
 * Added PathTest layer.
 *
 * Revision 1.10  2015/02/21 00:46:15  g137997
 * Added properties to LatLonGrid constructor call.
 *
 * Revision 1.9  2015/02/20 22:53:21  g137997
 * Added test for BoilerPlateLayer.
 *
 * Revision 1.8  2015/02/18 21:25:09  g137997
 * Added properties to Link16Jam constructor.
 *
 * Revision 1.7  2015/02/18 02:53:45  g137997
 * Added LINK16 for development purposes.
 *
 * Revision 1.6  2015/02/17 21:35:58  g137997
 * Changed key.
 *
 * Revision 1.5  2015/02/17 21:23:49  g137997
 * Added use of Viewer properties.
 *
 * Revision 1.4  2015/01/21 02:24:11  g137997
 * Added new test layer.
 *
 * Revision 1.3  2015/01/20 20:43:03  g137997
 * Work in progress.
 *
 * Revision 1.2  2015/01/05 20:47:19  g137997
 * Lowered precision and resolution of Lat Lon points.
 *
 * Revision 1.1  2014/10/31 15:45:17  g137997
 * *** empty log message ***
 *
 * Revision 1.145  2014/08/05 14:04:31  g137997
 * Removed getKeyState...() method requirements in LayerManager interface and changed to using original developers preferred way of persisting transform state data. This being done in preparation for similar mechanism for eye position persistence.
 *
 * Revision 1.144  2014/08/05 13:38:35  g137997
 * Added unit test code for "Eye Position" persistence.
 *
 * Revision 1.143  2014/06/23 16:59:20  g137997
 * Re-configured ShapeDataConstants and added ShapeDataResource.
 *
 * Revision 1.142  2014/03/04 14:21:13  g137997
 * Added test code.
 *
 * Revision 1.141  2014/03/04 13:51:20  g137997
 * *** empty log message ***
 *
 * Revision 1.140  2013/09/19 16:03:55  g137997
 * Changed back to "normal" regions layer.
 *
 * Revision 1.139  2013/05/08 16:50:40  g137997
 * Changed to use 1-off of Regions.
 *
 * Revision 1.138  2013/03/28 23:59:41  g137997
 * Disabled old toolbar in demo.
 *
 * Revision 1.137  2013/03/28 23:53:47  g137997
 * Re-ordered code.
 *
 * Revision 1.136  2013/03/28 22:27:40  g137997
 * Changed order of code in constructor.
 *
 * Revision 1.135  2013/02/07 17:58:07  g137997
 * Modified unit test code.
 *
 * Revision 1.134  2013/02/04 16:11:19  g137997
 * Created 1-off of Regions layer to create cross range by down range lists of numbers for use in SAR Feasibility. Don't worry Bob, I didn't mess anything up this time.
 *
 * Revision 1.133  2012/04/24 22:49:04  g137997
 * Added example useage of ShapeGrabberLayer.
 *
 * Revision 1.132  2011/08/02 14:43:29  g137997
 * Added "Manager" compliant save/load menu logic to Regions.
 *
 * Revision 1.131  2011/07/20 17:20:44  g596060
 * Handle new exception thrown by lat/lon layer.
 *
 * Revision 1.130  2011/07/15 16:01:55  g137997
 * Moved persistence below loading of data.
 *
 * Revision 1.129  2011/07/15 15:44:17  g137997
 * Added call to utilize persistence in Boundaries layer.
 *
 * Revision 1.128  2011/07/12 19:19:31  g137997
 * Added unit test code (left it disabled).
 *
 * Revision 1.127  2011/07/12 12:11:30  g137997
 * Added re-ordering to Boundaries.
 *
 * Revision 1.126  2011/07/11 22:50:58  g137997
 * Enabled fill on Boundaries layer in unit test module.
 *
 * Revision 1.125  2011/07/07 18:04:39  g137997
 * Testing new Boundaries layer.
 *
 * Revision 1.124  2011/07/06 22:31:42  g137997
 * Added test for new layer.
 *
 * Revision 1.123  2011/01/27 18:34:28  g137997
 * Added call to use Layer reordering.
 *
 * Revision 1.122  2011/01/25 22:46:41  g137997
 * Added test for LayerOrderManager.
 *
 * Revision 1.121  2011/01/13 21:07:22  g137997
 * Added ViewerMonitor excercise code.
 *
 * Revision 1.120  2011/01/13 15:24:01  g137997
 * Organized test code.
 *
 * Revision 1.119  2010/11/17 21:58:59  g137997
 * Ditched concept of ViewerMonitor.
 *
 * Revision 1.118  2010/11/17 21:44:53  g137997
 * In process of adding ViewerMonitor.
 *
 * Revision 1.117  2010/10/14 18:58:38  g596060
 * Now pass props to lat/lon measurement layer.
 *
 * Revision 1.116  2010/07/13 21:45:33  g137997
 * Disabled Google Earth layer.
 *
 * Revision 1.115  2010/03/26 14:54:11  g137997
 * Modified to use the now required number of digits for easting and northing to the MGRS display.
 *
 * Revision 1.114  2010/03/25 19:29:52  g137997
 * Unit test code mods.
 *
 * Revision 1.113  2010/03/16 18:01:56  g137997
 * Added UTM display.
 *
 * Revision 1.112  2009/08/20 17:36:25  g137997
 * Enabled Zone Grid.
 *
 * Revision 1.111  2009/04/01 16:17:41  g137997
 * Disabled ViewerMagnifier test code.
 *
 * Revision 1.110  2009/03/30 20:22:52  g137997
 * Initial check-in.
 *
 * Revision 1.109  2009/03/24 18:53:38  g137997
 * Added unit test code to exercise SubViewer.
 *
 * Revision 1.108  2009/03/19 19:32:58  g137997
 * Added code to test the saving and restoring of the viewer transform settings.
 *
 * Revision 1.107  2009/03/19 19:06:06  g137997
 * Added test code.
 *
 * Revision 1.106  2009/03/10 14:52:03  g137997
 * Added test code to cause a delay. Left it disabled.
 *
 * Revision 1.105  2009/03/05 21:47:45  g137997
 * Added test for SubViewer.
 *
 * Revision 1.104  2008/12/11 19:22:15  g137997
 * Removed un-necessary import.
 *
 * Revision 1.103  2008/11/18 19:19:25  g137997
 * Removed file dependency from Regions layer test.
 *
 * Revision 1.102  2008/10/10 16:27:55  g137997
 * Disabled OLD CADRG layer.
 *
 * Revision 1.101  2008/10/06 14:38:02  g137997
 * Disabled CADRG2 layer.
 *
 * Revision 1.100  2008/10/02 20:04:08  g137997
 * Modifed to use MemoryFrame.
 *
 * Revision 1.99  2008/10/01 21:03:59  g137997
 * Added all CADRG related layers.
 *
 * Revision 1.98  2008/09/30 19:27:33  g137997
 * Changed to CADRG3 in test module.
 *
 * Revision 1.97  2008/06/23 22:07:09  g137997
 * Added test for Scale layer.
 *
 * Revision 1.96  2008/06/02 17:07:38  g137997
 * Modified the Regions layers load methods.
 *
 * Revision 1.95  2008/04/01 14:30:25  g137997
 * Disabled CADRG
 *
 * Revision 1.94  2008/03/20 15:24:37  g137997
 * Enhanced unit-test code to give George and example.
 *
 * Revision 1.93  2008/03/17 17:11:27  g137997
 * Added unit-test code for setCenterOffset(...) and zoomClick(...) methods.
 *
 * Revision 1.92  2007/11/05 21:39:14  g137997
 * Enabled CADRG2 for testing.
 *
 * Revision 1.91  2007/10/30 19:33:44  g137997
 * Added disabled CADRG2.
 *
 * Revision 1.90  2007/10/26 19:19:37  g137997
 * Set some layers to default to disbaled.
 *
 * Revision 1.89  2007/10/02 15:02:38  g137997
 * Completed SAR map examples.
 *
 * Revision 1.88  2007/09/25 20:07:33  g137997
 * Added SAR layer.
 *
 * Revision 1.87  2007/09/24 21:00:50  g137997
 * Added test for ZoneGrid.
 *
 * Revision 1.86  2007/08/15 13:01:28  g137997
 * Merged SystemsConfigurator_IF into SystemsModel_IF.
 *
 * Revision 1.85  2007/08/15 12:50:26  g137997
 * Classes were renamed.
 *
 * Revision 1.84  2007/08/14 20:31:37  g137997
 * Removed TODO comment.
 *
 * Revision 1.83  2007/08/07 16:00:29  g137997
 * Changed methodology used to size the screen.
 *
 * Revision 1.82  2007/08/07 13:30:46  g137997
 * Changed the layout to accomodate smaller screens.
 *
 * Revision 1.81  2007/07/16 20:29:16  g137997
 * Re-ordered layers in test.
 *
 * Revision 1.80  2007/07/02 13:31:14  g137997
 * Added KML layer to test viewer.
 *
 * Revision 1.79  2007/05/25 19:47:56  g137997
 * Changed test code.
 *
 * Revision 1.78  2007/05/16 18:23:17  g137997
 * Changed hard wired location of region file.
 *
 * Revision 1.77  2007/05/15 22:47:25  g137997
 * Moved ProjectionTypeChooserComboBox to a standalone utility class.
 *
 * Revision 1.76  2007/05/15 22:15:56  g137997
 * Added an image icon (skunk).
 *
 * Revision 1.75  2007/05/10 19:03:30  g137997
 * Added format changer for Lat/Lon display.
 *
 * Revision 1.74  2007/05/02 19:34:15  g137997
 * Disabled MapBackground layer.
 *
 * Revision 1.73  2007/04/16 18:45:36  g137997
 * Removed CADRG from menubar.
 *
 * Revision 1.72  2007/04/02 17:21:20  g137997
 * Added MapBackground to unit test.
 *
 * Revision 1.71  2007/03/30 16:26:56  g137997
 * Added unit test code.
 *
 * Revision 1.70  2007/03/22 19:33:26  g137997
 * Region related classes renamed.
 *
 * Revision 1.69  2007/03/21 22:03:43  g137997
 * Added both Region and RegionEdit for debugging.
 *
 * Revision 1.68  2007/03/20 21:23:04  g137997
 * Added unit test for RegionEdit layer.
 *
 * Revision 1.67  2007/03/12 20:41:32  g137997
 * Added test code for changes to Routes.
 *
 * Revision 1.66  2007/03/06 23:20:58  g137997
 * Test code for custom built toolbars.
 *
 * Revision 1.65  2007/03/06 23:13:48  g137997
 * Made the Viewer tools more flexible for those not wanting the canned tools.
 * Hopefully this won't tick anybody off too much.
 *
 * Revision 1.64  2007/03/05 17:47:07  g137997
 * Added trinary layer enablement.
 *
 * Revision 1.63  2007/03/01 21:59:04  g137997
 * In the process of removing measurment tools from standard Viewer.
 *
 * Revision 1.62  2007/03/01 18:10:36  g137997
 * (Hopefully) fixed the LatLonGrid.
 *
 * Revision 1.61  2007/03/01 14:43:45  g137997
 * Changed to use UniversalLatLonGrid.
 *
 * Revision 1.60  2007/02/15 21:21:13  g137997
 * Extracted LatLonPointerPositionDisplay to standalone class.
 *
 * Revision 1.59  2007/02/15 20:27:11  g137997
 * Added unit-test for adding CADRG files before adding to LayerManager.
 *
 * Revision 1.58  2007/02/14 20:16:42  g137997
 * Enhanced projection sub-api.
 *
 * Revision 1.57  2007/02/14 19:45:47  g137997
 * Enhanced projection sub-api.
 *
 * Revision 1.56  2007/02/12 22:12:07  g137997
 * Added a way to change the projection.
 *
 * Revision 1.55  2007/02/12 20:40:56  g137997
 * Enabled test for chanign of projection.
 *
 * Revision 1.54  2007/02/12 19:20:33  g137997
 * Renmaed values in ProjectionType enumeration.
 *
 * Revision 1.53  2007/02/12 17:25:32  g137997
 * Modified to use new enum type ProjectionType.
 *
 * Revision 1.52  2007/02/12 16:31:30  g137997
 * Made ShapeFile layer Mercator capable.
 *
 * Revision 1.51  2007/02/12 13:28:35  g596060
 * Due to class renamed for making lat/lon lines.
 *
 * Revision 1.50  2007/02/08 21:11:35  g137997
 * Added alpha value to alpha call.
 *
 * Revision 1.49  2007/02/08 19:56:28  g137997
 * Added Color arg to Alpha test call.
 *
 * Revision 1.48  2007/02/07 21:38:54  g137997
 * Added example for Bob.
 *
 * Revision 1.47  2007/02/06 17:38:42  g137997
 * Added Tests for:
 * 	Alpha
 * 	Region
 *
 * Revision 1.46  2007/01/31 15:18:45  g137997
 * Disabled measurement listener (for Dan Stienberger demo).
 *
 * Revision 1.45  2007/01/17 21:38:41  g137997
 * Added sample use of measurement tool.
 *
 * Revision 1.44  2006/12/20 22:56:05  g137997
 * Added SatelliteLayer for compositing test.
 * Will not be checking in Viewer since I don't want to check in somthing that does not work correctly yet.
 *
 * Revision 1.43  2006/12/18 19:39:44  g137997
 * Disabled do-nothing layer.
 *
 * Revision 1.42  2006/12/08 15:51:38  g137997
 * Added new experimental code.
 *
 * Revision 1.41  2006/11/01 15:50:02  g137997
 * Disabled code that loads CADRG maps at startup.
 *
 * Revision 1.40  2006/10/26 21:00:12  g137997
 * Removed display cluster as part of default toolbar.
 *
 * Revision 1.39  2006/10/25 21:10:56  g137997
 * Modified setPointLocation() method and added setPointLocationAndElevation().
 *
 * Revision 1.38  2006/10/25 14:50:10  g137997
 * Fixed NummPointerException when loading maps at init.
 *
 * Revision 1.37  2006/10/24 21:02:42  g137997
 * Added start directory for CADRG maps.
 *
 * Revision 1.36  2006/10/12 21:08:57  g137997
 * Disabled old Coverage layer and enabled new CADRG layer.
 *
 * Revision 1.35  2006/10/05 20:47:08  g137997
 * Added logic to support route changed notification.
 *
 * Revision 1.34  2006/10/05 14:57:41  g137997
 * Added disabled DTED layer.
 *
 * Revision 1.33  2006/10/03 18:42:06  g137997
 * Split STATE and COUNTRY shape layers.
 *
 * Revision 1.32  2006/10/02 19:09:26  g137997
 * Made a default 99% overload of optimizeZoom().
 *
 * Revision 1.31  2006/09/28 20:13:19  g137997
 * Disabled System layer.
 *
 * Revision 1.30  2006/09/28 16:15:33  g137997
 * Added call to optimize zoom.
 *
 * Revision 1.29  2006/09/27 18:44:17  g137997
 * Re-enabled System layer.
 *
 * Revision 1.28  2006/09/26 11:50:23  g137997
 * New unit test code.
 *
 * Revision 1.27  2006/09/21 12:53:07  g137997
 * Swapped NORTH and SOUTH toolbars.
 *
 * Revision 1.26  2006/09/19 19:26:36  g137997
 * Merged VariableGrid into LatLonGrid.
 *
 * Revision 1.25  2006/09/15 17:55:04  g137997
 * Disabled 10 degree grid in favor of new variable grid.
 *
 * Revision 1.24  2006/09/14 21:52:39  g137997
 * Changed size of frame during initialization to be respective to a % of screen size.
 *
 * Revision 1.23  2006/09/14 17:42:09  g137997
 * Added mouse pointer location display.
 *
 * Revision 1.22  2006/09/13 21:26:07  g137997
 * Re-ordered layers.
 *
 * Revision 1.21  2006/09/12 20:57:44  g137997
 * Added (disabled) unit test code for zoom/offset getters and setters.
 *
 * Revision 1.20  2006/09/07 20:03:54  g137997
 * Re-enabled U.S. state borders.
 *
 * Revision 1.19  2006/09/05 21:27:52  g137997
 * Disabled some older unit-test code.
 *
 * Revision 1.18  2006/08/10 21:19:43  g137997
 * Added test call to new CADRG Coverage layer.
 *
 * Revision 1.17  2006/05/25 19:19:09  g137997
 * Re-ordered layers for testing.
 *
 * Revision 1.16  2006/05/25 14:03:46  g137997
 * Added DoNothing test layer.
 *
 * Revision 1.15  2006/05/25 13:41:52  g137997
 * Enabled MapBackground.
 *
 * Revision 1.14  2006/04/10 19:52:11  g137997
 * Added DEBUG lines.
 *
 * Revision 1.13  2006/03/06 20:32:12  g137997
 * Removed obsolete code.
 *
 * Revision 1.12  2006/02/27 22:53:36  g137997
 * Turned ROTATE back on for unit test.
 *
 * Revision 1.11  2006/02/22 15:18:58  g137997
 * Removed obsolete constructor overloads.
 * Added needed tool button enable/disable constructor overload.
 *
 * Revision 1.10  2006/01/12 20:35:10  g137997
 * Enhancements.
 *
 * Revision 1.9  2006/01/10 17:03:56  g137997
 * Made initial size bigger.
 *
 * Revision 1.8  2006/01/06 19:19:39  g137997
 * Added unit test code to exercise changes to Routes layer.
 *
 * Revision 1.7  2006/01/05 21:42:51  g137997
 * Enabled Systems layer.
 *
 * Revision 1.6  2005/10/13 18:10:49  g137997
 * Changed to use multiple shape files.
 *
 * Revision 1.5  2005/10/12 17:18:03  g137997
 * Added new argument to ShapeFile layer.
 *
 * Revision 1.4  2005/10/12 15:38:06  g137997
 * Enhanced shape layer.
 *
 * Revision 1.3  2005/10/11 17:11:22  g137997
 * Changed transform listener interface.
 *
 * Revision 1.2  2005/10/11 11:45:28  g137997
 * Renamed LLGrid to LatLonGrid.
 *
 * Revision 1.1  2005/10/11 10:53:50  g137997
 * Re-organized/re-named planner project into Viewer2D.
 *
 * Revision 1.49  2005/10/05 17:36:35  g137997
 * Unit test country outlines.
 *
 * Revision 1.48  2005/09/12 16:01:38  g137997
 * Added unit test for LLGrid layer.
 *
 * Revision 1.47  2005/08/25 17:16:21  g137997
 * Re-thought parts of the API a little.
 *
 * Revision 1.46  2005/08/23 16:42:33  g137997
 * Removed dependancy on OSA.
 *
 * Revision 1.45  2005/07/18 17:05:21  g137997
 * Moved more common stuff to common project.
 *
 * Revision 1.44  2005/05/25 10:20:36  g596060
 * Mods due to changing package name for OSA comm, entities, media, etc.,
 * classes and resources.
 *
 * Revision 1.43  2005/05/24 17:22:30  g596060
 * Mods due to changing package name for OSA utility classes.
 * Also, organized imports.
 *
 * Revision 1.42  2005/02/14 20:34:03  g137997
 * More re-organization.
 * Started new point sub-API.
 *
 * Revision 1.41  2005/02/14 12:55:15  g137997
 * Signifigantly re-organized the planner API for pending upgrades.
 *
 * Revision 1.40  2005/01/19 19:31:16  g137997
 * Commented (disabled) image layer sample.
 *
 * Revision 1.39  2005/01/11 18:00:32  g137997
 * Renamed SystemPointConfigurator_IF to SystemsConfigurator_IF.
 * Added setLinkProperties() and setPointProperties() methods.
 *
 * Revision 1.38  2005/01/07 21:15:20  g137997
 * Renamed SystemPointModel_IF to SystemsModel_IF.
 *
 * Revision 1.37  2005/01/06 15:51:53  g137997
 * Added better demonstration code.
 *
 * Revision 1.36  2005/01/05 20:42:51  g137997
 * Added new types to selector.
 *
 * Revision 1.35  2005/01/04 20:24:37  g137997
 * Modified SystemsModel_IF a bit.
 *
 * Revision 1.34  2004/09/09 15:11:01  g137997
 * Re-worked a buch of stuff.
 *
 * Revision 1.33  2004/09/07 20:50:10  g137997
 * Added SystemsModel_IF so that data provider can define/adapt itself as the connection structure.
 *
 * Revision 1.32  2004/09/07 16:32:15  g137997
 * Moved route related stuff into planner.route package.
 * Moved system related stuff into planner.system package.
 *
 * Revision 1.31  2004/09/01 13:33:35  g137997
 * Changed unit test data.
 *
 * Revision 1.30  2004/08/26 13:26:56  g137997
 * Added new system icons.
 *
 * Revision 1.29  2004/08/24 16:35:37  g137997
 * Mods to UNIT TEST code.
 *
 * Revision 1.28  2004/08/24 11:36:51  g137997
 * Added WayPointConfigurator_IF concept.
 * In process of adding a waypoint configuration dialog.
 *
 * Revision 1.27  2004/08/23 13:40:39  g137997
 * Re-organized buttons into groupings (i.e. Mouse Mode and Other Tools).
 *
 * Revision 1.26  2004/08/20 19:14:52  g137997
 * Unit Test modified.
 *
 * Revision 1.25  2004/08/18 19:09:05  g137997
 * Unit Test Mods.
 *
 * Revision 1.24  2004/08/18 12:47:49  g137997
 * Added unit test code for OBJLayer.
 *
 * Revision 1.23  2004/08/05 20:32:26  g137997
 * Changed unit test code.
 *
 * Revision 1.22  2004/08/03 20:48:27  g137997
 * Renamed TypeChoiceProvider_IF to SystemsConfigurator_IF.
 *
 * Revision 1.21  2004/07/08 16:32:17  g137997
 * Added sample SystemsConfigurator_IF implementor.
 *
 * Revision 1.20  2004/07/06 22:05:10  g137997
 * Renamed WayPoints class to Routes.
 *
 * Revision 1.19  2004/07/01 15:30:28  g137997
 * re-ordered unit test code.
 *
 * Revision 1.18  2004/06/30 19:43:06  g137997
 * Added Systems class unit test.
 *
 * Revision 1.17  2004/06/23 20:04:39  g137997
 * Changed unit test code.
 *
 * Revision 1.16  2004/06/22 19:44:40  g137997
 * Created a more generic point loading mechanism.
 *
 * Revision 1.15  2004/06/22 11:14:37  g137997
 * WORK IN PROGRESS
 *
 * Revision 1.14  2004/06/21 19:27:39  g137997
 * Changed unit test code.
 *
 * Revision 1.13  2004/06/21 18:48:08  g137997
 * Added a WindowFocusListener to force a repaint on the entire frame when focus is
 * lost or gained.
 *
 * Revision 1.12  2004/06/17 16:02:27  g137997
 * Changed unit-test code.
 *
 * Revision 1.11  2004/06/14 20:56:23  g137997
 * Added UNIT TEST code.
 *
 * Revision 1.10  2004/06/14 12:35:31  g137997
 * Changed to reflect dependancy changes.
 *
 * Revision 1.9  2004/06/10 13:51:34  g137997
 * Added popup dialog for System.err.
 *
 * Revision 1.8  2004/06/08 12:16:43  g137997
 * UNIT TEST: Waypoint loader.
 *
 * Revision 1.7  2004/06/03 14:18:11  g137997
 * Added toolbar logic.
 *
 * Revision 1.6  2004/05/26 20:56:28  g137997
 * Changed UNIT-TEST conditions.
 *
 * Revision 1.5  2004/05/25 20:09:12  g137997
 * Made more efficient MapBackground class.
 *
 * Revision 1.4  2004/05/20 20:20:06  g137997
 * Work In Progress.
 *
 * Revision 1.3  2004/05/18 20:35:50  g137997
 * Added unit test code for OBJLayer.
 *
 * Revision 1.2  2004/05/17 20:41:30  g137997
 * Added addition layer (image) for unit testing.
 *
 * Revision 1.1  2004/05/14 21:02:51  g137997
 * Broke PointConfigurator out into smaller more managable and organized classes.
 *
 * 
 */