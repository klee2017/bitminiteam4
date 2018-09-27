package kr.co.tt.board.main.controller;

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

@WebServlet("/html/main/main.do")
public class MainController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		try {
			List<String> weatherList = new ArrayList<>();
			Document doc = Jsoup.connect("http://www.daum.net").get(); 
			Elements list = doc.select("ul.list_weather > li.hide");
			for(Element e : list) {
				if(e.select("span.txt_part").html().equals("부산시")) {
					weatherList.add(e.child(1).html());
					weatherList.add(e.child(2).html());
					weatherList.add(e.child(4).html()+e.child(5).text());

				}
				
			
			}
			
			req.setAttribute("weatherList", weatherList);
			// 공유가 되었다면 페이지를 이동
			RequestDispatcher rd= req.getRequestDispatcher("/html/main/main2.jsp");
			rd.forward(req, res);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		
	}
}
