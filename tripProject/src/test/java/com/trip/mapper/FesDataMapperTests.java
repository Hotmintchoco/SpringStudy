package com.trip.mapper;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

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
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder builder = factory.newDocumentBuilder();
			// �������� �����ϴ� url ������ �����ؼ� ������ ��������
			StringBuffer pharm_url = new StringBuffer();
			pharm_url.append("http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival");
			pharm_url.append("?serviceKey=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&eventStartDate=20220701");
	
			//�������� �������ϱ�
			URL url = new URL(pharm_url.toString());
			
			
			//�����ؼ� ������ �о����
		BufferedInputStream xmldata = new BufferedInputStream(url.openStream());
			Document document = builder.parse(xmldata);//inputstream ��ü�� ���·� �Ľ��� ������ �Ѱ��ش�
			
			Element root = document.getDocumentElement();
			System.out.println(root.getTagName());
			NodeList list = root.getElementsByTagName("item");
			System.out.println(list.getLength());
			
			for(int i=0; i<list.getLength(); i++) {
				Node node =list.item(i);
				NodeList item_childlist = node.getChildNodes();
				
				for(int j=0; j<item_childlist.getLength(); j++) {
					String title="", address="", endDate="", startDate="",
							firstImage="", mapX="", mapY="";
					int mLevel= 0;
					Node item_child = item_childlist.item(j);
//					System.out.print(item_child.getNodeName()+":"+item_child.getTextContent());
//					System.out.print(",");
					
					FesDataDTO dto = new FesDataDTO();
					
					if(item_child.getNodeName().equals("title")) {
						title = item_child.getTextContent();
					}
					if(title.length()>=5)
						dto.setTitle(title);
					if(item_child.getNodeName().equals("addr1")) {
						address = item_child.getTextContent();
						if(address.length()>=1)
						dto.setAddress(address);
					}
					if(item_child.getNodeName().equals("eventenddate")) {
						endDate = item_child.getTextContent();
						if(endDate.length()>=1)
						dto.setEndDate(endDate);
					}
					if(item_child.getNodeName().equals("eventstartdate")) {
						startDate = item_child.getTextContent();
						if(startDate.length()>=1)
						dto.setStartDate(startDate);
					}
					if(item_child.getNodeName().equals("firstimage")) {
						firstImage = item_child.getTextContent();
						if(firstImage.length()>=1)
						dto.setFirstImg(firstImage);
					}
					if(item_child.getNodeName().equals("mapx")) {
						mapX  = item_child.getTextContent();
						if(mapX.length()>=1)
						dto.setMapX(mapX);
					}
					if(item_child.getNodeName().equals("mapy")) {
						mapY = item_child.getTextContent();
						if(mapY.length()>=1)
						dto.setMapY(mapY);
					}
					if(item_child.getNodeName().equals("mlevel")) {
						mLevel = Integer.parseInt(item_child.getTextContent());
						if(mLevel>=0)
						dto.setMLevel(mLevel);
					}
					System.out.println(dto.getTitle());
//					mapper.insert(dto);
				}
//			System.out.println();
			}
			
		}catch (ParserConfigurationException e) {
			e.printStackTrace();
		}catch (SAXException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
}
