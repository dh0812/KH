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
		
		// uri에 따른 작업 구분
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
		// 로그인 폼
		String path="/WEB-INF/views/member/login.jsp";
		forward(req, resp, path);
	}

	private void loginSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 로그인 처리
		// 세션객체. 세션 정보는 서버에 저장(로그인정보, 권한등을저장)
		HttpSession session=req.getSession();
		
		MemberDAO dao=new MemberDAO();
		String cp=req.getContextPath();
		
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		
		MemberDTO dto=dao.readMember(id);
		if(dto!=null) {
			if(pwd.equals(dto.getPwd())&& dto.getEnabled()==1) {
				
				
				// 로그인 성공 : 로그인정보를 서버에 저장
				// 세션의 유지시간을 20분설정(기본 30분)
				session.setMaxInactiveInterval(20*60);
				
				// 세션에 저장할 내용
				SessionInfo info=new SessionInfo();
				info.setId(dto.getId());
				info.setName(dto.getName());
				
				// 세션에 member이라는 이름으로 저장
				session.setAttribute("member", info);
				
				// 메인화면으로 리다이렉트
				resp.sendRedirect(cp);
				return;
			}
		} 
		
		
		// 로그인 실패인 경우(다시 로그인 폼으로)
		String msg="아이디 또는 패스워드가 일치하지 않습니다.";
		req.setAttribute("message", msg);
		
		String path="/WEB-INF/views/member/login.jsp";
		forward(req, resp, path);
	}
	
	private void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 로그아웃
		HttpSession session=req.getSession();
		String cp=req.getContextPath();

		// 세션에 저장된 정보를 지운다.
		session.removeAttribute("member");
		
		// 세션에 저장된 모든 정보를 지우고 세션을 초기화 한다.
		session.invalidate();
		
		// 루트로 리다이렉트
		resp.sendRedirect(cp);
	}
	
	private void memberForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 회원가입폼
		req.setAttribute("title", "회원 가입");
		req.setAttribute("mode", "created");
		String path="/WEB-INF/views/member/member.jsp";
		forward(req, resp, path);
	}

	private void memberSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 회원가입 처리	
		forward(req, resp, "/WEB-INF/views/member/complete.jsp");
	}
	
	private void pwdForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 패스워드 확인 폼
		
		forward(req, resp, "/WEB-INF/views/member/pwd.jsp");
	}

	private void pwdSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 패스워드 확인
		
		forward(req, resp, "/WEB-INF/views/member/complete.jsp");
		
	}
		
		

	private void updateSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 회원정보 수정 완료

		forward(req, resp, "/WEB-INF/views/member/complete.jsp");
	}
}
