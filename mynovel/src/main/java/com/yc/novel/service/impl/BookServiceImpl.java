package com.yc.novel.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yc.novel.entity.Book;
import com.yc.novel.entity.PaginationBean;
import com.yc.novel.mapper.BookMapper;
import com.yc.novel.mapper.TypesMapper;
import com.yc.novel.service.BookService;

@Service("bookService")
public class BookServiceImpl implements BookService {
	@Autowired

	private BookMapper bookMapper;
	@Autowired
	private  TypesMapper typesMapper;

	@Override
	public List<Book> getBooksByTypes(String bookTypesName){
		return bookMapper.findBookBySort(bookTypesName);
	}

	@Override
	public PaginationBean<Book> listPartBooks(String page, String rows) {
		PaginationBean<Book> pb=new PaginationBean<Book>();
		if(page!=null){
			pb.setCurrPage(Integer.parseInt(page));
		}
		if(rows!=null){
			pb.setPageSize(Integer.parseInt(rows));
		}
		return bookMapper.findPartBooks(pb);
	}

	@Override
	public boolean updateBooks(Book book) {
		return bookMapper.updateBook(book)>0;
	}


	@Override
	public boolean addBooks(Book book) {
		return bookMapper.addBooks(book)>0;
	}

	@Override
	public List<Book> findAllbook() {
		List<Book> result = bookMapper.findAllBooks();
		return result;
	}


	@Override
	public boolean deleteBooks(Book book) {
		return bookMapper.deleteBooks(book)>0;
	}

	@Override
	public List<Book> selectBook(String name) {
		
		return bookMapper.selectBook(name);
	}


}
