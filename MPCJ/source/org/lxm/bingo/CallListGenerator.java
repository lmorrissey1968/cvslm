/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/bingo/CallListGenerator.java,v 1.1 2006/02/13 22:14:08 g137997 Exp $
 * 
 * CallList
 * Created on Nov 16, 2005
 *
 * © Lockheed Martin Corporation, (2005). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.bingo;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;


public class CallListGenerator
{
	private String[] mCallList;
	private String mWord;
	
	
	public CallListGenerator() {
		
	}
	
	public CallListGenerator(String aWord)
	{
		this.mWord = aWord;
		int len = mWord.length();
		this.mCallList = new String[len*15];
		for(int let = 0;let < len;let++)for(int num = 0;num < 15;num++) {
			mCallList[let*15+num] = String.valueOf(aWord.charAt(let))+((let*15)+num+1);
		}
		for(int i = 0;i < mCallList.length*10;i++)randomSwap(mCallList);
	}
	
	public String[] getCallList() {
		return this.mCallList;
	}

	private static final void randomSwap(Object[] oa) {
		swap(oa,(int)(Math.random()*oa.length),(int)(Math.random()*oa.length));
	}
	
	private static final void swap(Object[] oa,int idx1,int idx2) {
		Object temp = oa[idx1];
		oa[idx1] = oa[idx2];
		oa[idx2] = temp;
	}
	
	public static CallListGenerator getFromFile(String aFileName) throws IOException {
		CallListGenerator clg = new CallListGenerator();
		clg.readFile(aFileName);
		return clg;
	}

	
	public void readFile(String aFileName) throws IOException {
		DataInputStream dis = new DataInputStream(new FileInputStream(aFileName));
		this.mWord = dis.readUTF();
		this.mCallList = new String[dis.readInt()];
		for(int i = 0;i < mCallList.length;i++)mCallList[i] = dis.readUTF();
		dis.close();
	}
	
	public void writeFile(String aFileName) throws IOException {
		DataOutputStream dos = new DataOutputStream(new FileOutputStream(aFileName));
		dos.writeUTF(mWord);
		dos.writeInt(mCallList.length);
		for(int i = 0;i < mCallList.length;i++)dos.writeUTF(mCallList[i]);
		dos.close();
	}

	public String getWord() {
		return this.mWord;
	}
	
	public static void main(String[] args) throws IOException {
		if(args.length>1) {
			int num = args.length>2 ? Integer.parseInt(args[2]) : 1;
			for(int i = 0;i < num;i++)new CallListGenerator(args[1]).writeFile(args[0]+"_"+i+".bing");
		}
	}


}


/**
 * 
 * $Log: CallListGenerator.java,v $
 * Revision 1.1  2006/02/13 22:14:08  g137997
 * Re-packaged most stuff.
 * Added SODOKU solver.
 *
 * Revision 1.1  2005/12/14 21:22:46  g137997
 * Added game call manager.
 *
 * Revision 1.1  2005/11/16 22:39:38  g137997
 * Initial check-in.
 *
 * 
 */