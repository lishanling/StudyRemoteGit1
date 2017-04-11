package com.yc.novel.service;

import java.util.List;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.PaginationBean;

public interface BookService {
	List<Book> getBooksByTypes(String bookTypesName) ;
 
	PaginationBean<Book> listPartBooks(String page, String rows);
	
	boolean updateBooks(Book book);

	boolean addBooks(Book book);
	
	boolean deleteBooks(Book book);

	List<Book> findAllbook();
	
	List<Book> selectBook(String name);
	
}
