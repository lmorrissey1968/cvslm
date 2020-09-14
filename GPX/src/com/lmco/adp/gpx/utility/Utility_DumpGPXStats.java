package com.lmco.adp.gpx.utility;

import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Comparator;
import java.util.stream.Stream;

import com.lmco.adp.gpx.GPX;
import com.lmco.adp.gpx.TrackPoint;
import com.lmco.adp.gpx.UtilityFNs;
import com.lmco.adp.utility.Constants;
import com.lmco.adp.utility.streams.LambdaExceptionWrap;

public class Utility_DumpGPXStats extends UtilityFNs {
	public static void main(String[] args) throws IOException {
		PrintStream ps = args.length<2 ? System.out : new PrintStream(new FileOutputStream(args[1]));
		ps.println("Start_Time,End_Time,Weekday,Distance(miles),Ascent(feet),Descent(feet),Duration");
		getGPXFiles(args)
			.map(LambdaExceptionWrap.wrapF(f->new Tuple<File,GPX>(f,new GPX(f))))
			.forEach(tup->{
				File ofn = tup.getV1();
				GPX gpx = tup.getV2();
				TrackPoint min = gpx.getTrackPointStream().min(Comparator.comparing(TrackPoint::getTime)).get();
				TrackPoint max = gpx.getTrackPointStream().max(Comparator.comparing(TrackPoint::getTime)).get();
				
				ps.printf(
					"%s,%s,%s,%s,%s,%s,%s\n",
					min.getTime("yyyy-MM-dd HH:mm:ss"),
					max.getTime("yyyy-MM-dd HH:mm:ss"),
					min.getTime("EEEE"),
					gpx.getTracksDistanceMeters()/Constants.metersPerStatuteMile,
					gpx.getTracksAscentFeet(),
					gpx.getTracksDescentFeet(),
					toDurationString(gpx.getTracksDurationMS())
				);
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
