package com.lmco.adp.gpx.utility;

import java.io.File;
import java.io.PrintStream;
import java.util.Comparator;
import java.util.Map;
import java.util.prefs.Preferences;
import java.util.stream.Collectors;
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
	private boolean first = true;

	public Utility_GetTimesAtPoints(String[] args) throws Exception {
		Preferences prefs = Preferences.userNodeForPackage(Utility_GetTimesAtPoints.class);
		
		this.base = new GPX(Utility_GetTimesAtPoints.class.getResourceAsStream("Kennesaw Mountain - Over and Over Baseline (2020-08-05).gpx"));
		this.waypoints = Stream.of(base.getWayPoints()).collect(Collectors.toMap(Waypoint::getName,w->w));
		
		File out = GUIUtil.chooseFile(null,prefs,"out.file","OandB_Waypoint_Times.csv",true,"Select",".csv",null);
		if(out!=null) {
			PrintStream ps = new PrintStream(out);
			Stream.of(args)
				.map(File::new)
				.sorted()
				.map(LambdaExceptionWrap.wrapF(GPX::new))
				.peek(gpx->{
					if(first) {
						ps.printf(
							"Description,%s,Dist(miles),Total Time\n",
							getWaypointTimesStream(gpx).map(WaypointTime::getName).collect(Collectors.joining(","))
						);
						first=false;
					}
				})
				.forEach(gpx->{
					long start = getStartPoint(gpx).getTime();
					ps.printf(
						"%s,%s,%.2f,%s\n",
						gpx.getTracks()[0].getName(),
						getWaypointTimesStream(gpx).map(wp->toDurationString(wp.getTime()-start)).collect(Collectors.joining(",")),
						gpx.getTracksDistanceMeters()/Constants.metersPerStatuteMile,
						toDurationString(gpx.getTracksDurationMS())
					);
				})
			;
		} else {
			Stream.of(args)
				.map(File::new)
				.map(LambdaExceptionWrap.wrapF(GPX::new))
				.forEach(gpx->dumpToConsole(gpx));
			;
		}
	}
	
	public WaypointTime[] getWaypointTimes(GPX gpx) { return getWaypointTimesStream(gpx).toArray(WaypointTime[]::new); }
	
	public Stream<WaypointTime> getWaypointTimesStream(GPX gpx) {
		TrackPoint split = getSplitPoint(gpx);
		return waypoints.values()
			.stream()
			.flatMap(wp->
				Stream.of(
					new WaypointTime(wp,getNearestPoint(getPointsBefore(gpx,split),wp),"(O)"),
					new WaypointTime(wp,getNearestPoint(getPointsAfter(gpx,split),wp),"(B)")
				)
			)
			.sorted(Comparator.comparing(WaypointTime::getTime))
		;
	}

	public void dumpToConsole(GPX gpx) {
		long start = getStartPoint(gpx).getTime();
		System.out.printf(
			"%-25s  %.3fm   %s\n",
			gpx.getTracks()[0].getName(),
			gpx.getTracksDistanceMeters(),
			toDurationString(gpx.getTracksDurationMS())
		);
		
		getWaypointTimesStream(gpx).forEach(wp->System.out.printf("\t%-20s  %s\n",wp.getName(),toDurationString(wp.getTime()-start)));
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
	private TrackPoint getStartPoint(GPX gpx) { return getNearestPoint(getPointsBefore(gpx,getSplitPoint(gpx)),waypoints.get("Start/End")); }
	
	
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
	
	public static class WaypointTime {
		private Waypoint wayp;
		private TrackPoint trkp;
		private String ext;
		
		public WaypointTime(Waypoint wayp,TrackPoint trkp, String ext) { this.wayp = wayp; this.trkp = trkp; this.ext = ext; }
		public String getName() { return String.format("%s%s",wayp.getName(),ext); }
		public long getTime() { return trkp.getTime(); }
		public String toString() { return String.format("%s%s %s",wayp.getName(),ext,toDurationString(trkp.getTime())); }
	}
}
