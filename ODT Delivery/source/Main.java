import com.ibm.gs.ls.odt.info.*;

import java.io.*;

public class Main
{
	public static void main(String args[]) throws Exception
	{
		long start = System.currentTimeMillis();
		
		ObjectInputStream ois = new ObjectInputStream(new FileInputStream(args[1]));
		Info root = (Info)ois.readObject();
		ois.close();
		
		long end = System.currentTimeMillis();

		System.out.println(root);
		System.out.println(((end-start)/1000.0)+" seconds to load");
	}
}