package kr.co.tt.board.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.ReviewComment;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/jsp/board/review/registcomment.do")
public class CommentRegistController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		ReviewComment comment = new ReviewComment();
		comment.setNo(no);
		comment.setContent(request.getParameter("content"));
		comment.setMemNo(Integer.parseInt(request.getParameter("memNo")));
		
		mapper.insertComment(comment);
		
		response.sendRedirect("detail.do?no=" + no);
	}
	
}
