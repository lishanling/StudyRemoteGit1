package com.yc.novel.service;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Menu;
import com.yc.novel.entity.PaginationBean;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class MenuServiceTest {

	@Autowired
	private MenuService menuservice;
	@Test
	public void testGetMenuById() {
		fail("Not yet implemented");
	}

	@Test
	public void testAddtMenu() {
		Menu menu=new Menu();
		menu.setMid("001");
		menu.setMname("测试章节");
		menu.setBid("B1010");
		menu.setBcontent("测试内容");
		boolean result=menuservice.addtMenu(menu);
		System.out.println(result);
		assertNotNull(result);
	}

	@Test
	public void testListPartMenu() {
		PaginationBean<Menu> menu=menuservice.listPartMenu("1","10");
		System.out.println(menu);

	}

	@Test
	public void testModifytMenu() {
		Menu menu=new Menu();
		menu.setMname("测试章节aaa");
		menu.setBcontent("测试内容aaa");
		menu.setMid("001");
		menu.setBid("B1010");
		boolean result=menuservice.modifytMenu(menu);
		System.out.println(result);
		assertNotNull(result);
	}

	@Test
	public void testDeleteMenu() {
		Menu menu=new Menu();
		menu.setMid("001");
		menu.setBid("B1010");
		boolean result=menuservice.deleteMenu(menu);
		System.out.println(result);
		assertNotNull(result);
	}

	@Test
	public void testSearch() {
		Menu menu=new Menu();
		menu.setBid("B1010");
		List<Menu> menus=menuservice.searchMenu(menu);
		System.out.println(menus);

	}

	@Test
	public void testFindByMid() {
		Menu menu=new Menu();
		menu.setBid("B1020");
		menu.setMid("第一章");
		menu=menuservice.findByMid(menu);
		System.out.println(menu);
		assertNotNull(menu);
	}


}
