package com.lmco.adp.gpx.util;

public class Nearest<T> {
	public double dist; public T data;
	public Nearest(double dist,T data) { this.dist = dist; this.data = data; }
	public double getDistance() { return dist; }
	public T getData() { return data; }
}