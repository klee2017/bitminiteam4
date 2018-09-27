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
			Document doc = Jsoup.connect("https://search.daum.net/search?w=tot&q=%EB%82%A0%EC%94%A8&DA=TMN").get(); 
			
			Elements list1 = doc.select("div.info_detail > div.wrap_today > a > div.info_weather > span.wrap_desc > span.desc_temp");
			Elements list2 = doc.select("div.info_detail > strong.tit_info");
			
			System.out.println(list2.text().substring(0, 9));
			weatherList.add(list2.text());
			weatherList.add(list1.text().substring(0,2));
			weatherList.add(list1.text().substring(3,6));
		
			

		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
}
/*
<div class="info_weather"> 
   <span class="wrap_desc "> 
   		<span class="ico_wl ico_w01"></span> 
   		<span class="desc_temp"> 
   			<span class="txt_weather">맑음</span> 
   			<strong class="txt_temp">21
   				<span class="txt_unit">℃</span>
   			</strong> 
   		</span> 
   	</span> 
  </div>
 */