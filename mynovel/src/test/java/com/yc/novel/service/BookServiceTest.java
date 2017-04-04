package com.yc.novel.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.PaginationBean;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class BookServiceTest {
	@Autowired
	private BookService bookService;

	@Test
	public void testListPartBooks() {
		PaginationBean<Book> books=bookService.listPartBooks("1","3");
		System.out.println(books);
		assertNotNull(books);
	}
	@Test
	public void updateBooks() {
		Book book=new Book();
		book.setBid("B1002");
		book.setBauthor("三毛");
		boolean result=bookService.updateBooks(book);
		System.out.println(result);
		assertNotNull(result);
	}

}
