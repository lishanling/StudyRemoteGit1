package com.yc.novel.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CollectsServiceTest {
	@Autowired
	private CollectsService collectsService;
	@Test
	public void testAddCollects() throws ParseException {
		Collects c=new Collects();
		c.setBid("B1006");
		c.setUsid("U1004");
		 java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
	      c.setUdate(currentDate);
		boolean result=collectsService.addCollects(c);
		System.out.println(result);
		assertNotNull(result);
	}
	@Test
	public void testFindCollects() {
		List<Collects> result=collectsService.findCollects("U1003");
		System.out.println(result);
		assertEquals(result,true);
	}


	@Test
	public void testCollectsBook() {
		System.out.println("开始执行  ===> testCollectsBook()");
		List<Collects> count =collectsService.CollectsBook();
		System.out.println(count);
		assertNotNull(count);
	}

	@Test
	public void testMonthList() {
		System.out.println("开始执行  ===> testMonthList()");
		List<Book> month =collectsService.MonthList();
		System.out.println(month);
		assertNotNull(month);
	}

	@Test
	public void testAllList() {
		System.out.println("开始执行  ===> testAllList()");
		List<Book> month =collectsService.MonthList();
		System.out.println(month);
		assertNotNull(month);
	}

	@Test
	public void testLatestList() {
		System.out.println("开始执行  ===> testlatestList()");
		List<Book> month =collectsService.MonthList();
		System.out.println(month);
		assertNotNull(month);
	}


	@Test
	public void testFindCollects01() {
		List<Book> result=collectsService.findBook();
		System.out.println(result);

	}

	@Test
	public void testDayList() {
		System.out.println("开始执行  ===> testMonthList()");
		List<Book> month =collectsService.MonthList();
		System.out.println(month);
		assertNotNull(month);
	}
}
