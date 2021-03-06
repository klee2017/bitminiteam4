package kr.co.tt.board.qna.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.Member;
import kr.co.tt.repository.domain.QnABoard;
import kr.co.tt.repository.mapper.LoginMapper;
import kr.co.tt.repository.mapper.QnABoardMapper;

@WebServlet("/html/qnaWrite.do")
public class QnAWriteBoardController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String writerNo = req.getParameter("writerNo");
		String title  = req.getParameter("title");
		String content = req.getParameter("content");
		
		QnABoard board = new QnABoard();
		board.setMemNo(Integer.parseInt(writerNo));
		board.setTitle(title);
		board.setContent(content);
		
		QnABoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(QnABoardMapper.class);
		mapper.insertQnaBoard(board);
		
		res.sendRedirect(req.getContextPath()+"/html/qnaList.do");
		
	}
}
	

