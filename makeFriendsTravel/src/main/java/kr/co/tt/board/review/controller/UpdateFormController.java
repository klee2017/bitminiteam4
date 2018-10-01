package kr.co.tt.board.review.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/jsp/board/review/update-form.do")
public class UpdateFormController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		ReviewBoard board = mapper.selectBoardByNo(Integer.parseInt(request.getParameter("no")));
		
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/board/review/reviewUpdateForm.jsp");
		rd.forward(request, response);
	}
	
	
	
}
