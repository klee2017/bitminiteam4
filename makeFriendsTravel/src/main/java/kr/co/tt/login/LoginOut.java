package kr.co.tt.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login/logout.do")
public class LoginOut extends HttpServlet{
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		//로그인 성공, 사용자 정보를 관리한다.
		HttpSession session  = request.getSession();
		session.invalidate();
		//메인페이지로 이동하기
		response.sendRedirect(request.getContextPath()+"/main.do");
	}
}
