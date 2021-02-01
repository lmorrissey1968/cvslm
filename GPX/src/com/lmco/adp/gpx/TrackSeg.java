/**
 * 
 * TrackSeg
 * Created on Jan 30, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx;

import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.stream.Stream;

import org.w3c.dom.Node;

import com.lmco.adp.gpx.util.NodeIterator;
import com.lmco.adp.gpx.util.UtilityFunctions;
import com.lmco.adp.utility.streams.CollectorPath2D;

/**
 * Track Segment (trkseg) node of a GPX file.
 *
 * @author Lawrence Morrissey (g137997)
 */ 
public class TrackSeg extends UtilityFunctions {
	private TrackPoint[] mTrackPoints;
	private Path2D mPath;
	private Rectangle2D mBounds;
	
	public TrackSeg(Node trkseg) {
		setTrackPoints(
			new NodeIterator(trkseg).stream("trkpt")
			.map(TrackPoint::new)
			.toArray(TrackPoint[]::new)
		);
	}
	
	public void setTrackPoints(TrackPoint[] tpa) { 
		this.mTrackPoints = tpa; 
		this.mPath = Stream.of(mTrackPoints).collect(new CollectorPath2D(false));
		this.mBounds = mPath.getBounds2D();
	}
	
	public TrackPoint[] getTrackPoints() { return mTrackPoints; }
	
	public Path2D getPath() { return mPath; }
	public Rectangle2D getBounds() { return mBounds; }
	
	public double getAscentFeet() { return getAscentFeet(mTrackPoints); }
	public double getDescentFeet() { return getDescentFeet(mTrackPoints); }
	public double getDistanceMeters() { return getDistanceMeters(mTrackPoints); }
	
	public long getTimeStart() { return mTrackPoints[0].getTime(); }
	public long getTimeEnd() { return mTrackPoints[mTrackPoints.length-1].getTime(); }
	public long getDuration() { return getTimeEnd()-getTimeStart(); }
	
	public double getMinDistanceFrom(Point2D ll) { return getMinDistanceFrom(mTrackPoints,ll); }
	
	public String toString() { 
		return String.format(
			"TrackSeg[points=%d distance=%.1fm %s to %s (%ds)]",
			mTrackPoints.length,
			getDistanceMeters(),
			TrackPoint.OUT.format(getTimeStart()),
			TrackPoint.OUT.format(getTimeEnd()),
			getDuration()/1000
		); 
	}
	
	public Stream<TrackPoint> getTrackPointStream() { return Stream.of(mTrackPoints); }
}