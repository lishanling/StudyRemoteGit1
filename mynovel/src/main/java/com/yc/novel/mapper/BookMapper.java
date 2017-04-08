package com.yc.novel.mapper;

import java.util.List;

import com.yc.novel.entity.Book;

public interface BookMapper {
		
		 List<Book> findBookBySort(String bookTypeName);		 
}
