package com.yc.novel.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Users;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UsersServiceTest {

	@Autowired
	private UsersService users;

	@Test
	public void testLogin() {
		//asdasda
		Users user=new Users();
		user.setUname("陈看");
		user.setUpwd("u");
		System.out.println(user);
		user=users.login(user);
		System.out.println(user);
		assertNotNull(user);
	}



}

