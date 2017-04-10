package com.yc.novel.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Types;
import com.yc.novel.service.TypesService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class TypesServiceImplTest {
	@Autowired
	private  TypesService service;
	@Test
	public void testFindAll(){
		System.out.println("hello");
		List<Types>  sorts = service.getTypes();

		System.out.println("success");
		assertNotNull(sorts);
		for(Types s : sorts){
			System.out.println("====>"+s);
		}
	}

}
