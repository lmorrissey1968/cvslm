/**
 * 
 * NodeIterator
 * Created on Jan 30, 2020
 *
 * © Lockheed Martin Corporation, (2020). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lmco.adp.gpx;

import java.util.Iterator;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Iterates Nodes from an org.w3c.dom processed XML file. 
 *
 * @author Lawrence Morrissey (g137997)
 */ 
public final class NodeIterator implements Iterator<Node>,Iterable<Node> {
	private NodeList mList;
	private int mIdx = 0;
	
	public NodeIterator(NodeList list) { this.mList = list; }
	public NodeIterator(Node parent) { this(parent.getChildNodes()); }
	public Iterator<Node> iterator() { return this; }
	public boolean hasNext() { return mIdx<mList.getLength(); }
	public Node next() { return mList.item(mIdx++); }
	public void remove() { mIdx++; }
	
	public Stream<Node> stream() { return StreamSupport.stream(spliterator(),false); }
	public Stream<Node> stream(boolean parallel) { return StreamSupport.stream(spliterator(),parallel); }
	
	public Stream<Node> stream(String tag) { return stream().filter(n->n.getNodeName().equals(tag)); }
	public Stream<Node> stream(boolean parallel,String tag) { return stream(parallel).filter(n->n.getNodeName().equals(tag)); }
	
	public static Stream<Node> getStream(Node parent) { return new NodeIterator(parent).stream(); }
	public static Stream<Node> getStream(Node parent,String tag) { return new NodeIterator(parent).stream(tag); }
}