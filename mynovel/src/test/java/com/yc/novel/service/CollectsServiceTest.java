package com.yc.novel.service;

import static org.junit.Assert.*;

import java.util.List;

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
	public void testFindCollects() {
		List<Collects> result=collectsService.findCollects("leesin");
		System.out.println(result);
		assertEquals(result,true);
	}
	
	@Test
	public void testFindCollects01() {
		List<Collects> result=collectsService.findBook();
		System.out.println(result);
		
	}

}
