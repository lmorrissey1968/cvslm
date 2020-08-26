package com.lmco.adp.gpx.utility;

import java.util.Arrays;
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
import com.lmco.adp.gpx.UtilityFNs;
import com.lmco.adp.utility.Counter;
import com.lmco.adp.utility.LatLon;

public class Utility_PlotElevation extends UtilityFNs {
	public static void main(String[] args) { new Utility_PlotElevation(args); }
	
	public int mTickSz = 200;
	public GPX[] mData;
	
	
	public Utility_PlotElevation(String[] args) {
		this.mTickSz = Integer.parseInt(args[0]);
		this.mData = getGPXs(Arrays.copyOfRange(args,1,args.length)).toArray(GPX[]::new);
		
		new ChartFrame<ChartComponent>(new ChartComponent("Elevation Profile Plot","Distance(Miles)","Elevation(Feet)")){{
			//Stream.of(mData)
			//	.map(new FlatGPX2XYS())
			//    .forEach(this::addSeries)
			//;
            
			Stream.of(mData)
				.map(gpx->Stream.of(gpx).flatMap(new GPX2XYS()))
				.forEach(sxy->sxy.forEach(xy->addSeries(xy)))
			;

            //Stream.of(mData)
            //	.flatMap(new GPX2XYS())
            //	.forEach(xy->addSeries(xy))
            //;
			
			setVisible(true);
			setDefaultCloseOperation(EXIT_ON_CLOSE);
			
			DoubleSummaryStatistics elevation = getTrackPoints(Stream.of(mData))
				.mapToDouble(TrackPoint::getElevationFeet)
				.summaryStatistics()
			;
			
			XYPlot plot = getChartComponent().getPlot();
			NumberAxis range = (NumberAxis)plot.getRangeAxis();
			range.setRange(
				Math.floor(elevation.getMin()/mTickSz)*mTickSz,
				Math.ceil(elevation.getMax()/mTickSz)*mTickSz
			);
			range.setTickUnit(new NumberTickUnit(mTickSz));
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
	
	public static class GPX2XYS implements Function<GPX,Stream<XYSeries>> {
		private Uniquer uni = new Uniquer();
		private double dist = 0;
		private String name = "";
		
		public Stream<XYSeries> apply(GPX gpx) {
			return 
				Stream.of(gpx.getTracks())
				.peek(trk->name = uni.getUniqueName(trk.getName()))
				.map(Track::getTrackPointStream)
				.map(tps->tps.collect(new TrackPlot(name,dist,v->dist = v)))
			;
		}
	}
	
	public static class FlatGPX2XYS implements Function<GPX,XYSeries> {
		public XYSeries apply(GPX gpx) {
			return gpx.getTrackPointStream().collect(new TrackPlot(gpx.getName(),0,v->{}));
		}
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
}
