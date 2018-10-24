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

public class GoogleOTPIssueAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8"); //�ѱ�ó��
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		MemberBean member2 = new MemberBean();
		HttpSession session = request.getSession();
		boolean result=false;
		
		System.out.println("GoogleOTPIssueAction ����?");
		String id = (String) session.getAttribute("id");
		System.out.println("���� Ȯ�� : "+id);
		
		
		if(id == null){//�α����� �ȵ��ִٸ� ���â
	         System.out.println("���Ǿ���. �α��� �������� �̵�.");
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('Session is dead. please Login again'); "
	               + "location.href='./Login.cy';</script>");
	         
	         return null;
	      }
		
		//�ش� ������ �̸��� �����´�.
		String name = request.getParameter("name");
		System.out.println(name);
		String host = "r2x.org";
		//���� otp �ۿ� ��ϵɶ� '�̸�@host'�� �Էµȴ�.
		
		//null üũ
		String key_check = member.getCertification_key();
		String url_check = member.getCertification_url();
		System.out.println(key_check);
		
		//key�� ���� ��� key�� �߱� ����
		if(key_check==null || key_check.equals("")) {
			System.out.println("����Ű�� �߱޹��� ����.");
		}else {
			System.out.println("����Ű�� �߱޹���.");
		}
		
		//���� otp ��ü ����
		GoogleOTP otp = new GoogleOTP();
		//�̸��� host�� �־� ������ ����Ű�� �����Ѵ�.
		HashMap<String,String> map = otp.generate(name,host);
		//������ otpkey�� otpurl�� �����´�. url�� ���ڵ� ��ĵ���� 
		String otpkey = map.get("encodedKey");
		String otpurl = map.get("url");
		System.out.println(otpkey);
		System.out.println(otpurl);
		
		member2.setId(id);
		member2.setCertification_key(otpkey);
		member2.setCertification_url(otpurl);
		
		//�߱޹��� key�� url�� db�� �ֱ�, �� key�� url�� �α��� �Ҷ� otp number �˻縦 �ްԵȴ�.
		result = memberdao.getkeyurlUpdate(member2);
		
		//db �ȿ� ����ִ� key,url ��������
		/*member = memberdao.getDetailMember(id);
		
		String key = (String)member.getCertification_key();
		String url = (String)member.getCertification_url();*/
		
		request.setAttribute("name", name);
		request.setAttribute("key", otpkey);
		request.setAttribute("url",otpurl);
		forward.setRedirect(false);
		forward.setPath("./otp.jsp");
		
		return forward;
		
	}
}

