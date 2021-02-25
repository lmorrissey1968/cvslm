package com.lxm.fs;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import com.lmco.adp.utility.StringUtil;

public class Utility_RenameFiles {

	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(args[0]));
		br.lines()
			.skip(1)
			.map(StringUtil::parseCSV)
			.map(sa->new String[]{ sa[0],sa[1],sa[2],StringUtil.toFileSafeString(sa[4].replace("/"," - ")) })
			.filter(sa->!sa[0].isEmpty())
			.forEach(sa->{
				String nns = String.format(
					"Happy Days S%02dE%02d - %s.avi",
					Integer.parseInt(sa[1]),
					Integer.parseInt(sa[2]),
					sa[3].replace("_","").trim()
				);
				File on = new File(sa[0]);
				File nn = new File(on.getParentFile().getParentFile(),nns);
				
				System.out.println(on+" ==> "+nn+" : "+on.renameTo(nn));
			})
		;
		br.close();

	}

}
