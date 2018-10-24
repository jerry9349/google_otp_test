package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.commons.action.Action;
import net.commons.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberLoginAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8"); //한글처리
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		
		/* MemberLoginAction : 로그인 할때 id와 pw를 db에서 확인하고, 
		 * db에 입력한 id와 pw가 맞으면 로그인을 허용한다.
		 * 이때, 해당 계정이 otp 설정이 되어 있으면 otp number 입력창으로 이동하고,
		 * otp 설정이 안되어 있으면 메인으로 넘어간다.*/
		System.out.println("MemberLoginAction 들어옴?");
		
		String id = request.getParameter("id");
		System.out.println(id);
		String passwordfind = request.getParameter("pw");
		System.out.println("Password확인 작업"+passwordfind);
		
		int result=-1; // 기본 결과 값을 -1(아이디가 존재하지 않는다는 의미로 정의)
		/*로그인폼에서 입력한 값을 memberbean객체에 저장*/
		member.setId(id);
		member.setPw(passwordfind);
		
		//db에 id가 있는지 찾고 id와 pw가 일치하는지 검색, 일치하면 true를 받아온다.
		result=memberdao.isMember(member); //dao에 isManager메소드호출하여 관리자 권한체크
	
		if(result==0) {//비밀번호 틀리다는 결과값 나오면 alert 띄우고 다시 로그인 창
			System.out.println("비밀번호 아님");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호가 다릅니다!');");
			out.println("location.href='.otp_test.jsp';");
			out.println("</script>");
			out.close();
		}else if(result==-1) {//아이디가 존재하지 않으면 alert 띄운후 다시  로그인 창
			System.out.println("아이디 없음");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디가 존재하지 않습니다!');");
			out.println("location.href='./otp_test.jsp';");
			out.println("</script>");
			out.close();
		}
		
		//로그인 성공
		System.out.println("로그인 성공");
		
		//인증 상태 : state 가 0이면 otp 비활성화, state가 1이면 otp 활성화 상태이다.
		int certification_state = 0;
		//해당 id가 otp가 설정되어 있는지 검색하기
		certification_state = memberdao.certification_check(id);
		
		if(certification_state==0) {//state가 0이면 otp 비활성화로 바로 메인으로 넘어감
			System.out.println("메인으로 넘어갑니다.");
		}else if(certification_state==1){
			//state가 1이면 otp 활성화로 otp number 입력창으로 넘어감
			System.out.println("인증 창으로 넘어갑니다");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("location.href='./otp_input.do';");
			out.println("</script>");
			out.close();
			return null;
		}else {//그외 서버 장애 등의 이유로 데이터를 받아 올수 없을때
			System.out.println("데이터를 받아 올수 없어 로그인을 처리 할 수 없습니다.");
		}
		
		
		session.setAttribute("id", id); //세션에 id등록
		forward.setRedirect(false);
		forward.setPath("./otp_main.jsp");
		
		return forward;
		
	}

}
