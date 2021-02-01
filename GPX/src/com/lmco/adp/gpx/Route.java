/**
 * 
 * Route
 * Created on Jan 30, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx;

import java.awt.geom.Path2D;
import java.awt.geom.Rectangle2D;
import java.util.stream.Stream;

import org.w3c.dom.Node;

import com.lmco.adp.utility.streams.CollectorPath2D;

/**
 * Route (rte) node of a GPX file.
 *
 * @author Lawrence Morrissey (g137997)
 */ 
public class Route extends UtilGPX {
	private String mName,mDesc;
	private RoutePoint[] mRoutePoints;
	private Path2D mPath;
	private Rectangle2D mBounds;
	
	public Route(Node rte) {
    	this.mName = getCDATA(getFirst(rte,"name"));
    	this.mDesc = getCDATA(getFirst(rte,"desc"));
    	this.mRoutePoints = 
    		new NodeIterator(rte).stream("rtept")
    		.map(RoutePoint::new)
    		.toArray(RoutePoint[]::new)
    	;

		this.mPath = Stream.of(mRoutePoints).collect(new CollectorPath2D(false));
		this.mBounds = mPath.getBounds2D();
	}
	
	public String getName() { return mName; }
	public RoutePoint[] getRoutePoints() { return mRoutePoints; }
	public Path2D getPath() { return mPath; }
	public Rectangle2D getBounds() { return mBounds; }
	
	public double getAscentFeet() { return getAscentFeet(mRoutePoints); }
	public double getDescentFeet() { return getDescentFeet(mRoutePoints); }
	public double getDistanceMeters() { return getDistanceMeters(mRoutePoints); }
	
	public Stream<RoutePoint> getRoutePointStream() { return Stream.of(mRoutePoints); }
}