package com.yc.novel.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Admin;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AdminServiceTest {
	@Autowired
	private AdminService adminService;

	@Test
	public void testModifytAdmin() {
		Admin admin=new Admin();
		admin.setApenname("Model");
		admin.setApwd("aa");
		admin.setAid("A1001");
		boolean result=adminService.modifytAdmin(admin);
		System.out.println(admin);
		assertEquals(result,true);
	}
	
	@Test
	public void testaddAdmin() {
		Admin admin=new Admin();
		admin.setApenname("Start");
		admin.setApwd("aa");
		boolean result=adminService.addtAdmin(admin);
		System.out.println(admin);
		assertEquals(result,true);
	}

	

}
