/**
 * 
 * Waypoint
 * Created on Jan 30, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx;

import org.w3c.dom.Node;

import com.lmco.adp.utility.LatLon;

/**
 * Waypoint (wpt) node of a GPX file.
 *
 * @author Lawrence Morrissey (g137997)
 */ 
public class Waypoint extends LatLon {
	private String mName,mDesc;
	
	public Waypoint(Node wpt) {
		super(
			UtilGPX.getAttributeDouble(wpt,"lat"),
			UtilGPX.getAttributeDouble(wpt,"lon")
		);
    	this.mName = UtilGPX.getCDATA(UtilGPX.getFirst(wpt,"name"));
    	this.mDesc = UtilGPX.getCDATA(UtilGPX.getFirst(wpt,"desc"));
	}
	
	public String getName() { return mName; }
	public String getDescription() { return mDesc; }
}