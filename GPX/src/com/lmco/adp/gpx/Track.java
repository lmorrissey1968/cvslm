/**
 * 
 * Track
 * Created on Jan 30, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx;

import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.w3c.dom.Node;

import com.lmco.adp.gpx.util.NodeIterator;
import com.lmco.adp.gpx.util.UtilityFunctions;

/**
 * Track (trk) node of a GPX file.
 *
 * @author Lawrence Morrissey (g137997)
 */ 
public class Track extends UtilityFunctions {
	private String mName;
	private TrackSeg[] mTrackSegs;
	
	public Track(Track[] tracks) {
		this.mName = Stream.of(tracks).map(Track::getName).collect(Collectors.joining(" / "));
    	this.mTrackSegs = Stream.of(tracks).flatMap(t->Stream.of(t.getTrackSegs())).toArray(TrackSeg[]::new);
	}
	
	public Track(Node trk) {
    	this.mName = getFirst(trk,"name").getTextContent();
    	this.mTrackSegs = 
    		new NodeIterator(trk).stream("trkseg")
			.map(TrackSeg::new)
			.toArray(TrackSeg[]::new)
		;
	}
	
	public String getName() { return mName; }
	public TrackSeg[] getTrackSegs() { return this.mTrackSegs; }
	
	public double getAscentFeet() { return Stream.of(mTrackSegs).mapToDouble(TrackSeg::getAscentFeet).sum(); }
	public double getDescentFeet() { return Stream.of(mTrackSegs).mapToDouble(TrackSeg::getDescentFeet).sum(); }
	public double getDistanceMeters() { return Stream.of(mTrackSegs).mapToDouble(TrackSeg::getDistanceMeters).sum(); }
	public long getDurationMS() { return Stream.of(mTrackSegs).mapToLong(TrackSeg::getDuration).sum(); }
	
	public String toString() { return String.format("Track[\"%s\", segments=%d, distance=%.1fm]",mName,mTrackSegs.length,getDistanceMeters()); }
	
	public String toStringExp() { 
		return 
			Stream.concat(
				Stream.of(toString()),
				Stream.of(mTrackSegs).map(String::valueOf).map(s->String.format("  %s",s))
			)
			.collect(Collectors.joining("\n"))
		;
	}
	
	public Stream<TrackPoint> getTrackPointStream() { return Stream.of(mTrackSegs).flatMap(TrackSeg::getTrackPointStream); }
}