import jp.ne.so_net.ga2.no_ji.jcom.*;

/*
	ReleaseManager���g��Ȃ��ꍇ�̃T���v��
	�m�ۂ��ꂽ�b�n�l�I�u�W�F�N�g�ɑ΂��āA�K��release()���Ăׂ�
	�v���Z�X�𐳏�ɏI�����邱�Ƃ��ł��܂��B�������A�\�[�X�����G��
	�Ȃ�܂����A�ǂ���release()���Ăׂ΂悢�̂����킩��ɂ����ł��B
	ReleaseManager�͂�����Ǘ����A�K�؂ɏ������Ă���܂��B
	ReleaseManager�͂�����P�[�X��z�肵�Đ݌v����Ă���̂ŁA
	���̃\�[�X���Q�l�ɂ��邱�Ƃ͂Ȃ��ł��傤�B
*/
public class testNoReleaseManager {
	public static void main(String[] args) throws Exception {
		try {
			System.out.println("EXCEL���N����...");
			IDispatch xlApp = new IDispatch(null, "Excel.Application");  // EXCEL�{��
			xlApp.put("Visible", new Boolean(true));	// '�f�t�H���g��False(�\�����Ȃ�)
			IDispatch xlBooks = (IDispatch)xlApp.get("Workbooks");
			IDispatch xlBook = (IDispatch)xlBooks.invoke("Add",null);	// �V�����u�b�N���쐬
			IDispatch xlSheet = (IDispatch)xlApp.get("ActiveSheet");

			System.out.println("�Z��A1�ɕ�������Z�b�g");
			Object[] arglist = new Object[1];
			arglist[0] = "A1";
			IDispatch xlRange = (IDispatch)xlSheet.get("Range",arglist);
			xlRange.put("Value","JCom���������I(^o^)");
			xlRange.release();		// @@@

			System.out.println("[Enter]�������Ă��������B�I�����܂�");
			System.in.read();

			Object[] arglist3 = new Object[3];
			arglist3[0] = new Boolean(false);
			arglist3[1] = null;
			arglist3[2] = new Boolean(false);
			xlBook.invoke("Close", arglist3);
			xlApp.invoke("Quit", null);
			xlSheet.release();		// @@@
			xlBook.release();		// @@@
			xlBooks.release();		// @@@
			xlApp.release();		// @@@
			System.out.println("���Ò��A���肪�Ƃ��������܂����B");
		}
		catch(Exception e) { e.printStackTrace(); }
	}
}
