package com.yc.novel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.Book;
import com.yc.novel.mapper.BookMapper;
import com.yc.novel.service.BookService;

@Service("bookService")
public class BookServiceImpl implements BookService {
	@Autowired
	private BookMapper bookMapper;	
	
	@Override
	public List<Book> getBooksByTypes(String bookTypesName){
		   return bookMapper.findBookBySort(bookTypesName);
	}

}
