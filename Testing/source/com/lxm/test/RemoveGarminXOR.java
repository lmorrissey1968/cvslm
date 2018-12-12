/**
 * 
 * $Header: /repository/CVSLM/Testing/source/com/lxm/test/RemoveGarminXOR.java,v 1.1 2007/06/08 14:37:31 g137997 Exp $
 * 
 * GarminXOR
 * Created on Jun 8, 2007
 *
 * © Lockheed Martin Corporation, (2007). All rights reserved
 * Lockheed Martin Proprietary Information
 * 
 */

package com.lxm.test;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class RemoveGarminXOR
{
	public static void main(String[] args) throws IOException {
		InputStream is = new FileInputStream(args[0]);
		OutputStream os = new FileOutputStream(args[1]);
		int xor = is.read();
		os.write(0);
		for(int data;(data=is.read())!=-1;)os.write(data^xor);
		is.close();
		os.close();
	}

}


/**
 * 
 * $Log: RemoveGarminXOR.java,v $
 * Revision 1.1  2007/06/08 14:37:31  g137997
 * Initial check-in.
 *
 * 
 */