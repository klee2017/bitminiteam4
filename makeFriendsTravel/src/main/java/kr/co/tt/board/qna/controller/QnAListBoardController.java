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

@WebServlet("/html/qnaList.do")
public class QnAListBoardController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		List<String> idList = new ArrayList<>();
		String id;
		QnABoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(QnABoardMapper.class);	
		LoginMapper mapper2 = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		List<QnABoard> list = mapper.selectQnaBoard();
		
		for(QnABoard b : list) {
			id  = mapper2.selectMemberId(b.getMemNo());
			idList.add(id);
		}
		
		System.out.println(idList);
		req.setAttribute("list", list);
		req.setAttribute("idList", idList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/html/Q&AList.jsp");
		rd.forward(req, res);
		
	}
}
	

