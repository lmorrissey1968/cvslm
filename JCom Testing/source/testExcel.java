import jp.ne.so_net.ga2.no_ji.jcom.excel8.*;
import jp.ne.so_net.ga2.no_ji.jcom.*;
import java.io.File;
import java.util.Date;

/* Excel */
class testExcel {
	public static void main(String[] args) throws Exception {
		ReleaseManager rm = new ReleaseManager();
		try {
			System.out.println("EXCEL");

			ExcelApplication excel = new ExcelApplication(rm);
			excel.Visible(true);

			System.out.println("Version="+excel.Version());
			System.out.println("UserName="+excel.UserName());
			System.out.println("Caption="+excel.Caption());
			System.out.println("Value="+excel.Value());

			ExcelWorkbooks xlBooks = excel.Workbooks();
			ExcelWorkbook xlBook = xlBooks.Add();
			

			System.out.println("???");
			ExcelWorksheets xlSheets = xlBook.Worksheets();
			ExcelWorksheet xlSheet = xlSheets.Item(1);
			ExcelRange xlRange = xlSheet.Cells();

			xlRange.Item(1,1).Value("Larry" );
			xlRange.Item(1,2).Value("was" );
			xlRange.Item(1,3).Value("here");
			xlRange.Item(1,4).Value("And");
			xlRange.Item(1,5).Value("also");
			xlRange.Item(1,6).Value("here");
			xlRange.Item(1,7).Value("as");
			xlRange.Item(1,8).Value("well");

			File path = new File("./");
			String[] filenames = path.list();
			for(int i=0; i<filenames.length; i++) {
				File file = new File(filenames[i]);
				System.out.println(file);
				xlRange.Item(i+2,1).Value( file.getName() );
				xlRange.Item(i+2,2).Value( (int)file.length() );
				xlRange.Item(i+2,3).Value( new Date(file.lastModified()) );
				xlRange.Item(i+2,4).Value( file.isDirectory()?"Yes":"No" );
				xlRange.Item(i+2,5).Value( file.isFile()?"Yes":"No" );
				xlRange.Item(i+2,6).Value( file.canRead()?"Yes":"No" );
				xlRange.Item(i+2,7).Value( file.canWrite()?"Yes":"No" );
				xlRange.Item(i+2,8).Value( file.isHidden()?"Yes":"No" );
			}
			String expression = "=Sum(B2:B"+(filenames.length+1)+")";
			System.out.println("12"+expression);
			xlRange.Item(filenames.length+2,1).Value("xxx");
			xlRange.Item(filenames.length+2,2).Formula(expression);
			xlRange.Columns().AutoFit();


//			System.out.println("???");
//			xlSheet.PrintOut();


//			System.out.println("(My Documents)\\testExcel.xls");
//			xlBook.SaveAs("testExcel.xls");

			System.out.println("[Enter]");
			System.in.read();

			xlBook.Close(false,null,false);
			excel.Quit();

			System.out.println("???");
		}
		catch(Exception e) { e.printStackTrace(); }
		finally { rm.release(); }
	}
}
