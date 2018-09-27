package kr.co.tt.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.Member;
import kr.co.tt.repository.mapper.LoginMapper;

@WebServlet("/login/sign.do")
public class SignUp extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setName(request.getParameter("name"));
		member.setPass(request.getParameter("pass"));
		mapper.insertMember(member);
		
		response.sendRedirect(request.getContextPath()+"/html/login/signup.jsp");

		
		
	}
}
