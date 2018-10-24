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
		request.setCharacterEncoding("utf-8"); //한글처리
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		MemberBean member2 = new MemberBean();
		HttpSession session = request.getSession();
		boolean result=false;
		
		System.out.println("GoogleOTPIssueAction 들어옴?");
		String id = (String) session.getAttribute("id");
		System.out.println("세션 확인 : "+id);
		
		
		if(id == null){//로그인이 안되있다면 경고창
	         System.out.println("세션없음. 로그인 페이지로 이동.");
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('Session is dead. please Login again'); "
	               + "location.href='./Login.cy';</script>");
	         
	         return null;
	      }
		
		//해당 계정의 이름을 가져온다.
		String name = request.getParameter("name");
		System.out.println(name);
		String host = "r2x.org";
		//구글 otp 앱에 등록될때 '이름@host'로 입력된다.
		
		//null 체크
		String key_check = member.getCertification_key();
		String url_check = member.getCertification_url();
		System.out.println(key_check);
		
		//key가 없을 경우 key를 발급 받음
		if(key_check==null || key_check.equals("")) {
			System.out.println("인증키를 발급받지 않음.");
		}else {
			System.out.println("인증키를 발급받음.");
		}
		
		//구글 otp 객체 생성
		GoogleOTP otp = new GoogleOTP();
		//이름과 host를 넣어 나만의 인증키를 생성한다.
		HashMap<String,String> map = otp.generate(name,host);
		//생성된 otpkey와 otpurl을 가져온다. url은 바코드 스캔가능 
		String otpkey = map.get("encodedKey");
		String otpurl = map.get("url");
		System.out.println(otpkey);
		System.out.println(otpurl);
		
		member2.setId(id);
		member2.setCertification_key(otpkey);
		member2.setCertification_url(otpurl);
		
		//발급받은 key와 url을 db에 넣기, 이 key와 url은 로그인 할때 otp number 검사를 받게된다.
		result = memberdao.getkeyurlUpdate(member2);
		
		//db 안에 들어있는 key,url 가져오기
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

