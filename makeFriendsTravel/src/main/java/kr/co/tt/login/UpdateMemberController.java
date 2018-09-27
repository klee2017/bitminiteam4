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

@WebServlet("/login/update.do")

public class UpdateMemberController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginMapper mapper = 
			 	MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		request.setCharacterEncoding("utf-8");

		
		Member memberVO = new Member();
		memberVO.setNo(Integer.parseInt(request.getParameter("no")));
		memberVO.setName(request.getParameter("name"));
		memberVO.setEmail(request.getParameter("email"));
		memberVO.setGender(request.getParameter("gender"));
		memberVO.setFavoritePlace(request.getParameter("favoriteplace"));
		System.out.println(request.getParameter("gender"));
		System.out.println(request.getParameter("no"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("favoriteplace"));
	  	mapper.updateMember(memberVO);
	  	
		response.sendRedirect(request.getContextPath()+"/html/main/main.do");
	}
}
