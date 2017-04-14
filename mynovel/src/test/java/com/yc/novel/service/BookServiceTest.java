package com.yc.novel.service;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
	public void test3() {
		List<Book> b=bookService.getBooksByTypes("科幻");
		System.out.println(b);
		assertNotNull(b);
	}
	@Test
	public void updateBooks() {
		Book book=new Book();
		book.setBid("B1001");
		book.setBauthor("三毛");
		book.setBdate(null);
		boolean result=bookService.updateBooks(book);
		System.out.println(result);
		assertNotNull(result);
	}
	@Test
	public void testFindBooks() {
		List<Book> book=bookService.findAllbook();
		System.out.println(book);
		assertNotNull(book);
	}

	
	@Test
	public void testselectBook() {
		List<Book> book=bookService.selectBook("七");
		System.out.println(book);
		assertNotNull(book);
	}
	@Test
	public void testdelBooks() {
		boolean result=bookService.delbook("B1025");
		System.out.println(result);
		assertNotNull(result);
	}
	@Test
	public void test2() {
		Book result=bookService.getBookById("B1002");
		System.out.println(result);
		assertNotNull(result);
	}
	
	@Test
	public void testinsertBooks() throws ParseException {
		Book book=new Book();
		book.setBname("sdaf");
		book.setBauthor("dfasdf");
		book.setBcopyright("sakjfwio");
		book.setBdesc("djshfahk");
		String a="2011-3-2";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date=sdf.parse(a);
		java.sql.Date date2=new java.sql.Date(date.getTime());
		book.setBdate(date2);
		book.setBpic("images/book5.jpg");
		book.setBurl("http://dsfa.com");
		
		boolean result=bookService.insertBooks(book, "爱情");
		System.out.println(result);
		assertNotNull(result);
	}

}
