package kr.co.tt.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.Member;
import kr.co.tt.repository.mapper.LoginMapper;

@WebServlet("/login/sign1.do")
public class Idcheck extends HttpServlet {
		
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
		
		LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);

		List<String> list = mapper.idcheck();
		request.setAttribute("list", list);
		
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setName(request.getParameter("name"));
		member.setPass(request.getParameter("pass"));
		mapper.insertMember(member);
		
		RequestDispatcher rd = request.getRequestDispatcher("/html/login/signup.jsp");
		rd.forward(request, response);
		
	}
}
