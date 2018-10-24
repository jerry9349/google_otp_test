package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.commons.action.Action;
import net.commons.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberUpdateAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8"); //�ѱ�ó��
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		boolean result = false;
		boolean result2 = false;
		
		System.out.println("MemberUpdateAction ����?");
		String id = (String) session.getAttribute("id");
		System.out.println("���� Ȯ�� : "+id);
		
		/* MemberUpdateAction : �������������� ������ ���� update ������.
		 * 1. ���� otp ������ Ȱ��ȭ ���� ���, db�� state ���� 1�� �ٲ��ش�.
		 * 2. ���� otp ������ ��Ȱ��ȭ ���� ���, db�� state ���� 0���� �ٲ��ش�.
		 * �׸���, 
		 * */
		
		if(id == null){//�α����� �ȵ��ִٸ� ���â
	         System.out.println("���Ǿ���. �α��� �������� �̵�.");
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('Session is dead. please Login again'); "
	               + "location.href='./Login.cy';</script>");
	         
	         return null;
	      }
		
		member.setId(id);
		//����ڰ� otp �����ߴ���, ���� �ߴ��� �޾ƿ�
		String str = request.getParameter("state");
		//state �ʱⰪ 0(��Ȱ��ȭ ����)
		int state = 0;
		
		if(str.equals("true")) {//otp Ȱ��ȭ ������, state �� 1�� �ٲ���
			System.out.println(str);
			state = 1;
		}else if(str.equals("false")){//otp ��Ȱ��ȭ ������,otpkey�� otpurl �����͸� ������
			System.out.println(str);
			//key,url �� ����
			result2 = memberdao.getSateUpdate(member);
		}
		
		member.setState(state);
		//�� ���� �����ϱ�
		result = memberdao.getUpdateMember(member);
		
		System.out.println("���� �����ϱ� �Ϸ�");
		
		request.setAttribute("member", member);
		forward.setRedirect(false);
		forward.setPath("./otp_mypage.jsp");
		
		return forward;
		
	}
}
