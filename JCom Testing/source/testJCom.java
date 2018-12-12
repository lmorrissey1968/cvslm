import jp.ne.so_net.ga2.no_ji.jcom.*;

public class testJCom {
	public static void main(String[] args) throws Exception {
		ReleaseManager rm = new ReleaseManager();
		try {
			System.out.println("EXCEL");
			IDispatch xlApp = new IDispatch(rm, "Excel.Application");
			xlApp.put("Visible", new Boolean(true));
			IDispatch xlBooks = (IDispatch)xlApp.get("Workbooks");
			IDispatch xlBook = (IDispatch)xlBooks.method("Add",null);
			IDispatch xlSheet = (IDispatch)xlApp.get("ActiveSheet");

			Object[] arglist = new Object[1];
			arglist[0] = "A1";
			IDispatch xlRange = (IDispatch)xlSheet.get("Range",arglist);
			xlRange.put("Value","Larry was here");

			System.out.println("[Enter]");
			System.in.read();

			Object[] arglist3 = new Object[3];
			arglist3[0] = new Boolean(false);
			arglist3[1] = null;
			arglist3[2] = new Boolean(false);
			xlBook.method("Close", arglist3);
			xlApp.method("Quit", null);
			System.out.println("Japanese!");
		}
		catch(Exception e) { e.printStackTrace(); }
		finally { rm.release(); }
	}
}
