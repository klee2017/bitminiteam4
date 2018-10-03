package kr.co.tt.board.qna.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.Member;
import kr.co.tt.repository.domain.QnABoard;
import kr.co.tt.repository.domain.QnAComment;
import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.domain.ReviewComment;
import kr.co.tt.repository.mapper.BoardMapper;
import kr.co.tt.repository.mapper.LoginMapper;
import kr.co.tt.repository.mapper.QnABoardMapper;

@WebServlet("/html/qnaDetail.do")
public class QnADetailController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnABoardMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(QnABoardMapper.class);	
		int no = Integer.parseInt(request.getParameter("no"));
		QnABoard board = mapper.selectBoardByNo(no);
	
		request.setAttribute("board", board);
		
		LoginMapper mapper2 = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		String id = mapper2.selectMemberId(board.getMemNo());
		
		request.setAttribute("id", id);
		
		
		List<QnAComment> commentList = mapper.selectCommentList(no);
		request.setAttribute("commentList", commentList);
		
		
		try {
			request.setAttribute("commentNo", Integer.parseInt(request.getParameter("commentNo")));
		} catch (NumberFormatException e) {	}
		
		RequestDispatcher rd = request.getRequestDispatcher("/html/qnaDetail.jsp");
		rd.forward(request, response);
		
	}
}
	

