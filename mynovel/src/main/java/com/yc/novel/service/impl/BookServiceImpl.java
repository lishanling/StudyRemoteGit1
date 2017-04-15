package com.yc.novel.service.impl;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

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
	public List<Book> findAllbook() {
		List<Book> result = bookMapper.findAllBooks();
		return result;
	}

		@Override
		public boolean insertBooks(Book book, String sname) {
			Map<Object, Object> map = new HashMap<Object, Object>();
			map.put("book", book);
			System.out.println(book.getBauthor());
			map.put("sname", sname);
			return bookMapper.insertBook(map)>0;
		}

		@Override
		public boolean delbook(String bid) {
			return bookMapper.delBooks(bid)>0;
		}

	


	public Book getBookById(String bookId) {
		return bookMapper.findBookById(bookId);
	}

	@Override
	public List<Book> selectBook(String name) {
		return bookMapper.selectBook(name);
	}

}
