package com.yc.novel.service;

import java.util.List;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.PaginationBean;

public interface BookService {
	List<Book> getBooksByTypes(String bookTypesName) ;

	PaginationBean<Book> listPartBooks(String page, String rows);

	boolean updateBooks(Book book);
	boolean insertBooks(Book book,String sname);
	boolean delbook(String bid);

	List<Book> findAllbook();

	Book getBookById(String bookId);

	List<Book> selectBook(String name);
	List<Book> searchAllBook();
}
