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
		request.setCharacterEncoding("UTF-8");	//한글처리
		
		String name = (String)request.getParameter("name");
		String host = (String)request.getParameter("host");
		String otp_number = request.getParameter("otp_number");
		GoogleOTP otp = new GoogleOTP();
		HashMap<String,String> map = otp.generate(name,host);
		String otpkey = map.get("encodedKey");
		String url = map.get("url");
		System.out.println(otpkey);
		System.out.println(url);
		
		// 아래의 결과는 당연히 압도적인 확률로 false가 나온다.
		// 우선 위의 과정으로 생성된 키/url을 otp앱에 등록하고나서 표시되는 번호와 생성된 키를 넣어주면 true가 나올 것이다.
		boolean check = otp.checkCode("123132", otpkey);
		System.out.println(check);
		if(check==true) {
			System.out.println("인증성공");
		}else {
			System.out.println("인증실패");
		}
		
		request.setAttribute("url", url);
		forward.setRedirect(false);//접속끊었다가 다시연결하면서 새로운 정보를 보여준다.
		forward.setPath("./otp_main.jsp"); //관리자 페이지 메인 호출.
		return forward;
		
	}

}
