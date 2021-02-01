/**
 * 
 * GPX
 * Created on Jan 29, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.viewer2d.gpx;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.geom.AffineTransform;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.Properties;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import javax.swing.JComponent;
import javax.swing.JTextArea;
import javax.swing.JToggleButton;

import com.lmco.adp.gpx.GPX;
import com.lmco.adp.gpx.Route;
import com.lmco.adp.gpx.Track;
import com.lmco.adp.gpx.TrackPoint;
import com.lmco.adp.gpx.TrackSeg;
import com.lmco.adp.gpx.util.Nearest;
import com.lmco.adp.gpx.util.UtilityFunctions;
import com.lmco.adp.utility.EnhancedProperties;
import com.lmco.adp.utility.graphics.strokes.ShapeStroke;
import com.lmco.adp.utility.streams.CollectorPath2D;
import com.lmco.adp.utility.streams.LambdaExceptionWrap;
import com.lmco.adp.utility.ui.GUIUtil_IM;
import com.lmco.adp.utility.ui.LUtilities.LMenuItem;
import com.lmco.adp.utility.ui.LUtilities.LPopupMenu;
import com.lmco.adp.viewer2d.layer.LayerManager;
import com.lmco.adp.viewer2d.layer.MouseActiveLayer;
import com.lmco.adp.viewer2d.layer.Stackable_IF;
import com.lmco.adp.viewer2d.mousehandler.TransformedMouseInputAdapter;
import com.lmco.adp.viewer2d.mousehandler.TransformedMouseInputListener_IF;
import com.lmco.adp.viewer2d.projection.ProjectionListener_IF;
import com.lmco.adp.viewer2d.projection.Projection_IF;

/**
 * Layer for visualizing GPX files.
 *
 * @author Lawrence Morrissey (g137997)
 */
public class GPX_Layer extends UtilityFunctions implements MouseActiveLayer,ProjectionListener_IF,Stackable_IF {
	public static final Stroke ARROW_STROKE = new ShapeStroke(15,getArrow(5));
	
	private LayerManager mManager;
	private AffineTransform mTransform;
	private AffineTransform mInverseTransform; 
	private Rectangle mViewerBounds; 
	private Shape mWorldBounds;
	private Projection_IF mProjection;
	
	private GPX mGPX;

	private EnhancedProperties mProps;

	//public GPX_Layer(String path) {
	//	if(path!=null)load(Stream.of(new File(path).listFiles((f,n)->n.endsWith(".gpx"))));
	//}
	//
	//public GPX_Layer(String path,String...names) {
	//	if(path!=null)load(Stream.of(names).map(name->new File(path,name)));
	//}
	
	public GPX_Layer(Properties props) {
		setProperties(props);
	}
	
	public GPX_Layer setProperties(Properties props) {
		this.mProps = new EnhancedProperties(props);
		return this;
	}
	
	public ActionListener getLowerButtonLeftClickAction() {
		return e->{
			new LPopupMenu(
				new LMenuItem("Load GPX...",ee->chooseFile(LambdaExceptionWrap.wrapC(f->load(f))))
			).show(e);
		}; 
	}
	
	public void setLayerManager(LayerManager aManager) { this.mManager = aManager; }
	public void setProjection(Projection_IF aProjection) { this.mProjection = aProjection; }
	public void setEnabled(boolean aEnabled) {}
	public JComponent[] getAdditionalToolbarComponents() { return null; }
	public String getDescription() { return "GPX Viewer"; }
	public String getPropertyKey() { return "gpx.viewer"; }

	public void setTransforms(AffineTransform aTransform, AffineTransform aInverseTransform, Rectangle aViewerBounds, Shape aWorldBounds) {
		this.mTransform = aTransform;
		this.mInverseTransform = aInverseTransform;
		this.mViewerBounds = aViewerBounds;
		this.mWorldBounds = aWorldBounds;
	}

	public void drawLayer(Graphics2D g) {
		if(mGPX!=null){
	        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING,RenderingHints.VALUE_ANTIALIAS_ON);
			drawRoutes(g);
			drawTracks(g);
			drawWayPoints(g);
	        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING,RenderingHints.VALUE_ANTIALIAS_OFF);
	        
            //System.out.println("----------");
            //dumpStats();
		}
	}
	
	private void drawWayPoints(Graphics2D g) {
        g.setPaint(Color.BLUE);
        Stream.of(mGPX)
			.flatMap(gpx->Stream.of(gpx.getWayPoints()))
        	.map(this::pAndT)
        	.map(p->new Ellipse2D.Double(){{ setFrameFromCenter(p.getX(),p.getY(),p.getX()+6,p.getY()+6); }})
        	.forEach(g::fill)
		;
	}
	
	private void drawTracks(Graphics2D g) {
		g.setPaint(Color.RED);
        g.setStroke(ARROW_STROKE);
        
        Stream.of(mGPX)
			.flatMap(gpx->Stream.of(gpx.getTracks()))
        	.map(Track::getTrackSegs)
        	.flatMap(Stream::of)
        	.peek(ts->g.setColor(ts==mMouseOverTS?Color.YELLOW:Color.RED))
        	.map(TrackSeg::getPath)
        	.filter(this::intersects)
        	.map(this::pAndT)
        	.peek(g::draw)
        	.count()
		;
	}
	
	private void drawRoutes(Graphics2D g) {
        g.setPaint(Color.GREEN);
        g.setStroke(ARROW_STROKE);
        Stream.of(mGPX)
			.flatMap(gpx->Stream.of(gpx.getRoutes()))
        	.map(Route::getPath)
        	.filter(this::intersects)
        	.map(this::pAndT)
        	.forEach(g::draw)
		;
	}

	public Rectangle2D getLayerBounds() {
		return 
			mGPX==null
			? 
			null
			: 
			Stream.of(mGPX)
			.flatMap(gpx->
        		Stream.concat(
        	        Stream.of(gpx.getTracks())
        	    	.map(Track::getTrackSegs)
        	    	.flatMap(Stream::of)
        			.map(TrackSeg::getBounds)
        			.map(mProjection::project)
        			,
        	        Stream.of(gpx.getRoutes())
            		.map(Route::getBounds)
        			.map(mProjection::project)
        		)
			)
			.collect(new BoundsUnion())
    	;
	}

	private boolean intersects(Shape s) { return mWorldBounds.intersects(mProjection.project(s.getBounds())); }

	private Path2D pAndT(Path2D p) { return mProjection.projectAndTransform(mTransform,p,new Path2D.Double()); }
	private Point2D pAndT(Point2D p) { return mProjection.projectAndTransform(mTransform,p,new Point2D.Double()); }
	
	private Path2D project(Path2D p) { return mProjection.project(p); }
	private Point2D project(Point2D p) { return mProjection.project(p); }
	private Rectangle2D project(Rectangle2D r) { return mProjection.project(r); }
	

	private void load(File gpx) throws Exception {
		mGPX = new GPX(gpx);
		repaintMe();
	}

	//private void load(Stream<File> files) {
	//	files.map(LambdaExceptionWrap.wrapF(GPX::new)).forEach(mGPXs::add);
	//	repaintMe();
	//	//dumpStats();
	//}
	
	public static final class BoundsUnion implements Collector<Shape,Rectangle2D,Rectangle2D> {
		public Set<Characteristics> characteristics() { return Collections.EMPTY_SET; }
		public Supplier<Rectangle2D> supplier() { return Rectangle2D.Double::new; }
		public BinaryOperator<Rectangle2D> combiner() { return (r1,r2)->{ r1.add(r2); return r1; }; }
		public Function<Rectangle2D,Rectangle2D> finisher() { return p->p; }
		public BiConsumer<Rectangle2D,Shape> accumulator() {
			return new BiConsumer<Rectangle2D,Shape>() {
				private boolean first = true;
				public void accept(Rectangle2D r,Shape s) {
					if(first){
						first = false;
						r.setFrame(s.getBounds2D());
					} else {
						r.add(s.getBounds2D());
					}
				}
			};
		}
	}
	
	public static final Shape getArrow(double r) {
		double l = (Math.sqrt(3)/2)*r;
		double s = r/2;
		Path2D p = new Path2D.Double();
		p.moveTo(r,0); // 0
		p.lineTo(-s,l); // 1
        p.lineTo(-s,l/3); // 2
        p.lineTo(-r*1.2,l/3); // 3
        p.lineTo(-r*1.2,-l/3); //4
        p.lineTo(-s,-l/3); // 5
		p.lineTo(-s,-l); // 6
		p.lineTo(r,0); // 0
		p.closePath();
		return p;
	}
	
	public static final Shape getStar(double r) {
	    return IntStream.range(0,6)
	    	.mapToDouble(i->i/5d)
	    	.map(i->(i*4*Math.PI)%(Math.PI*2))
	    	.mapToObj(a->new Point2D.Double(Math.cos(a)*r,Math.sin(a)*r))
	    	.collect(new CollectorPath2D(true))
	    ;
	}

	private TrackSeg mMouseOverTS;
	private TrackPoint mMouseOverTP;
	
	private JTextArea mStatus = new JTextArea(2,60);
	public JTextArea getStatus() { return mStatus; }
	
	
	public TransformedMouseInputListener_IF getMouseListener() {
		return new TransformedMouseInputAdapter(){
			public void mouseMoved(MouseEvent e, Point2D p, double elevation) {
				mProjection.unProject(p,p);

				mMouseOverTP = getNearestTrackPoint(p,50);
				if(mMouseOverTP!=null) {
					mStatus.setText(
						String.format("%s",mMouseOverTP.toString())
					);
				} else {
					mStatus.setText("");
				}
				
				mMouseOverTS = getNearestTrackSeg(p,10);
				//if(mMouseOverTS!=null) {
				//	System.out.printf(
				//		"DISTANCE:%6.2fmi    GAIN:%7.1f'   LOSS:%7.1f'   DURATION:%6ds\n",
				//		mMouseOverTS.getDistanceMeters()*0.000621371d,
				//		mMouseOverTS.getAscentFeet(),
				//		mMouseOverTS.getDescentFeet(),
				//		mMouseOverTS.getDuration()/1000
				//	);
				//}
				repaintMe();
			}
			
			public void mousePressed(MouseEvent e, Point2D p, double elevation) {
				if(mMouseOverTP!=null){
					Stream.of(mGPX.getTracks()).forEach(t->{
						System.out.println("TRACK: "+t.getName());
						Stream.of(t.getTrackSegs()).forEach(ts->{
							System.out.println("\tTRACKSEG: "+ts.getDistanceMeters());
							System.out.println("\t\t"+ts.getTrackPoints().length);
						});
					});
					
					mGPX.getTracks()[0].getTrackSegs()[0].setTrackPoints(
						mGPX.getTrackPointStream()
						.filter(tp->tp.getTime()<=mMouseOverTP.getTime())
						.toArray(TrackPoint[]::new)
					);
					repaintMe();
				}
			}
		};
	}

	private void repaintMe() { mManager.repaint(this); }
	
	public JToggleButton getToolbarToggleButton() { return new JToggleButton("GPX"); }
	public JComponent[] getNonStackableTools() { return null; }
	
	public ActionListener getLowerButtonRightClickAction() { return e->{}; }

    public static class TSD {
    	private TrackSeg mSeg;
    	private double mDis;
    	public TSD(TrackSeg seg, double dis) { this.mSeg = seg; this.mDis = dis; }
    	public TrackSeg getTS() { return this.mSeg; }
    	public double getDistance() { return this.mDis; }
    	public String toString() { return String.format("%s",mDis); }
    }

    public TrackPoint getNearestTrackPoint(Point2D p) {
		return mGPX.getTrackPointStream()
			.map(tp->new Nearest<TrackPoint>(tp.distance(p),tp))
    		.min(Comparator.comparing(Nearest::getDistance))
    		.map(Nearest::getData)
    		.orElse(null)
		;
    }
    
    public TrackPoint getNearestTrackPoint(Point2D p,double max) {
		double pix = max/mManager.getScale();
		return mGPX.getTrackPointStream()
			.map(tp->new Nearest<TrackPoint>(tp.distance(p),tp))
    		.filter(n->n.getDistance()<pix)
    		.min(Comparator.comparing(Nearest::getDistance))
    		.map(Nearest::getData)
    		.orElse(null)
		;
    }
    
	public TrackSeg getNearestTrackSeg(Point2D p,double max) {
		double pix = max/mManager.getScale();
		return 
			Stream.of(mGPX)
			.flatMap(g->Stream.of(g.getTracks()))
			.flatMap(t->Stream.of(t.getTrackSegs()))
    		.map(tsd->new TSD(tsd,tsd.getMinDistanceFrom(p)))
    		.filter(tsd->tsd.getDistance()<pix)
    		.min(Comparator.comparing(TSD::getDistance))
    		.map(TSD::getTS)
    		.orElse(null)
		;
	}

	public static final String KEY_LAST_GPX_DIR = "gpx.last.load.dir";
	
	private void chooseFile(Consumer<File> cf) {
		if(mProps==null) {
			File f = GUIUtil_IM.chooseFile(mManager.getDialogParent(),new File("."));
			if(f!=null){
				cf.accept(f);
			}
		} else {
			File f = GUIUtil_IM.chooseFile(mManager.getDialogParent(),mProps.getFile(KEY_LAST_GPX_DIR,"."));
			if(f!=null){
				mProps.setFile(KEY_LAST_GPX_DIR,f.getParentFile());
				cf.accept(f);
			}
		}
	}
	
	
    //public void dumpStats() {
    //	Stream.of(mGPXs)
    //	.filter(
    //		gpx->
    //            Stream.of(gpx.getTracks())
    //        	.map(Track::getTrackSegs)
    //        	.flatMap(Stream::of)
    //        	.map(TrackSeg::getTrackPoints)
    //        	.mapToInt(x->x.length)
    //        	.sum()>0
    //	)
    //	.forEach(gpx->{
    //		System.out.printf(
    //			"%-35s   DISTANCE:%6.2fmi    GAIN:%7.1f'   LOSS:%7.1f'   DURATION:%6ds\n"
    //			,
    //			Stream.of(gpx.getTracks()).findFirst().get().getName()
    //			,
    //        	gpx.getTracksDistanceMeters()*0.000621371d
    //        	,
    //        	gpx.getTracksAscentFeet()
    //        	,
    //        	gpx.getTracksDescentFeet()
    //        	,
    //        	gpx.getTracksDurationMS()/1000
    //		);
    //	});
    //}

	//public void dumpStats2() {
    //	Stream.of(mGPXs).forEach(gpx->{
    //		System.out.printf(
    //			"%s: TP:%d RP:%d WP:%d\n"
    //			,
    //			gpx.getName()
    //			,
    //	        Stream.of(gpx.getTracks())
    //        	.map(Track::getTrackSegs)
    //        	.flatMap(Stream::of)
    //        	.map(TrackSeg::getTrackPoints)
    //        	.mapToInt(x->x.length)
    //        	.sum()
    //        	,
    //	        Stream.of(gpx.getRoutes())
    //	        .map(Route::getRoutePoints)
    //        	.mapToInt(x->x.length)
    //        	.sum()
    //        	,
    //        	gpx.getWayPoints().length
    //		);
    //	});
    //}
}
