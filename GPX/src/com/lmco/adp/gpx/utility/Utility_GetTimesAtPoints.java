package com.lmco.adp.gpx.utility;

import java.io.File;
import java.io.PrintStream;
import java.util.Comparator;
import java.util.Map;
import java.util.prefs.Preferences;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import com.lmco.adp.gpx.GPX;
import com.lmco.adp.gpx.TrackPoint;
import com.lmco.adp.gpx.Waypoint;
import com.lmco.adp.utility.Constants;
import com.lmco.adp.utility.streams.LambdaExceptionWrap;
import com.lmco.adp.utility.ui.GUIUtil;

public class Utility_GetTimesAtPoints {
	public static void main(String[] args) throws Exception { new Utility_GetTimesAtPoints(args); }
	
	private GPX base;
	private Map<String, Waypoint> waypoints;

	public Utility_GetTimesAtPoints(String[] args) throws Exception {
		this.base = new GPX(Utility_GetTimesAtPoints.class.getResourceAsStream("Kennesaw Mountain - Over and Over Baseline (2020-08-05).gpx"));
		this.waypoints = Stream.of(base.getWayPoints()).collect(Collectors.toMap(Waypoint::getName,w->w));

		Preferences prefs = Preferences.userNodeForPackage(Utility_GetTimesAtPoints.class);
		File out = GUIUtil.chooseFile(null,prefs,"out.file","OandB_Waypoint_Times.csv",true,"Select",".csv",null);
		if(out!=null) {
			PrintStream ps = new PrintStream(out);
			ps.printf(
				"Description,Dist(miles),Time,%s\n",
				waypoints.values()
					.stream()
					.map(Waypoint::getName)
					.flatMap(n->IntStream.rangeClosed(1,2).mapToObj(i->String.format("%s(%s)",n,i)))
					.collect(Collectors.joining(","))
			);
			Stream.of(args)
				.map(File::new)
				.map(LambdaExceptionWrap.wrapF(GPX::new))
				.forEach(gpx->processCSV(gpx,ps));
			;
		}
	}

	public void processCSV(GPX gpx,PrintStream ps) {
		long start = gpx.getTrackPointStream().limit(1).findFirst().get().getTime(); 
		TrackPoint split = getSplitPoint(gpx);
		
		ps.printf(
			"%s,%.2f,%s,%s\n",
			gpx.getTracks()[0].getName(),
			gpx.getTracksDistanceMeters()/Constants.metersPerStatuteMile,
			toDurationString(gpx.getTracksDurationMS()),

			waypoints.values()
				.stream()
				.map(wp->String.format(
					"%s,%s",
					toDurationString(getNearestPoint(getPointsBefore(gpx,split),wp).getTime()-start),
					toDurationString(getNearestPoint(getPointsAfter(gpx,split),wp).getTime()-start)
				))
				.collect(Collectors.joining(","))
		);
	}
	
	public void processFile(GPX gpx) {
		long start = gpx.getTrackPointStream().limit(1).findFirst().get().getTime(); 
		TrackPoint split = getSplitPoint(gpx);
		
		System.out.printf(
			"%-24s  %.3fm   %7.0fs\n",
			gpx.getTracks()[0].getName(),
			gpx.getTracksDistanceMeters(),
			gpx.getTracksDurationMS()/1000d
		);
		
		waypoints.values().stream().forEach(wp->{
			System.out.printf(
				"\t%-15s  %s  %s\n",
				wp.getName(),
				getNearestPoint(getPointsBefore(gpx,split),wp).getTime()-start,
				getNearestPoint(getPointsAfter(gpx,split),wp).getTime()-start
			);
		});
	}
	
	private Stream<TrackPoint> getPointsBefore(GPX gpx,TrackPoint split) {
		return gpx.getTrackPointStream().filter(tp->tp.getTime()<=split.getTime());
	}
	
	private Stream<TrackPoint> getPointsAfter(GPX gpx,TrackPoint split) {
		return gpx.getTrackPointStream().filter(tp->tp.getTime()>split.getTime());
	}
	
	private TrackPoint getNearestPoint(Stream<TrackPoint> tps,Waypoint wp) {
		return tps
			.map(tp->new Nearest<TrackPoint>(wp.distance(tp),tp))
			.min(Comparator.comparing(Nearest::getDistance))
			.map(Nearest::getData)
			.get()
		;
	}
	
	private TrackPoint getNearestPoint(GPX gpx,Waypoint wp) { return getNearestPoint(gpx.getTrackPointStream(),wp); }
	private TrackPoint getSplitPoint(GPX gpx) { return getNearestPoint(gpx,waypoints.get("VC Road")); }
	
	public static final String toDurationString(long durMS) {
		long tS = durMS/1000;
		long tM = tS/60;
		long tH = tM/60;
		return String.format("%02d:%02d:%02d",tH,tM%60,tS%60);
	}
	
	public static class Nearest<T> {
		public double dist; public T data;
		public Nearest(double dist,T data) { this.dist = dist; this.data = data; }
		public double getDistance() { return dist; }
		public T getData() { return data; }
	}
}
