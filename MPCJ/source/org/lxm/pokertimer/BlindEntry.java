/**
 * 
 * $Header: /repository/CVSLM/MPCJ/source/org/lxm/pokertimer/BlindEntry.java,v 1.1 2007/08/16 17:41:07 g137997 Exp $
 * 
 * BlindEntry
 * Created on Aug 16, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package org.lxm.pokertimer;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class BlindEntry
{
	private int mTime;
	private String mLittle;
	private String mBig;
	
	public static final List<BlindEntry> readBlindSchedule(URL blindFile) throws IOException {
		List<BlindEntry> blinds = new ArrayList<BlindEntry>();
		BufferedReader br = new BufferedReader(new InputStreamReader(blindFile.openStream()));
		for(String line;(line=br.readLine())!=null;) {
			blinds.add(new BlindEntry(line.trim()));
		}
		return blinds;
	}

	
	public BlindEntry(String line)
	{
		String[] data = line.split("\\s");
		this.mTime = (int)(Float.parseFloat(data[0])*60);
		this.mLittle = MultiTimer.MONEY.format(Float.parseFloat(data[1]));
		this.mBig = MultiTimer.MONEY.format(Float.parseFloat(data[2]));
	}
	
	/*** @see java.lang.Object#toString() */
	public String toString() {
		return
			mLittle+"/"+mBig
		;
			
	}

	public String getBig() {
		return this.mBig;
	}

	public String getLittle() {
		return this.mLittle;
	}

	public int getTime() {
		return this.mTime;
	}
}

/**
 * 
 * $Log: BlindEntry.java,v $
 * Revision 1.1  2007/08/16 17:41:07  g137997
 * Re-organization.
 * Work in progress on new timer version.
 *
 * 
 */