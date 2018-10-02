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

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.domain.ReviewComment;
import kr.co.tt.repository.mapper.LoginMapper;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/jsp/board/review/detail.do")
public class DetailController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		int no = Integer.parseInt(request.getParameter("no"));
		ReviewBoard board = mapper.selectBoardByNo(no);
		
		request.setAttribute("board", board);
		
		LoginMapper mapper2 = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		String id = mapper2.selectMemberId(board.getMemNo());
		
		request.setAttribute("id", id);
		
		List<ReviewComment> commentList = mapper.selectCommentList(no);
		request.setAttribute("commentList", commentList);
		
		List<String> cIdList = new ArrayList<>();
		String cId;
		
		for (ReviewComment c : commentList) {
			cId = mapper2.selectMemberId(c.getMemNo());
			cIdList.add(cId);
		}
		
		request.setAttribute("cIdList",	cIdList);
		
		try {
			request.setAttribute("commentNo", Integer.parseInt(request.getParameter("commentNo")));
		} catch (NumberFormatException e) {	}
		
		List<String> cImgList = new ArrayList<>();
		String cImg;
		
		for (ReviewComment c : commentList) {
			cImg = mapper2.selectMemberPhoto(c.getMemNo());
			cImgList.add(cImg);
		}
		
		request.setAttribute("cImgList", cImgList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/board/review/reviewDetail.jsp");
		rd.forward(request, response);
	}
	
}
