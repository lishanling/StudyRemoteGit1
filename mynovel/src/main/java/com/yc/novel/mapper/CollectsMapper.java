package com.yc.novel.mapper;

import java.util.List;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;

public interface CollectsMapper {


	List<Book> findCollects(String usid);

	int add(Collects collects);

	List<Collects> collectsCount();

	List<Book> dayList();

	List<Book> monthList();

	List<Book> latestList();

	List<Book> allList();

	List<Book> findBook();

	int delCollect(String bid);
	int cnki(Collects collects);
	

}
