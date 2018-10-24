package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.commons.action.Action;
import net.commons.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class certificationAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8"); //한글처리
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		
		System.out.println("certificationAction 들어옴?");
		
		/* certificationAction : 해당 id가 otp 설정이 활성화 되어 있을때, 구글 otp 앱에 등록된
		 * otp 넘버를 입력했을때, otp number가 올바른 number인지 검사하는 곳
		 * */
		
		String id = (String) session.getAttribute("id");
		String otp_number = request.getParameter("otp_number");
		
		GoogleOTP otp = new GoogleOTP();
		//해당 id가 otp 설정이 되어있을때 db에 등록된 otpkey를 가져온다.
		member = memberdao.getDetailMember(id);
		String otpkey = (String)member.getCertification_key();
		
		//otp number가 올바른 number인지 check한다.
		//check할때는 입력한 otp number와 db에 등록된 otpkey를 넣어 검사한다.
		//검사가 완료 되면 true를 반환, 검사 실패면 false를 반환한다.
		boolean check = otp.checkCode(otp_number, otpkey);
		System.out.println(check);
		
		if(check==false) {//검사 실패일때 다시 otp 입력창으로 돌아감
			System.out.println("인증실패");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('otp number를 올바르게 입력해주세요!');");
			out.println("location.href='.otp_input.do';");
			out.println("</script>");
			out.close();
			return null;
		}else {//검사 성공일때 main으로 간다.
			System.out.println("인증성공");
		}
		
		
		forward.setRedirect(false);
		forward.setPath("./otp_main.jsp");
		
		return forward;
		
	}

}
