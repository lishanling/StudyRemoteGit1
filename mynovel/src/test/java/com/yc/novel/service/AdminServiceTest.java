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
	public void testLogin() {
		Admin admin=new Admin();
		admin.setApenname("Jol");
		admin.setApwd("m");
		admin=adminService.login(admin);
		assertNotNull(admin);
	}

}
