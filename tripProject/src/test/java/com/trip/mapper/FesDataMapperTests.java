package com.trip.mapper;

import java.util.Iterator;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.trip.domain.FesDataDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class FesDataMapperTests {
	@Autowired
	private FesDataMapper mapper;
	
	@Test
	public void testInsert() {
		try {
			int k=1;
			Document doc = Jsoup.connect("http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival"
					+ "?serviceKey=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D&MobileOS=ETC&numOfRows=100&MobileApp=AppTest&arrange=A&listYN=Y&eventStartDate=20220701").get();
			Elements all = doc.select("item");
			Elements el = doc.getElementsByAttribute("firstimage");
			
//			Elements row = doc.select("item");
//			for(Element row2 : row){
//				Iterator<Element> it = row2.getElementsByTag("title").iterator();
//				while(it.hasNext()) {
//					String title = it.next().text();
//					System.out.println(title);
//					}
//				} 
			Elements title = all.select("title");
			Elements address = all.select("addr1");
			Elements startDate = all.select("eventstartdate");
			Elements endDate = all.select("eventenddate");
			Elements firstImg = all.select("firstimage");
			Elements mapX = all.select("mapx");
			Elements mapY = all.select("mapy");
			Elements mLevel = all.select("mlevel");
			
			for(int i=0; i<10; i++) {
				
				String imgTmp = all.get(i).html();
				if (!(imgTmp.contains("firstimage"))) {
					Element elImg = new Element("firstimage");
					firstImg.add(i, elImg);
					System.out.println("noimage");
				}
				
				
				System.out.println("번호 : " + (i+1));
				FesDataDTO dto = new FesDataDTO();
				dto.setTitle(title.get(i).text());
				dto.setAddress(address.get(i).text());
				dto.setStartDate(startDate.get(i).text());
				dto.setEndDate(endDate.get(i).text());
				dto.setFirstImg(firstImg.get(i).text());
				dto.setMapX(mapX.get(i).text());
				dto.setMapY(mapY.get(i).text());
//				dto.setMLevel(Integer.parseInt(mLevel.get(i).text()));
				
				
				System.out.println(dto.getTitle());
				System.out.println(dto.getAddress());
				System.out.println(dto.getStartDate());
				System.out.println(dto.getEndDate());
				System.out.println(dto.getFirstImg());
				System.out.println(dto.getMapX());
				System.out.println(dto.getMapY());
//				System.out.println(dto.getMLevel());
			}		
					
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
