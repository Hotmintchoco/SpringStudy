package com.tv;

public class Test {

	public static void main(String[] args) {
		String str = "start/summary";
		
		int index = str.lastIndexOf("/");
		
		String val = str.substring(index);
		
		System.out.println(index);
		System.out.println(val);
	}

}
