package kr.co.tt.board.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/html/qnaDelete.do")
public class QnADeleteController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		int no = Integer.parseInt(request.getParameter("no"));
		mapper.deleteBoard(no);
		
		response.sendRedirect("/makeFriendsTravel/html/qnaList.do");
		
	}
	
}
