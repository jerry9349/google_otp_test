package net.member.action;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.commons.action.Action;
import net.commons.action.ActionForward;

public class GoogleOTPAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("UTF-8");	//�ѱ�ó��
		
		String name = (String)request.getParameter("name");
		String host = (String)request.getParameter("host");
		String otp_number = request.getParameter("otp_number");
		GoogleOTP otp = new GoogleOTP();
		HashMap<String,String> map = otp.generate(name,host);
		String otpkey = map.get("encodedKey");
		String url = map.get("url");
		System.out.println(otpkey);
		System.out.println(url);
		
		// �Ʒ��� ����� �翬�� �е����� Ȯ���� false�� ���´�.
		// �켱 ���� �������� ������ Ű/url�� otp�ۿ� ����ϰ��� ǥ�õǴ� ��ȣ�� ������ Ű�� �־��ָ� true�� ���� ���̴�.
		boolean check = otp.checkCode("123132", otpkey);
		System.out.println(check);
		if(check==true) {
			System.out.println("��������");
		}else {
			System.out.println("��������");
		}
		
		request.setAttribute("url", url);
		forward.setRedirect(false);//���Ӳ����ٰ� �ٽÿ����ϸ鼭 ���ο� ������ �����ش�.
		forward.setPath("./otp_main.jsp"); //������ ������ ���� ȣ��.
		return forward;
		
	}

}
