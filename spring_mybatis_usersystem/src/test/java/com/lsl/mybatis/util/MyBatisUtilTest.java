package com.lsl.mybatis.util;

import static org.junit.Assert.*;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyBatisUtilTest {

	@Test
	public void testGetSession() {
		assertNotNull("�ɹ�",MyBatisUtil.getSession().getConnection());
	}
	@Test
	public void testgetAutoTranscationSession() {
		assertNotNull("�ɹ�",MyBatisUtil.getAutoTranscationSession().getConnection());
	}
	@Test
	public void testConnection() throws SQLException {
		@SuppressWarnings("resource")
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring.xml");
		DataSource dataSource=(DataSource) ac.getBean("dataSource");
		assertNotNull("���ݿ�����ʧ��",dataSource.getConnection());
	}
	@Test
	public void testConnection2() {
		@SuppressWarnings("resource")
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring.xml");
		SqlSessionFactory sqlSessionFactory=(SqlSessionFactory) ac.getBean("sqlSessionFactory");
		assertNotNull("���ݿ�����ʧ��",sqlSessionFactory.openSession().getConnection());
		}

}
