package kr.co.tt.search.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.Member;
import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.mapper.LoginMapper;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/html/main/searchlist.do")
public class SearchListController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String book = req.getParameter("search_word");
		String id="";
		String img;
		
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		LoginMapper mapper2 = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		List<String> bookList = new ArrayList<>();
		List<String> linkList = new ArrayList<>();
		
		List<ReviewBoard> reviewList = mapper.selectBoard(); 
		List<ReviewBoard> reviewListResult = new ArrayList<>();
		
		List<ReviewBoard> bestReviewList = mapper.bestCnt();
		List<ReviewBoard> bestReviewListResult = new ArrayList<>();
		List<String> imgList = new ArrayList<>();
		List<String> idList = new ArrayList<>();
		
		try {
			Document doc = Jsoup.connect("https://book.naver.com/search/search.nhn?query="+book).get(); 
			
			Elements list = doc.select("div#content >ul.basic > li >div.thumb > div.thumb_type > a");

			
			for(Element e : list) {
				bookList.add(e.select("img").attr("src"));	
				linkList.add(e.attr("href"));
			}
			
			
			for(ReviewBoard r : reviewList) {
				if(r.getTitle().contains(book)==true) {
					reviewListResult.add(r);
				} else if(r.getContent().contains(book)==true) {
					reviewListResult.add(r);
				}
			
			}
			
			for(ReviewBoard best: bestReviewList) {
				if(best.getTitle().contains(book)==true && best.getRecCnt()>0) {
					bestReviewListResult.add(best);
					id = mapper2.selectMemberId(best.getMemNo());
					idList.add(id);
					
					if(best.getContent().contains("img")==true) {
						img = best.getContent().substring(best.getContent().indexOf("/imgfolder"),best.getContent().indexOf("jpg"));
						imgList.add(img);
						
						
					} else if(best.getContent().contains("img")==false) {
						imgList.add("none");
					
					}
				} else if(best.getContent().contains(book)==true && best.getRecCnt()>0) {
					bestReviewListResult.add(best);
					id = mapper2.selectMemberId(best.getMemNo());
					idList.add(id);
					if(best.getContent().contains("img")==true) {
						img = best.getContent().substring(best.getContent().indexOf("/imgfolder"),best.getContent().indexOf("jpg"));
						imgList.add(img);
				
						
					} else if(best.getContent().contains("img")==false) {
						imgList.add("none");
				
					}
				}
				
			}

			
			req.setAttribute("reviewListResult", reviewListResult);
			req.setAttribute("bookList", bookList);
			req.setAttribute("linkList", linkList);
			req.setAttribute("bestReviewListResult", bestReviewListResult);
			req.setAttribute("imgList", imgList);
			req.setAttribute("idList", idList);
			// 공유가 되었다면 페이지를 이동
			RequestDispatcher rd= req.getRequestDispatcher("/html/main/searchList.jsp");
			rd.forward(req, res);	
		} catch (IOException e) {
			
			System.out.println("어딜까");
		};
	}
}
