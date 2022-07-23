package com.trip.ex;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.trip.domain.FesDataDTO;

public class feapi {
	//url �����ؼ� xml ���� �������� parser�� ���ϴ� ���� �����ϴ� �۾�
	
	public static void main(String[] args){
	DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	try {
		DocumentBuilder builder = factory.newDocumentBuilder();
		// �������� �����ϴ� url ������ �����ؼ� ������ ��������
		StringBuffer pharm_url = new StringBuffer();
		pharm_url.append("http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival");
		pharm_url.append("?serviceKey=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D&numOfRows=3&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&eventStartDate=20220701");

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
				Node item_child = item_childlist.item(j);
//				System.out.print(item_child.getNodeName()+":"+item_child.getTextContent());
//				System.out.print(",");
			}
			
		System.out.println();
			for(int j=0; j<item_childlist.getLength(); j++) {
				String title = "";
				Node item_child = item_childlist.item(j);
				
				FesDataDTO dto = new FesDataDTO();
				
				if(item_child.getNodeName().equals("title")) {
					if(item_child.getTextContent() != null) {
						title = item_child.getTextContent();
						dto.setTitle(title);
					}
				}
				System.out.println(dto.getTitle());
			}
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