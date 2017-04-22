package com.yc.novel.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Menu;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class MenuServiceTest {
	@Autowired
	private MenuService menuService;
	@Test
	public void testFindByMid() {
		Menu menu=new Menu();
		menu.setBid("B1020");
		menu.setMid("第一章");
		menu=menuService.findByMid(menu);
		System.out.println(menu);
		assertNotNull(menu);
	}
	

}
