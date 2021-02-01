/**
 * 
 * RoutePoint
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
 * Route Point (rtept) node of a GPX file.
 *
 * @author Lawrence Morrissey (g137997)
 */ 
public class RoutePoint extends LatLon {
	public RoutePoint(Node rtept) {
		super(
			UtilGPX.getAttributeDouble(rtept,"lat"),
			UtilGPX.getAttributeDouble(rtept,"lon")
		);
	}
}