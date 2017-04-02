package com.lsl.spring;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.lsl.spring.impl.LoggingProxy;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CountTest {
	
	//使用切面
//	 @Autowired//相当于getbean
//	private Count count;
//
//	@Test
//	public void testAdd() {
//		int result=count.add(2, 1);
//		assertEquals(result, 3);
//	}
	@Autowired 
	private LoggingProxy loggingProxy;//使用代理的方式
	@Test
	public void testSub() {
		Count count=loggingProxy.countProxy();
		int result=count.sub(5, 4);
		assertEquals(result, 1);
	}

}
