package com.yc.novel.mapper;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.PaginationBean;

public interface BookMapper {

	PaginationBean<Book> findPartBooks(PaginationBean<Book> pb);
	int updateBook(Book book);
	int insertBook(Book book);
	
	Book bookSSid(String id);
	
	Book addBook(String id);
	
	Book bookTypes(String id);

}
