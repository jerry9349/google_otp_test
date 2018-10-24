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
		request.setCharacterEncoding("utf-8"); //�ѱ�ó��
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		
		System.out.println("certificationAction ����?");
		
		/* certificationAction : �ش� id�� otp ������ Ȱ��ȭ �Ǿ� ������, ���� otp �ۿ� ��ϵ�
		 * otp �ѹ��� �Է�������, otp number�� �ùٸ� number���� �˻��ϴ� ��
		 * */
		
		String id = (String) session.getAttribute("id");
		String otp_number = request.getParameter("otp_number");
		
		GoogleOTP otp = new GoogleOTP();
		//�ش� id�� otp ������ �Ǿ������� db�� ��ϵ� otpkey�� �����´�.
		member = memberdao.getDetailMember(id);
		String otpkey = (String)member.getCertification_key();
		
		//otp number�� �ùٸ� number���� check�Ѵ�.
		//check�Ҷ��� �Է��� otp number�� db�� ��ϵ� otpkey�� �־� �˻��Ѵ�.
		//�˻簡 �Ϸ� �Ǹ� true�� ��ȯ, �˻� ���и� false�� ��ȯ�Ѵ�.
		boolean check = otp.checkCode(otp_number, otpkey);
		System.out.println(check);
		
		if(check==false) {//�˻� �����϶� �ٽ� otp �Է�â���� ���ư�
			System.out.println("��������");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('otp number�� �ùٸ��� �Է����ּ���!');");
			out.println("location.href='.otp_input.do';");
			out.println("</script>");
			out.close();
			return null;
		}else {//�˻� �����϶� main���� ����.
			System.out.println("��������");
		}
		
		
		forward.setRedirect(false);
		forward.setPath("./otp_main.jsp");
		
		return forward;
		
	}

}
