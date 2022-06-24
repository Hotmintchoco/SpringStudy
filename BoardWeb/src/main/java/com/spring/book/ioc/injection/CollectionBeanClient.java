package com.spring.book.ioc.injection;

import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {

	public static void main(String[] args) {
		AbstractApplicationContext factory = 
				new GenericXmlApplicationContext("applicationContext.xml");
		
		CollectionBean bean = (CollectionBean) factory.getBean("collectionBean");
		Set<String> addressList = bean.getAddressList();
		for (String address : addressList) {
			System.out.println(address.toString());
		}
		System.out.println("----------Map----------");
		
		Map<String, String> addressMap = bean.getAddressMap();
		for (String key : addressMap.keySet()) {
			System.out.println(key + " : " + addressMap.get(key));
		}
		System.out.println("----------Properties----------");
		
		Properties properties = bean.getAddressProperties();
		for (String key : properties.stringPropertyNames()) {
			System.out.println(key + " : " + properties.get(key));
		}
		factory.close();
	}

}
