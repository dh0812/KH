package com.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.MyServlet;

@WebServlet("/member/*")
public class MemberServlet extends MyServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String uri=req.getRequestURI();
		
		// uri�� ���� �۾� ����
		if(uri.indexOf("login.do")!=-1) {
			loginForm(req, resp);
		} else if(uri.indexOf("login_ok.do")!=-1) {
			loginSubmit(req, resp);
		} else if(uri.indexOf("logout.do")!=-1) {
			logout(req, resp);
		} else if(uri.indexOf("member.do")!=-1) {
			memberForm(req, resp);
		} else if(uri.indexOf("member_ok.do")!=-1) {
			memberSubmit(req, resp);
		} else if(uri.indexOf("pwd.do")!=-1) {
			pwdForm(req, resp);
		} else if(uri.indexOf("pwd_ok.do")!=-1) {
			pwdSubmit(req, resp);
		} else if(uri.indexOf("update_ok.do")!=-1) {
			updateSubmit(req, resp);
		}
	}

	private void loginForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// �α��� ��
		String path="/WEB-INF/views/member/login.jsp";
		forward(req, resp, path);
	}

	private void loginSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// �α��� ó��
		// ���ǰ�ü. ���� ������ ������ ����(�α�������, ���ѵ�������)
		HttpSession session=req.getSession();
		
		MemberDAO dao=new MemberDAO();
		String cp=req.getContextPath();
		
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		
		MemberDTO dto=dao.readMember(id);
		if(dto!=null) {
			if(pwd.equals(dto.getPwd())&& dto.getEnabled()==1) {
				
				
				// �α��� ���� : �α��������� ������ ����
				// ������ �����ð��� 20�м���(�⺻ 30��)
				session.setMaxInactiveInterval(20*60);
				
				// ���ǿ� ������ ����
				SessionInfo info=new SessionInfo();
				info.setId(dto.getId());
				info.setName(dto.getName());
				
				// ���ǿ� member�̶�� �̸����� ����
				session.setAttribute("member", info);
				
				// ����ȭ������ �����̷�Ʈ
				resp.sendRedirect(cp);
				return;
			}
		} 
		
		
		// �α��� ������ ���(�ٽ� �α��� ������)
		String msg="���̵� �Ǵ� �н����尡 ��ġ���� �ʽ��ϴ�.";
		req.setAttribute("message", msg);
		
		String path="/WEB-INF/views/member/login.jsp";
		forward(req, resp, path);
	}
	
	private void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// �α׾ƿ�
		HttpSession session=req.getSession();
		String cp=req.getContextPath();

		// ���ǿ� ����� ������ �����.
		session.removeAttribute("member");
		
		// ���ǿ� ����� ��� ������ ����� ������ �ʱ�ȭ �Ѵ�.
		session.invalidate();
		
		// ��Ʈ�� �����̷�Ʈ
		resp.sendRedirect(cp);
	}
	
	private void memberForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// ȸ��������
		req.setAttribute("title", "ȸ�� ����");
		req.setAttribute("mode", "created");
		String path="/WEB-INF/views/member/member.jsp";
		forward(req, resp, path);
	}

	private void memberSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// ȸ������ ó��	
		forward(req, resp, "/WEB-INF/views/member/complete.jsp");
	}
	
	private void pwdForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// �н����� Ȯ�� ��
		
		forward(req, resp, "/WEB-INF/views/member/pwd.jsp");
	}

	private void pwdSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// �н����� Ȯ��
		
		forward(req, resp, "/WEB-INF/views/member/complete.jsp");
		
	}
		
		

	private void updateSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// ȸ������ ���� �Ϸ�

		forward(req, resp, "/WEB-INF/views/member/complete.jsp");
	}
}
