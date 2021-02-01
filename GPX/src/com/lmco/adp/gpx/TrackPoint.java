/**
 * 
 * TrackPoint
 * Created on Jan 30, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx;

import java.text.SimpleDateFormat;

import org.w3c.dom.Node;

import com.lmco.adp.utility.LatLon;

/**
 * Track Point (trkpt) node of a GPX file.
 *
 * @author Lawrence Morrissey (g137997)
 */ 
public class TrackPoint extends LatLon {
	public static final String FMT_ZULU = "yyyy-MM-dd'T'HH:mm:ssZ";
	public static final SimpleDateFormat FMT = new SimpleDateFormat(FMT_ZULU);
	public static final SimpleDateFormat OUT = new SimpleDateFormat("yyyy-MM-dd.HH:mm:ss");
	
	private long time;
	
	public TrackPoint(Node trkpt) {
		super(
			UtilGPX.getAttributeDouble(trkpt,"lat"),
			UtilGPX.getAttributeDouble(trkpt,"lon"),
			java.lang.Double.parseDouble(UtilGPX.getFirst(trkpt,"ele").getTextContent()),
			false,
			true
		);
		
		try {
			Node time = UtilGPX.getFirst(trkpt,"time");
			if(time!=null)this.time = FMT.parse(UtilGPX.getFirst(trkpt,"time").getTextContent().replaceFirst("Z","+0000")).getTime();
		} catch(Exception exc) {
			throw new RuntimeException(exc);
		}
	}
	
	public long getTime() { return this.time; }
	public String getTime(String format) { return new SimpleDateFormat(format).format(time); }
	
	public String toString() { return String.format("TrackPoint[%s %s]",super.toString(),OUT.format(time)); }
}