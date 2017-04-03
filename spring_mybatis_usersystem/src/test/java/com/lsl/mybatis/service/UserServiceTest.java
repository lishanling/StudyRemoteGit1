package com.lsl.mybatis.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lsl.mybatis.util.Encrypt;
import com.lsl.mybatis.util.User;

public class UserServiceTest {

	@Test
	public void testLogin() {
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring.xml");
		UserService userService=(UserService) ac.getBean("userService");
		User user=new User();
		user.setName("dblwv");
		user.setPassword("aaaaaa");
		user=userService.login(user);
		System.out.println(user);
		assertNotNull(user);
	}

}
