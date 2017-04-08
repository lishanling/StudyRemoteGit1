package com.yc.novel.service;

import java.util.List;

import com.yc.novel.entity.Book;

public interface BookService {
		List<Book> getBooksByTypes(String bookTypesName) ;
}
