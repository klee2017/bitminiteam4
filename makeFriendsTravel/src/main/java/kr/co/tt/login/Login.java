package kr.co.tt.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.Member;
import kr.co.tt.repository.mapper.LoginMapper;

@WebServlet("/login/login.do")

public class Login extends HttpServlet{
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		request.setCharacterEncoding("utf-8");
		String kakao = request.getParameter("access");
		String id  = request.getParameter("id");
		String pass  = request.getParameter("pass");
		String name  = request.getParameter("name");

		if(kakao!=null) {
			Member member = new Member();
			member.setId(name+"(kakao)");
			member.setPass(pass);
			member.setName(name);
			
			HttpSession session  = request.getSession();
			session.setAttribute("user", member);
			session.setAttribute("kakao", kakao);
			
			//메인페이지로 이동하기
			response.sendRedirect(request.getContextPath()+"/html/main/main.do");
			return;
			
		} else {
				id  = request.getParameter("id");
				pass  = request.getParameter("pass");
				name  = request.getParameter("name");
				
				LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
				
				Member member = new Member();
				member.setId(id);
				member.setPass(pass);
				member.setName(name);
				
				
				Member login = mapper.selectMember(member);
				
				//사용자가 입력한 아이디와 패스워드에 해당하는 데이터가 없는 경우
				if(login == null) {
					RequestDispatcher rd = request.getRequestDispatcher(
							"/html/login/signup.jsp");
					rd.forward(request, response);
					return;
				}
				
				//로그인 성공, 사용자 정보를 관리한다.
				HttpSession session  = request.getSession();
				session.setAttribute("user", login);
				
				
				//메인페이지로 이동하기
				response.sendRedirect(request.getContextPath()+"/html/main/main.do");
				
			}
		
	}
}
