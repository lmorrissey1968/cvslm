package com.lmco.adp.gpx;

import java.io.File;
import java.io.FileFilter;
import java.util.stream.Stream;

import com.lmco.adp.utility.Counter;
import com.lmco.adp.utility.streams.LambdaExceptionWrap;

public class UtilityFNs {
	
	public static Stream<GPX> getGPXs(String[] args) {
		FileFilter FF_GPX = f->f.getName().toLowerCase().endsWith(".gpx");
		return Stream.of(args)
			.map(File::new)
			.flatMap(fi->fi.isDirectory() ? Stream.of(fi.listFiles()) : Stream.of(fi))
			.filter(FF_GPX::accept)
			.sorted()
			.map(LambdaExceptionWrap.wrapF(GPX::new))
		;
	}

	public static String toDurationString(long durMS) {
		long tS = durMS/1000;
		long tM = tS/60;
		long tH = tM/60;
		return String.format("%02d:%02d:%02d",tH,tM%60,tS%60);
	}
	
	public static class Uniquer {
		private Counter<String> uni = new Counter<>();
		
		public String getUniqueName(String base) {
			uni.add(base); int n = uni.getCount(base);
			return n>1 ? String.format("%s(%s)",base,n) : base;
		}
		
		public String getUniqueName(Track trk) { return getUniqueName(trk.getName()); }
	}
	
}
