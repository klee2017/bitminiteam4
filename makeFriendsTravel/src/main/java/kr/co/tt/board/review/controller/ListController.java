package kr.co.tt.board.review.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.mapper.LoginMapper;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/jsp/board/review/list.do")
public class ListController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		List<ReviewBoard> list = mapper.selectBoard();
	
		LoginMapper mapper2 = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		List<String> idList = new ArrayList<>();
		String id;
		
		for (ReviewBoard b : list) {
			id = mapper2.selectMemberId(b.getMemNo());
			idList.add(id);
		}
		
		request.setAttribute("list", list);
		request.setAttribute("idList", idList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/board/review/reviewList.jsp");
		rd.forward(request, response);
	}
	
}
