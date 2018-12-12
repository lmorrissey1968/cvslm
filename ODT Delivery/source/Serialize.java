import java.io.*;
import com.ibm.gs.ls.odt.info.*;
import com.ibm.gs.ls.odt.compiler.*;

public class Serialize
{
	public static void main(String[] args) throws Exception
	{
		long start = System.currentTimeMillis();
	
		Info root = new NavParser(new FileReader(args[0]),args[0]).getInfoRoot();

		long end = System.currentTimeMillis();

		ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(args[1]));
		oos.writeObject(root);
		oos.flush();
		oos.close();
		
		System.out.println(root);
		System.out.println(((end-start)/1000.0)+" seconds to load");
	}
}