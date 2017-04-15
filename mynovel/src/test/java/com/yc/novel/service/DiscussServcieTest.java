package com.yc.novel.service;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Discuss;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class DiscussServcieTest {
	@Autowired
	private DiscussServcie discussServcie;
	@Test
	public void testFindAllDiscuss() {
		List<Discuss> ds=discussServcie.findAllDiscuss();
		System.out.println(ds);
		assertNotNull(ds);
	}

	@Test
	public void testGetDiscussById() {
		List<Discuss> ds=discussServcie.getDiscussById("B1001");
		System.out.println(ds);
		assertNotNull(ds);
	}
	@Test
	public void test3() {
		Discuss discuss=new Discuss();
		java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
		discuss.setDtime(currentDate);
		discuss.setBid("B1003");;
		discuss.setUsid("U1002");
		discuss.setDcontent("不好看");
		boolean result=discussServcie.insertDiscuss(discuss);
		System.out.println(result);
		assertNotNull(result);
	}

}
