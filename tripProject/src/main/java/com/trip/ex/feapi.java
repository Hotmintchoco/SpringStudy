package com.trip.ex;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class feapi {
	
	public static void main(String[] args){
		
		try {
			for(int i=0; i<10; i++) {
				Document doc = Jsoup.connect("http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival"
						+ "?serviceKey=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&eventStartDate=20220701").get();
				Elements title = doc.select("item title");
				
				System.out.println("번호 : " + (i+1));
				System.out.println(title.get(i).text());
			}		
					
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}