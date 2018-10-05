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
import kr.co.tt.repository.mapper.LoginMapper;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/html/main/bestPhoto.do")
public class BestController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		LoginMapper mapper2 = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		List<ReviewBoard> bestReviewList = mapper.bestCnt();
		List<String> imgList = new ArrayList<>();
		List<String> idList = new ArrayList<>();
		String id;
		
		for(ReviewBoard best: bestReviewList) {
			if(best.getContent().contains("img")==true) {
				String img = best.getContent().substring(best.getContent().indexOf("/imgfolder"),best.getContent().indexOf("jpg"));
				id = mapper2.selectMemberId(best.getMemNo());
				idList.add(id);
				imgList.add(img);
				
			} else if(best.getContent().contains("img")==false) {
				id = mapper2.selectMemberId(best.getMemNo());
				idList.add(id);
				imgList.add("none");
			}
		}
		
		System.out.println(bestReviewList);
		System.out.println(idList);
		System.out.println(imgList);
		req.setAttribute("bestReviewList", bestReviewList);
		req.setAttribute("idList", idList);
		req.setAttribute("imgList", imgList);
		// 공유가 되었다면 페이지를 이동
		RequestDispatcher rd= req.getRequestDispatcher("/html/main/photoBoard.jsp");
		rd.forward(req, res);
			
	}
}
