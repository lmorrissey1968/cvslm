/**
 * 
 * GPX
 * Created on Jan 30, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.stream.Stream;

import org.w3c.dom.Node;

import com.lmco.adp.utility.xml.DocumentManager;

/**
 * Top level XML node for a GPX file.
 *
 * @author Lawrence Morrissey (g137997)
 */ 
public class GPX extends UtilGPX {
	private String mName,mDesc;
	private Waypoint[] mWayPoints;
	private Track[] mTracks;
	private Route[] mRoutes;

	public GPX(File gpx) throws Exception {
		this(new FileInputStream(gpx));
	}
	
	public GPX(InputStream is) throws Exception {
		this(getFirst(new DocumentManager(false).loadPT(is),"gpx"));
	}
	
	public GPX(Node gpx) {
		Node meta = getFirst(gpx,"metadata");
		this.mName = getCDATA(getFirst(meta,"name"));
		this.mDesc = getCDATA(getFirst(meta,"desc"));
		
		this.mWayPoints = 
			new NodeIterator(gpx).stream("wpt")
			.map(Waypoint::new)
			.toArray(Waypoint[]::new)
		;
		
		this.mTracks = 
			new NodeIterator(gpx).stream("trk")
			.map(Track::new)
			.toArray(Track[]::new)
		;
		
		this.mRoutes = 
			new NodeIterator(gpx).stream("rte")
			.map(Route::new)
			.toArray(Route[]::new)
		;
	}
	
	public Track[] getTracks() { return this.mTracks; }
	public double getTracksAscentFeet() { return Stream.of(mTracks).mapToDouble(Track::getAscentFeet).sum(); }
	public double getTracksDescentFeet() { return Stream.of(mTracks).mapToDouble(Track::getDescentFeet).sum(); }
	public double getTracksDistanceMeters() { return Stream.of(mTracks).mapToDouble(Track::getDistanceMeters).sum(); }
	public long getTracksDurationMS() { return Stream.of(mTracks).mapToLong(Track::getDurationMS).sum(); }

	public Route[] getRoutes() { return this.mRoutes; }
	
	public Waypoint[] getWayPoints() { return this.mWayPoints; }

	public String getName() { return mName; }
	public String getDescription() { return mDesc; }
	
	public Stream<TrackPoint> getTrackPointStream() { return Stream.of(mTracks).flatMap(Track::getTrackPointStream); }
	public Stream<RoutePoint> getRoutePointStream() { return Stream.of(mRoutes).flatMap(Route::getRoutePointStream); }
}