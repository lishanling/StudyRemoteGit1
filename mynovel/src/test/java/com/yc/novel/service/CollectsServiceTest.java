package com.yc.novel.service;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Collects;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CollectsServiceTest {
	@Autowired
	private CollectsService collectsService;
	@Test
	public void testAddCollects() throws ParseException {
		Collects c=new Collects();
		c.setBid("B1005");
		c.setUsid("U1001");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date=sdf.parse(df.format(new Date()));
		java.sql.Date date2=new java.sql.Date(date.getTime());
		c.setUdate(date2);
		boolean result=collectsService.addCollects(c);
		System.out.println(result);
		assertNotNull(result);
	}

}
