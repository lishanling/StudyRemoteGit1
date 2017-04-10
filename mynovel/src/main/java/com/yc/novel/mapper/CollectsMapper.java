package com.yc.novel.mapper;

import com.yc.novel.entity.Collects;
import java.util.List;

import com.yc.novel.entity.Book;

public interface CollectsMapper {

	int add(Collects collects);
	List<Collects> collectsCount();

	List<Book> monthList();

	List<Book> latestList();
	List<Collects> findCollects(String id);

	List<Collects> findBook();

}
