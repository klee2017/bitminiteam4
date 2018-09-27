package kr.co.tt.board.main.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Weather {
	public static void main(String[] args) {
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
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
}
