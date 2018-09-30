package kr.co.tt.board.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.QnABoard;
import kr.co.tt.repository.mapper.QnABoardMapper;

@WebServlet("/html/qnaUpate.do")
public class QnAUpdate extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		QnABoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(QnABoardMapper.class);
		
		int no = Integer.parseInt(req.getParameter("no"));
		int memNo = Integer.parseInt(req.getParameter("memNo"));
		String title = req.getParameter("title");
		String content = req.getParameter("commentContent");
		
		QnABoard board = new QnABoard();
		board.setNo(no);
		board.setTitle(title);
		board.setContent(content);
		mapper.updateBoard(board);
	
		res.sendRedirect(req.getContextPath()+"/html/qnaDetail.do?no="+no+"&memNo="+memNo);
		
	}
}
