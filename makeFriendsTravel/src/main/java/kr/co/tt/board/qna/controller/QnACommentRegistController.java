package kr.co.tt.board.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.QnAComment;
import kr.co.tt.repository.domain.ReviewComment;
import kr.co.tt.repository.mapper.QnABoardMapper;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/html/registComment.do")
public class QnACommentRegistController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		QnABoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(QnABoardMapper.class);
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		QnAComment comment = new QnAComment();
		comment.setNo(no);
		comment.setCommentContent(request.getParameter("commentContent"));
		comment.setMemNo(Integer.parseInt(request.getParameter("memNo")));
		
		mapper.insertComment(comment);
		
		response.sendRedirect("qnaDetail.do?no=" + no);
	}
	
}
