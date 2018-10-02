package kr.co.tt.login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

@WebServlet("/login/sign.do")
public class SignUp extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		request.setCharacterEncoding("utf-8");
		String kakao = request.getParameter("access");
		String id  = request.getParameter("id");
		String pass  = request.getParameter("pass");
		String name  = request.getParameter("name");
		String photo = request.getParameter("profile");

		
		
		if(kakao!=null) {
			Member member = new Member();
			member.setId(name+"(kakao)");
			member.setPass(pass);
			member.setName(name);
			member.setPoto(photo);
			Member checkMember = mapper.selectMember(member);
			if(checkMember == null) {
				mapper.insertMember(member);

			
				request.setAttribute("id", member.getId());
				request.setAttribute("pass", member.getPass());
				request.setAttribute("name", member.getName());
				request.setAttribute("poto", member.getPoto());
				request.setAttribute("access", kakao);
				
				RequestDispatcher rd= request.getRequestDispatcher("/login/login.do");
				rd.forward(request, response);
				
				return;
			} else {
				request.setAttribute("id", member.getId());
				request.setAttribute("pass", member.getPass());
				request.setAttribute("name", member.getName());
				request.setAttribute("poto", member.getPoto());
				request.setAttribute("access", kakao);
				
				RequestDispatcher rd= request.getRequestDispatcher("/login/login.do");
				rd.forward(request, response);
		
				return;
			}
			
			
			//메인페이지로 이동하기
			//response.sendRedirect(request.getContextPath()+"/html/main/main.do");
			
		} else {
			
			Member member = new Member();
			member.setId(request.getParameter("id"));
			member.setName(request.getParameter("name"));
			member.setPass(request.getParameter("pass"));
			mapper.insertMember(member);
			
			response.sendRedirect(request.getContextPath()+"/html/login/signup.jsp");
		}
		

		
		
	}
}
