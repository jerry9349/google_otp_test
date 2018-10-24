package net.member.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.commons.action.Action;
import net.commons.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberMypageAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8"); //�ѱ�ó��
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		
		System.out.println("MemberMypageAction ����?");
		String id = (String) session.getAttribute("id");
		System.out.println("���� Ȯ�� : "+id);
		
		/* MemberMypageAction : �α��� �� �� ������ �������� ���̴�.
		 * �̰����� otp ������ ������ �� �� �ִ�.
		 * */
		
		if(id == null){//�α����� �ȵ��ִٸ� ���â
	         System.out.println("���Ǿ���. �α��� �������� �̵�.");
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('Session is dead. please Login again'); "
	               + "location.href='./Login.cy';</script>");
	         
	         return null;
	      }
		
		member = memberdao.getDetailMember(id);
		
		System.out.println("���� �������� �Ϸ�");
		
		request.setAttribute("member", member);
		forward.setRedirect(false);
		forward.setPath("./otp_mypage.jsp");
		
		return forward;
		
	}

}
