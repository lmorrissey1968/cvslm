package com.lmco.adp.gpx.util;

import com.lmco.adp.gpx.Track;
import com.lmco.adp.utility.Counter;

public class Uniquer {
	private Counter<String> uni = new Counter<>();
	
	public String getUniqueName(String base) {
		uni.add(base); int n = uni.getCount(base);
		return n>1 ? String.format("%s(%s)",base,n) : base;
	}
	
	public String getUniqueName(Track trk) { return getUniqueName(trk.getName()); }
}