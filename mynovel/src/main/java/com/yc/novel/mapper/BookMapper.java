package com.yc.novel.mapper;
import java.util.List;

import java.util.Map;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.PaginationBean;
public interface BookMapper {

	List<Book> findBookBySort(String bookTypeName);

	PaginationBean<Book> findPartBooks(PaginationBean<Book> pb);
	int updateBook(Book book);
	int insertBook(Map<Object,Object> map);


	int deleteBooks(Book book);
	int insertBook(Book book);
	List<Book> findAllBooks();
	int addBooks(Book book);
	int delBooks(String bid);

	Book bookSSid(String id);

	Book addBook(String id);

	Book bookTypes(String id);


 }
