package net.member.action;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.commons.action.Action;
import net.commons.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class GoogleOTPSettingAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8"); //�ѱ�ó��
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		boolean result=false;
		
		System.out.println("GoogleOTPSettingAction ����?");
		String id = (String) session.getAttribute("id");
		System.out.println("���� Ȯ�� : "+id);
		
		/* GoogleOTPSettingAction : otp ����, ������ �� �� �ִ�.
		 * 1. otp ������ �ϸ� otp ����Ű�� �߱޹޾� ���� otp�ۿ� ����Ű�� ����Ҽ� �ִ�.
		 * �̶�, db�� otp url�� otp key�� �ְ�, otp ����(state) ���� 1�� �ٲ��ش�.
		 * 2. otp ���� ������ �ϸ� �߱޹��� otp �����͵��� ���� �����.
		 * �̶�, db�� otp url�� otp key ���� ���� �����, otp ����(state) ���� 0���� �ٲ��ش�.
		 * */
		
		
		if(id == null){//�α����� �ȵ��ִٸ� ���â
	         System.out.println("���Ǿ���. �α��� �������� �̵�.");
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('Session is dead. please Login again'); "
	               + "location.href='./Login.cy';</script>");
	         
	         return null;
	      }
		
		//id�� �ش� ������ ��ϵ� �̸��� �����´�.
		member = memberdao.getDetailMember(id);
		
		String name = member.getName();
		System.out.println(name);
		//String host = "r2x.org";
		
		
		//null üũ, �׳�Ȯ�ο�(ù �߱����� ��߱� �������� Ȯ���ϴ� �뵵)
		String key_check = member.getCertification_key();
		String url_check = member.getCertification_url();
		System.out.println(key_check);
		System.out.println(url_check);
		
		//key nullüũ, �׳� Ȯ�ο�
		if(key_check==null || key_check.equals("")) {
			System.out.println("����Ű�� �߱޹��� ���� �����Դϴ�.");
		}
		
		//���� �������� �Ѿ��, �̸��� key, url�� ��������.
		request.setAttribute("name", name);
		request.setAttribute("key", key_check);
		request.setAttribute("url",url_check);
		forward.setRedirect(false);
		forward.setPath("./otp.jsp");
		
		return forward;
		
	}
}
