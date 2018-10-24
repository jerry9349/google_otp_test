package net.member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.commons.action.Action;
import net.commons.action.ActionForward;


public class ViewFrontController extends HttpServlet implements Servlet{
	static final long serialVersionUID=1L;
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8"); //한글처리
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;
		
		if(command.equals("/Main.do")){
			forward=new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./otp_test.jsp");
		}if(command.equals("/logout.do")){
			forward=new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./otp_logout.jsp");
		}if(command.equals("/otp_input.do")){
			forward=new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./otp_input.jsp");
		}else if(command.equals("/MemberLoginAction.do")){
		
			action=new MemberLoginAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}else if(command.equals("/certificationAction.do")){
		
			action=new certificationAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}else if(command.equals("/mypage.do")){
		
			action=new MemberMypageAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}else if(command.equals("/MemberUpdateAction.do")){
		
			action=new MemberUpdateAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}else if(command.equals("/GoogleOTPSettingAction.do")){
		
			action=new GoogleOTPSettingAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}else if(command.equals("/GoogleOTPIssueAction.do")){
		
			action=new GoogleOTPIssueAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}
		
		
		
		if(forward!=null){
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doProcess(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doProcess(request, response);
	}
}
