import jp.ne.so_net.ga2.no_ji.jcom.excel8.*;
import jp.ne.so_net.ga2.no_ji.jcom.*;
import java.io.File;
import java.util.Date;

/**
	�X���b�h�P�ʂɂb�n�l�����s����T���v���B
	�X���b�h���Ƃ�ReleaseManager�����蓖�ĂĂ���B
*/
class testExcelSvr extends Thread implements Runnable {
	
	// �X���b�h�� ? �Ǘ�����N���X
	static final int THREAD_NUM = 1;	// �Ȃ����P�ȊO�ł͊�ɃG���[���N����B�����s��
	static final int REQUESTS = 100;
	static testExcelSvr[] list;

	public synchronized void run() {
		ReleaseManager rm = new ReleaseManager();
		try {
			System.out.println("EXCEL���N����...");
			// ���łɗ����オ���Ă���ƁA�V�����E�B���h�E�ŊJ���B
			ExcelApplication excel = new ExcelApplication(rm);
			excel.Visible(true);

			ExcelWorkbooks xlBooks = excel.Workbooks();
			ExcelWorkbook xlBook = xlBooks.Add();	// �V�����u�b�N���쐬
			
			// ���ׂẴt�@�C����񋓂��Ă݂�
			ExcelWorksheets xlSheets = xlBook.Worksheets();
			ExcelWorksheet xlSheet = xlSheets.Item(1);
			ExcelRange xlRange = xlSheet.Cells();
			xlRange.Item(1,1).Value("�t�@�C����" );
			xlRange.Item(1,2).Value("�T�C�Y" );
			xlRange.Item(1,3).Value("�ŏI�X�V����");
			xlRange.Item(1,4).Value("�f�B���N�g��");
			xlRange.Item(1,5).Value("�t�@�C��");
			xlRange.Item(1,6).Value("�ǂݍ��݉�");
			xlRange.Item(1,7).Value("�������݉�");
//			xlRange.Item(1,8).Value("�B���t�@�C��"); // jdk1.2�ȍ~

			File path = new File("./");
			String[] filenames = path.list();
			for(int i=0; i<filenames.length; i++) {
				//System.out.println(files[i]);
				File file = new File(filenames[i]);
				xlRange.Item(i+2,1).Value( file.getName() );				// �t�@�C�����p�X����
				xlRange.Item(i+2,2).Value( (int)file.length() );			// �t�@�C���T�C�Y
				xlRange.Item(i+2,3).Value( new Date(file.lastModified()) );	// �ŏI�X�V����
				xlRange.Item(i+2,4).Value( file.isDirectory()?"Yes":"No" );	// �f�B���N�g�����H
				xlRange.Item(i+2,5).Value( file.isFile()?"Yes":"No" );		// �t�@�C�����H
				xlRange.Item(i+2,6).Value( file.canRead()?"Yes":"No" );		// �ǂݎ����H
				xlRange.Item(i+2,7).Value( file.canWrite()?"Yes":"No" );	// �������݉��H
//				xlRange.Item(i+2,8).Value( file.isHidden()?"Yes":"No" );	// �B���t�@�C�����H
			}

			xlRange.Item(filenames.length+2,1).Value("���v");
			xlRange.Item(filenames.length+2,2).Formula("=Sum(B2:B"+(filenames.length+1)+")");
			xlRange.Columns().AutoFit();	// �������t�B�b�g������

			xlBook.Close(false,null,false);
			excel.Quit();
		}
		catch(Exception e) { e.printStackTrace(); }
		finally { rm.release(); }
		// �����̃X���b�h��������
		for(int i=0; i<THREAD_NUM; i++) {
			if(list[i] == this) {
				list[i] = null;
				break;
			}
		}
		System.out.println("�X���b�h�I��");
	}
	
	
	public static void main(String[] args) {
		System.out.println("*** �T�[�o�[�A�v����z�肵���T���v�� ***");
		System.out.println(""+REQUESTS+"�̗v����"+THREAD_NUM+"�̃X���b�h�œ����ɔ񓯊��ɏ������܂��B");
		System.out.println("���ׂĂ̏������I����̂ɁA���΂炭���Ԃ�������܂��B");
		//�X���b�h���X�g��������
		list = new testExcelSvr[THREAD_NUM];
		for(int i=0; i<THREAD_NUM; i++) {
			list[i] = null;
		}
		for(int count=0; count<REQUESTS; count++) {
			// �󂫂���������A�X���b�h���J�n
			for(int i=0; i<THREAD_NUM; i++) {
				if(list[i]==null) {
					System.out.println("�X���b�h����");
					list[i] = new testExcelSvr();
					list[i].start();
					break;	// 1��̃��[�v�ɂ��P����
				}
			}
			try{sleep(1000);}catch(InterruptedException e){}	// 1sec
		}
		// ���ׂẴX���b�h���I���܂ő҂B
		System.out.println("���ׂẴX���b�h���I���܂ő҂B");
		for(;;) {
			boolean endflag = true;
			for(int i=0; i<THREAD_NUM; i++) {
				if(list[i]!=null) {
					endflag = false;
				}
			}
			if(endflag) break;
			try{sleep(1000);}catch(InterruptedException e){}	// 1sec
		}
	}

}
/*
�T�[�o�A�v���P�[�V�����̃T���v���B
�T�[�o�A�v���P�[�V�����͂��̂悤�ȁA�}���`�X���b�h��r��������
�l������K�v������܂��B�r�������́AJCom��COM���ĂԃC���^�[�t�F�[�X
�����ōs���Ă��܂��BExcel�𕡐������ɗ��������邱�Ƃ͉\�ł����A
�������ׂ̍����e�X�g�����Ƃ���A���܂�COM�̌Ăяo�������s���܂����B
�����ł́A�����Ɏ��s�ł��Ȃ��悤�ATHREAD_NUM���P�ɂ��Ă��܂��B
������ύX����΁A�����ɕ����̏�������s���čs���܂��B
*/

