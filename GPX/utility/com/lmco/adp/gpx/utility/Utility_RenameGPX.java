package com.lmco.adp.gpx.utility;

import java.io.File;
import java.io.FileFilter;
import java.util.Comparator;
import java.util.stream.Stream;

import com.lmco.adp.gpx.GPX;
import com.lmco.adp.gpx.TrackPoint;
import com.lmco.adp.gpx.util.Tuple;
import com.lmco.adp.gpx.util.UtilityFunctions;
import com.lmco.adp.utility.Constants;
import com.lmco.adp.utility.LatLon;
import com.lmco.adp.utility.streams.LambdaExceptionWrap;

public class Utility_RenameGPX extends UtilityFunctions {
	public static final LatLon KM = new LatLon(33.963548,-84.593588);
	
	public static void main(String[] args) {
		getGPXFiles(args)
			.map(LambdaExceptionWrap.wrapF(f->new Tuple<File,GPX>(f,new GPX(f))))
			.forEach(tup->{
				File ofn = tup.getV1();
				GPX gpx = tup.getV2();
				double dbh = gpx.getTrackPointStream().mapToDouble(KM::getDistance).min().getAsDouble()/Constants.metersPerStatuteMile;
				TrackPoint max = gpx.getTrackPointStream().max(Comparator.comparing(TrackPoint::getTime)).get();
				String ts = max.getTime("yyyyMMdd_HHmmss_EEE");
				double asc = gpx.getTracksAscentFeet();
				double dis = gpx.getTracksDistanceMeters()/Constants.metersPerStatuteMile;
				
				//File nfn = new File(ofn.getParentFile(),String.format("(%05.0f)Route_%s_%02.0f_%04.0f.gpx",dbh*10,ts,dis,asc));
				File nfn = new File(ofn.getParentFile(),String.format("Route_%s_%02.0f_%04.0f.gpx",ts,dis,asc));
				ofn.setLastModified(max.getTime());
				if(ofn.renameTo(nfn))System.out.printf("%s ==> %s\n",ofn,nfn.getName());
			})
		;
	}
	
	public static Stream<File> getGPXFiles(String[] args) {
		FileFilter FF_GPX = f->f.getName().toLowerCase().endsWith(".gpx");
		return Stream.of(args)
			.map(File::new)
			.flatMap(fi->fi.isDirectory() ? Stream.of(fi.listFiles()) : Stream.of(fi))
			.filter(FF_GPX::accept)
			.sorted()
		;
	}
}
