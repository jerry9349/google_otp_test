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
		request.setCharacterEncoding("utf-8"); //한글처리
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		boolean result = false;
		boolean result2 = false;
		
		System.out.println("MemberUpdateAction 들어옴?");
		String id = (String) session.getAttribute("id");
		System.out.println("세션 확인 : "+id);
		
		/* MemberUpdateAction : 마이페이지에서 수정한 값을 update 시켜줌.
		 * 1. 만약 otp 설정을 활성화 했을 경우, db에 state 값을 1로 바꿔준다.
		 * 2. 만약 otp 설정을 비활성화 했을 경우, db에 state 값을 0으로 바꿔준다.
		 * 그리고, 
		 * */
		
		if(id == null){//로그인이 안되있다면 경고창
	         System.out.println("세션없음. 로그인 페이지로 이동.");
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('Session is dead. please Login again'); "
	               + "location.href='./Login.cy';</script>");
	         
	         return null;
	      }
		
		member.setId(id);
		//사용자가 otp 설정했는지, 해제 했는지 받아옴
		String str = request.getParameter("state");
		//state 초기값 0(비활성화 상태)
		int state = 0;
		
		if(str.equals("true")) {//otp 활성화 했을때, state 를 1로 바꿔줌
			System.out.println(str);
			state = 1;
		}else if(str.equals("false")){//otp 비활성화 했을때,otpkey와 otpurl 데이터를 지워줌
			System.out.println(str);
			//key,url 값 변경
			result2 = memberdao.getSateUpdate(member);
		}
		
		member.setState(state);
		//내 정보 수정하기
		result = memberdao.getUpdateMember(member);
		
		System.out.println("정보 수정하기 완료");
		
		request.setAttribute("member", member);
		forward.setRedirect(false);
		forward.setPath("./otp_mypage.jsp");
		
		return forward;
		
	}
}
