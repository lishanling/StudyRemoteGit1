package com.yc.novel.service;

import static org.junit.Assert.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Users;
import com.yc.novel.util.Encrypt;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UsersServiceTest {
	@Autowired 
	private UsersService users;
	@Test
	public void testLogin() {

		Users user=new Users();
		user.setUname("�¿�");
		user.setUpwd("u");
		System.out.println(user);
		user=users.login(user);
		System.out.println(user);
		assertNotNull(user);
	}
	@Test
	public void testRes() {
		Users user=new Users();
		user.setUname("4��");
		user.setUpwd("u");
		user.setUemail("23955524@qq.com");
		System.out.println(user);
		user=users.register(user);
		System.out.println(user);
		System.out.println(user);
		assertNotNull(user);
	}
}

