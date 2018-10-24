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
		request.setCharacterEncoding("utf-8"); //한글처리
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		boolean result=false;
		
		System.out.println("GoogleOTPSettingAction 들어옴?");
		String id = (String) session.getAttribute("id");
		System.out.println("세션 확인 : "+id);
		
		/* GoogleOTPSettingAction : otp 설정, 해제를 할 수 있다.
		 * 1. otp 설정을 하면 otp 인증키를 발급받아 구글 otp앱에 인증키를 등록할수 있다.
		 * 이때, db에 otp url과 otp key를 넣고, otp 설정(state) 값을 1로 바꿔준다.
		 * 2. otp 설정 해제를 하면 발급받은 otp 데이터들을 전부 지운다.
		 * 이때, db에 otp url과 otp key 값을 전부 지우고, otp 설정(state) 값을 0으로 바꿔준다.
		 * */
		
		
		if(id == null){//로그인이 안되있다면 경고창
	         System.out.println("세션없음. 로그인 페이지로 이동.");
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('Session is dead. please Login again'); "
	               + "location.href='./Login.cy';</script>");
	         
	         return null;
	      }
		
		//id로 해당 계정에 등록된 이름을 가져온다.
		member = memberdao.getDetailMember(id);
		
		String name = member.getName();
		System.out.println(name);
		//String host = "r2x.org";
		
		
		//null 체크, 그냥확인용(첫 발급인지 재발급 상태인지 확인하는 용도)
		String key_check = member.getCertification_key();
		String url_check = member.getCertification_url();
		System.out.println(key_check);
		System.out.println(url_check);
		
		//key null체크, 그냥 확인용
		if(key_check==null || key_check.equals("")) {
			System.out.println("인증키를 발급받지 않은 상태입니다.");
		}
		
		//다음 페이지로 넘어갈때, 이름과 key, url을 가져간다.
		request.setAttribute("name", name);
		request.setAttribute("key", key_check);
		request.setAttribute("url",url_check);
		forward.setRedirect(false);
		forward.setPath("./otp.jsp");
		
		return forward;
		
	}
}
