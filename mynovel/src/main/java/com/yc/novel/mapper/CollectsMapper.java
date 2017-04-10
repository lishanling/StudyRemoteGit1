package com.yc.novel.mapper;

import java.util.List;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;

public interface CollectsMapper {

	List<Collects> collectsCount();

	List<Book> monthList();

	List<Book> latestList();
	List<Collects> findCollects(String id);

	List<Collects> findBook();

}
