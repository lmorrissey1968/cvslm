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

import com.lmco.adp.gpx.util.UtilityFunctions;
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
			UtilityFunctions.getAttributeDouble(wpt,"lat"),
			UtilityFunctions.getAttributeDouble(wpt,"lon")
		);
    	this.mName = UtilityFunctions.getCDATA(UtilityFunctions.getFirst(wpt,"name"));
    	this.mDesc = UtilityFunctions.getCDATA(UtilityFunctions.getFirst(wpt,"desc"));
	}
	
	public String getName() { return mName; }
	public String getDescription() { return mDesc; }
}