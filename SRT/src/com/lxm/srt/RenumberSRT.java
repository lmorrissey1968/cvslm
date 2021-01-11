package com.lxm.srt;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class RenumberSRT {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(args[0]));
		PrintStream ps = args.length>1 ? new PrintStream(args[1]) : System.out;
		for (int i = 1;;i++) {
			Item item = new Item(i,br);
			if(item.isNull())break;
			ps.println(item);
		}
		br.close();
		ps.flush();ps.close();
	}
	
	public static class Item {
		public static final long[] MUL = {3_600_000,60000,1000,1};
		
		private int num;
		private long timeS,timeE;
		private String l1,l3;

		public Item(int num,BufferedReader r) throws IOException {
			this.num = num;
			this.l1 = r.readLine();
			parseTimes(r.readLine());
			this.l3 = r.readLine();
			r.readLine();
		}
		
		private void parseTimes(String line) {
			if(line==null)return;
			long[] se = Stream.of(line.split("-->")).map(String::trim).mapToLong(this::parseTime).toArray();
			this.timeS = se[0];
			this.timeE = se[1];
			//System.out.println(line+" : "+Arrays.toString(se)+" : "+getTimes());
		}
		
		public String getTime(long time) {
			long ms = time%1000;
			long tS = time/1000;
			long tM = tS/60;
			long tH = tM/60;
			return String.format("%02d:%02d:%02d,%03d",tH,tM%60,tS%60,ms);
		}
		
		public String getTimes() { return String.format("%s --> %s",getTime(timeS+3000),getTime(timeE+3000)); }

		public long parseTime(String time) {
			long[] hmsm = Stream.of(time.split("[:,]")).mapToLong(Long::parseLong).toArray();
			return IntStream.range(0,MUL.length).mapToLong(i->MUL[i]*hmsm[i]).sum();
		}
		
		private boolean isNull() { return l1==null; }
		public String toString() { return String.format("%d\n%s\n%s\n",num,getTimes(),l3); }
	}
}
