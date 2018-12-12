import jp.ne.so_net.ga2.no_ji.jcom.IDispatch;
import jp.ne.so_net.ga2.no_ji.jcom.IEnumVARIANT;
import jp.ne.so_net.ga2.no_ji.jcom.ReleaseManager;
import jp.ne.so_net.ga2.no_ji.jcom.excel8.ExcelApplication;
import jp.ne.so_net.ga2.no_ji.jcom.excel8.ExcelWorkbook;
import jp.ne.so_net.ga2.no_ji.jcom.excel8.ExcelWorkbooks;
import jp.ne.so_net.ga2.no_ji.jcom.excel8.ExcelWorksheet;
import jp.ne.so_net.ga2.no_ji.jcom.excel8.ExcelWorksheets;

class testEnum {

	public static void main(String[] args) throws Exception {
		ReleaseManager rm = new ReleaseManager();
		try {
			System.out.println("EXCEL");

			ExcelApplication excel = new ExcelApplication(rm);
			excel.Visible(true);

			ExcelWorkbooks xlBooks = excel.Workbooks();
			ExcelWorkbook xlBook = xlBooks.Add();
			ExcelWorksheets xlSheets = xlBook.Worksheets();


			IEnumVARIANT enumeration = xlSheets.NewEnum();
			for(;;) {
				IDispatch disp = (IDispatch)enumeration.next();
				if(disp==null) break;
				ExcelWorksheet xlSheet = new ExcelWorksheet(disp);
				System.out.println(""+xlSheet.Name());
			}

			enumeration.reset();
			Object[] ary = enumeration.next(100);
			for(int i=0; i<ary.length; i++) {
				ExcelWorksheet xlSheet = new ExcelWorksheet((IDispatch)ary[i]);
				System.out.println(""+xlSheet.Name());
			}

			System.in.read();

			xlBook.Close(false,null,false);
			excel.Quit();
		}
		catch(Exception e) { e.printStackTrace(); }
		finally { rm.release(); }
	}
}
