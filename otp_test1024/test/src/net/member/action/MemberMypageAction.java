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
		request.setCharacterEncoding("utf-8"); //한글처리
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		
		System.out.println("MemberMypageAction 들어옴?");
		String id = (String) session.getAttribute("id");
		System.out.println("세션 확인 : "+id);
		
		/* MemberMypageAction : 로그인 후 내 정보를 가져오는 곳이다.
		 * 이곳에서 otp 설정과 해제를 할 수 있다.
		 * */
		
		if(id == null){//로그인이 안되있다면 경고창
	         System.out.println("세션없음. 로그인 페이지로 이동.");
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('Session is dead. please Login again'); "
	               + "location.href='./Login.cy';</script>");
	         
	         return null;
	      }
		
		member = memberdao.getDetailMember(id);
		
		System.out.println("정보 가져오기 완료");
		
		request.setAttribute("member", member);
		forward.setRedirect(false);
		forward.setPath("./otp_mypage.jsp");
		
		return forward;
		
	}

}
