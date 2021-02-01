/**
 * 
 * UtilGPX
 * Created on Jan 30, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx;

import java.awt.geom.Line2D;
import java.awt.geom.Path2D;
import java.awt.geom.PathIterator;
import java.awt.geom.Point2D;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

import org.w3c.dom.CharacterData;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

import com.lmco.adp.utility.LatLon;

/**
 * Utilities for GPX file processing
 *
 * @author Lawrence Morrissey (g137997)
 */
public class UtilGPX {
	public static final Node getFirst(Node parent,String tag) {
		return new NodeIterator(parent).stream().filter(n->tag.equals(n.getNodeName())).findFirst().orElse(null);
	}
	
	public static final String getCDATA(Node cdn) {
		return
			cdn==null
			? ""
			: cdn instanceof CharacterData ? ((CharacterData)cdn).getData() : cdn.getTextContent()
		;
	}

	public static final double getAttributeDouble(Node n,String name) { return getAttributeDouble(n,name,0d); }
	public static final String getAttributeString(Node n,String name) { return getAttributeString(n,name,null); }
	
	public static final double getAttributeDouble(Node n,String name,double defValue) {
		String attr = getAttributeString(n,name);
		return attr==null ? defValue : Double.parseDouble(attr); 
	}

	public static final String getAttributeString(Node n,String name,String defValue) {
		if(n==null) {
			return defValue;
		} else {
			NamedNodeMap att = n.getAttributes();
			if(att==null) {
				return defValue;
			} else {
				Node item = att.getNamedItem(name);
				return item==null ? defValue : item.getNodeValue();
			}
		}
	}
	
	public final static double getMinDistanceFrom(LatLon[] points,Point2D ll) { 
		return Stream.of(points).mapToDouble(pt->ll.distance(pt)).min().getAsDouble(); 
	}
	
	public final static double getAscentFeet(LatLon[] points) {
		return IntStream.range(1,points.length)
			.mapToDouble(i->points[i].getElevationFeet()-points[i-1].getElevationFeet())
			.filter(v->v>0)
			.sum()
		;
	}
	
	public final static double getDescentFeet(LatLon[] points) {
		return IntStream.range(1,points.length)
			.mapToDouble(i->points[i-1].getElevationFeet()-points[i].getElevationFeet())
			.filter(v->v>0)
			.sum()
		;
	}
	
	public static final double getDistanceMeters(LatLon[] points) {
		return IntStream.range(1,points.length)
			.mapToDouble(i->points[i-1].getDistance(points[i]))
			.sum()
		;
	}

//**************************************************************************************
    public final static Stream<Line2D> getLinesForPath(Path2D pa) {
    	Iterable<Point2D> it = ()->getIterator(pa.getPathIterator(null));
    	return StreamSupport.stream(it.spliterator(),false)
    		.map(
    			new Function<Point2D,Line2D>() {
    				private Point2D last;
    				public Line2D apply(Point2D p) {
    					Line2D rv = last==null ? null : new Line2D.Double(last,p);
    					last = p;
    					return rv;
    				}
    			}
    		)
    		.filter(Objects::nonNull)
    	;
    }
    
    public final static Iterator<Point2D> getIterator(PathIterator pi) {
    	return new Iterator<Point2D>() {
        	private float[] co = new float[6];
			public Point2D next() {
				pi.currentSegment(co);
				Point2D p = new Point2D.Double(co[0],co[1]);
				pi.next();
				return p;
			}
			
			public boolean hasNext() {
				return !pi.isDone();
			}
		};
    }
}
