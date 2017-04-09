package com.yc.novel.mapper;
import java.util.List;
import com.yc.novel.entity.Book;
import com.yc.novel.entity.PaginationBean;
public interface BookMapper {
		
	List<Book> findBookBySort(String bookTypeName);		 
 	
	PaginationBean<Book> findPartBooks(PaginationBean<Book> pb);
	int updateBook(Book book);


	int deleteBooks(Book book);
	
	int addBooks(Book book);
	

	int insertBook(Book book);
	List<Book> findAllBooks();


 }
