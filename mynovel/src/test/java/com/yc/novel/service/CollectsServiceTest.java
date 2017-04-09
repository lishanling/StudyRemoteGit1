package com.yc.novel.service;

import static org.junit.Assert.assertNotNull;

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
	public CollectsService collectsService;

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
	public void testLatestList() {
		System.out.println("开始执行  ===> testLatestList()");
		List<Book> latest =collectsService.LatestList();
		System.out.println(latest);
		assertNotNull(latest);
	}

}
