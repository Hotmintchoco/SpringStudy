package com.spring.book.ioc.injection;

import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class CollectionBean {
	private Set<String> addressList;
	private Map<String, String> addressMap;
	private Properties addressProperties;

	public void setAddressList(Set<String> addressList) {
		this.addressList = addressList;
	}
	
	public Set<String> getAddressList() {
		return addressList;
	}

	public Map<String, String> getAddressMap() {
		return addressMap;
	}

	public void setAddressMap(Map<String, String> addressMap) {
		this.addressMap = addressMap;
	}

	public Properties getAddressProperties() {
		return addressProperties;
	}

	public void setAddressProperties(Properties addressProperties) {
		this.addressProperties = addressProperties;
	}
	
}
