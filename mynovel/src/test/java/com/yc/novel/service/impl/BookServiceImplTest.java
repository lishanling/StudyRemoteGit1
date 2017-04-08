package com.yc.novel.service.impl;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Book;
import com.yc.novel.service.BookService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class BookServiceImplTest {

	@Autowired
	private  BookService service;
	//"select b.* from book b left join types where sname = "学术" "
	@Test
	public void testBooksByTypes(){
		System.out.println("hello");
		List<Book>  books = service.getBooksByTypes("学术");
		for(Book book : books){
			System.out.println("book==>>>"+book);
		}
	}
	
	@Test
	public void testFindAll(){
		List<Book>  books = service.findAllbook();
		for(Book book : books){
			System.out.println("book==>>>"+book);
		}
	}

}
