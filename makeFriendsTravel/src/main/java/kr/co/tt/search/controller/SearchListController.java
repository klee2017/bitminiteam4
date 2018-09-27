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

@WebServlet("/html/main/searchlist.do")
public class SearchListController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String book = req.getParameter("search_word");
		System.out.println(book);
		
		List<String> bookList = new ArrayList<>();
		try {
			Document doc = Jsoup.connect("https://book.naver.com/search/search.nhn?query="+book).get(); 
			
			Elements list = doc.select("div#content >ul.basic > li >div.thumb > div.thumb_type > a >img");

			
			for(Element e : list) {
				bookList.add(e.attr("src"));
				System.out.println(e.attr("src"));
				
			}
		
			req.setAttribute("bookList", bookList);
			// 공유가 되었다면 페이지를 이동
			RequestDispatcher rd= req.getRequestDispatcher("/html/main/searchList.jsp");
			rd.forward(req, res);	
		} catch (IOException e) {
			
			e.printStackTrace();
		};
	}
}
