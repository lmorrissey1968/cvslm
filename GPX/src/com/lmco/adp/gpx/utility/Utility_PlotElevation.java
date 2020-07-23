package com.lmco.adp.gpx.utility;

import java.io.File;
import java.io.FileInputStream;
import java.util.Collections;
import java.util.DoubleSummaryStatistics;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;
import java.util.stream.Stream;

import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.axis.NumberTickUnit;
import org.jfree.chart.plot.XYPlot;
import org.jfree.data.xy.XYSeries;

import com.lmco.adp.chart.ChartComponent;
import com.lmco.adp.chart.ChartFrame;
import com.lmco.adp.gpx.GPX;
import com.lmco.adp.gpx.Track;
import com.lmco.adp.gpx.TrackPoint;
import com.lmco.adp.gpx.TrackSeg;
import com.lmco.adp.utility.LatLon;
import com.lmco.adp.utility.streams.LambdaExceptionWrap;

public class Utility_PlotElevation {
	public static final int TICKS = 200;
	public static GPX[] data;
	
	public static void main(String[] args) {
		data = 
			getFiles(args)
			.peek(System.out::println)
	    	.map(LambdaExceptionWrap.wrapF(FileInputStream::new))
	    	.map(LambdaExceptionWrap.wrapF(GPX::new))
	    	.toArray(GPX[]::new)
	    ;
		
		new ChartFrame(new ChartComponent("Elevation Profile Plot","Distance(Miles)","Elevation(Feet)")){{
			Stream.of(data)
				.map(gpx->getTrackElevationPlot(gpx))
	        	.forEach(xy->addSeries(xy))
        	;
			setVisible(true);
			setDefaultCloseOperation(EXIT_ON_CLOSE);
			
			DoubleSummaryStatistics elevation = getTrackPoints(Stream.of(data))
				.mapToDouble(TrackPoint::getElevationFeet)
				.summaryStatistics()
			;
			
			XYPlot plot = getChartComponent().getPlot();
			NumberAxis range = (NumberAxis)plot.getRangeAxis();
			range.setRange(
				Math.floor(elevation.getMin()/TICKS)*TICKS,
				Math.ceil(elevation.getMax()/TICKS)*TICKS
			);
			range.setTickUnit(new NumberTickUnit(TICKS));
		}};
	}
	
	public static Stream<TrackPoint> getTrackPoints(Stream<GPX> gpx) {
		return gpx
			.map(GPX::getTracks).flatMap(Stream::of)
			.map(Track::getTrackSegs).flatMap(Stream::of)
			.map(TrackSeg::getTrackPoints).flatMap(Stream::of)
		;
	}
	
	public static Stream<TrackPoint> getTrackPoints(GPX gpx) {
		return Stream.of(gpx.getTracks())
			.map(Track::getTrackSegs).flatMap(Stream::of)
			.map(TrackSeg::getTrackPoints).flatMap(Stream::of)
		;
	}

	private static double accumDist = 0;
	
	public static XYSeries getTrackElevationPlot(GPX gpx) {
		return getTrackPoints(gpx).collect(new TrackPlot(gpx.getName(),accumDist,v->accumDist = v));
	}
	
	public static class TrackPlot implements Collector<TrackPoint,XYSeries,XYSeries> {
		private Comparable key;
		private double tDist;
		private DoubleConsumer dc;

		public TrackPlot(Comparable key,double startDist,DoubleConsumer dc) { 
			this.key = key;
			this.tDist = startDist;
			this.dc = dc;
		}
		
		public double getDistance() { return this.tDist; }
		
		public Set<Characteristics> characteristics() { return Collections.EMPTY_SET; }
		public Supplier<XYSeries> supplier() { return ()->new XYSeries(key); }
		public BinaryOperator<XYSeries> combiner() { return (a,b)->a; }
		
		public Function<XYSeries, XYSeries> finisher() {
			dc.accept(tDist);
			return s->s; 
		}

		public BiConsumer<XYSeries, TrackPoint> accumulator() {
			return new BiConsumer<XYSeries,TrackPoint>() {
				private LatLon last;
				
				public void accept(XYSeries s,TrackPoint l) {
					tDist += last==null ? 0 : last.getDistance(l)*0.000621371;
					last = l;
					s.add(tDist,l.getElevationFeet());
				}
			};
		}
	}

	public static final Stream<File> getFiles(String[] args) {
		return 
			args.length>0
			? Stream.of(args).map(File::new)
			: Stream.of(new File(".").listFiles())
		;
	}
}
