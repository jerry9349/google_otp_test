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
		request.setCharacterEncoding("utf-8"); //�ѱ�ó��
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		
		/* MemberLoginAction : �α��� �Ҷ� id�� pw�� db���� Ȯ���ϰ�, 
		 * db�� �Է��� id�� pw�� ������ �α����� ����Ѵ�.
		 * �̶�, �ش� ������ otp ������ �Ǿ� ������ otp number �Է�â���� �̵��ϰ�,
		 * otp ������ �ȵǾ� ������ �������� �Ѿ��.*/
		System.out.println("MemberLoginAction ����?");
		
		String id = request.getParameter("id");
		System.out.println(id);
		String passwordfind = request.getParameter("pw");
		System.out.println("PasswordȮ�� �۾�"+passwordfind);
		
		int result=-1; // �⺻ ��� ���� -1(���̵� �������� �ʴ´ٴ� �ǹ̷� ����)
		/*�α��������� �Է��� ���� memberbean��ü�� ����*/
		member.setId(id);
		member.setPw(passwordfind);
		
		//db�� id�� �ִ��� ã�� id�� pw�� ��ġ�ϴ��� �˻�, ��ġ�ϸ� true�� �޾ƿ´�.
		result=memberdao.isMember(member); //dao�� isManager�޼ҵ�ȣ���Ͽ� ������ ����üũ
	
		if(result==0) {//��й�ȣ Ʋ���ٴ� ����� ������ alert ���� �ٽ� �α��� â
			System.out.println("��й�ȣ �ƴ�");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('��й�ȣ�� �ٸ��ϴ�!');");
			out.println("location.href='.otp_test.jsp';");
			out.println("</script>");
			out.close();
		}else if(result==-1) {//���̵� �������� ������ alert ����� �ٽ�  �α��� â
			System.out.println("���̵� ����");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('���̵� �������� �ʽ��ϴ�!');");
			out.println("location.href='./otp_test.jsp';");
			out.println("</script>");
			out.close();
		}
		
		//�α��� ����
		System.out.println("�α��� ����");
		
		//���� ���� : state �� 0�̸� otp ��Ȱ��ȭ, state�� 1�̸� otp Ȱ��ȭ �����̴�.
		int certification_state = 0;
		//�ش� id�� otp�� �����Ǿ� �ִ��� �˻��ϱ�
		certification_state = memberdao.certification_check(id);
		
		if(certification_state==0) {//state�� 0�̸� otp ��Ȱ��ȭ�� �ٷ� �������� �Ѿ
			System.out.println("�������� �Ѿ�ϴ�.");
		}else if(certification_state==1){
			//state�� 1�̸� otp Ȱ��ȭ�� otp number �Է�â���� �Ѿ
			System.out.println("���� â���� �Ѿ�ϴ�");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("location.href='./otp_input.do';");
			out.println("</script>");
			out.close();
			return null;
		}else {//�׿� ���� ��� ���� ������ �����͸� �޾� �ü� ������
			System.out.println("�����͸� �޾� �ü� ���� �α����� ó�� �� �� �����ϴ�.");
		}
		
		
		session.setAttribute("id", id); //���ǿ� id���
		forward.setRedirect(false);
		forward.setPath("./otp_main.jsp");
		
		return forward;
		
	}

}
