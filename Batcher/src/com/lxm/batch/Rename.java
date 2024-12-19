package com.lxm.batch;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;

public class Rename {
	public static void main(String[] args) throws IOException {
		PrintStream ps = args.length>1 ? new PrintStream(new FileOutputStream(args[1])) : System.out;
		BufferedReader br = new BufferedReader(new FileReader(args[0]));
		br.lines()
			.map(File::new)
			.map(File::getParent)
			.distinct()
			//.skip(3)
			//.limit(3)
			.forEach(d->{
				ps.printf("@cd \"%s\"\n",d);
				ps.println("C:\\Users\\lmorr\\Desktop\\exiftool\\exiftool -d %%Y%%m%%d_%%H%%M%%S.MTS \"-filename<datetimeoriginal\" *.MTS");
			})
		;
		br.close();
		ps.println("@pause");
		ps.flush(); ps.close();
	}
}
