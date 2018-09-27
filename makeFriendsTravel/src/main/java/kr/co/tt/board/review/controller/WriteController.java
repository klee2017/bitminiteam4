package kr.co.tt.board.review.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/jsp/board/review/write.do")
public class WriteController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
//		String uploadPath = "c:/app/upload";
//		
//		MultipartRequest mRequest = new MultipartRequest(
//				request, 
//				uploadPath, 
//				1024*1024*100, 
//				"utf-8", 
//				new DefaultFileRenamePolicy()
//		);
//		
//		String title = mRequest.getParameter("title");
//		String content = mRequest.getParameter("content");
		
		
		String title = request.getParameter("title");
		String content = request.getParameter("editordata");
		
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		ReviewBoard board = new ReviewBoard();
		
		board.setTitle(title);
		board.setContent(content);
		board.setMemNo(5);
		
		mapper.insertBoard(board);
		ReviewBoard r =mapper.sqcNo(title);
		int no = r.getNo();
		
		response.sendRedirect("/makeFriendsTravel/jsp/board/review/detail.do?no="+no);
	}
	
}
