package com.ezen.prj;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MainClass {

	public static void main(String[] args) {
		String resource = "com/ezen/prj/mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
			SqlSession session = sqlSessionFactory.openSession();
			MapperInterface mapper = session.getMapper(MapperInterface.class);
			BoardVO vo = mapper.selectOne(1);
			
			System.out.println(vo);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
