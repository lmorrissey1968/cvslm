import jp.ne.so_net.ga2.no_ji.jcom.*;

public class testJCom1 {
	public static void main(String[] args) throws Exception {
		ReleaseManager rm = new ReleaseManager();
		try {
			System.out.println("EXCEL");
			IDispatch xlApp = new IDispatch(rm, "Excel.Application");  // EXCEL–{‘Ì

			System.in.read();
			xlApp.invoke("Quit", null);

			xlApp.release();
		}
		catch(Exception e) { e.printStackTrace(); }
		finally { rm.release(); }
	}
}
