package kr.co.tt.board.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/jsp/board/review/update.do")
public class UpdateController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String content = request.getParameter("editordata");
//		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		ReviewBoard board = new ReviewBoard();
		board.setNo(no);
//		board.setMemNo(memNo);
		board.setTitle(title);
		board.setContent(content);
		
		mapper.updateBoard(board);
		
		response.sendRedirect("/makeFriendsTravel/jsp/board/review/detail.do?no="+no);
	}

	
	
}
