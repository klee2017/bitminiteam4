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
		List<String> weatherList = new ArrayList<>();
		try {
			Document doc = Jsoup.connect("https://search.daum.net/search?w=tot&q=날씨&DA=TMN").get(); 
			
			Elements list1 = doc.select("div.info_detail > div.wrap_today > a > div.info_weather > span.wrap_desc > span.desc_temp");
			Elements list2 = doc.select("div.info_detail > strong.tit_info");
			System.out.println(list1);
			String weather="";
			
			
			weatherList.add(list2.text());
			weatherList.add(list1.select("span.txt_weather").text());
			weatherList.add(list1.select("strong").text());
				
			
			req.setAttribute("weatherList", weatherList);
			// 공유가 되었다면 페이지를 이동
			RequestDispatcher rd= req.getRequestDispatcher("/html/main/main2.jsp");
			rd.forward(req, res);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		
	}
}
