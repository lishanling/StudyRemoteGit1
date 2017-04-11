package com.yc.novel.mapper;

import java.util.List;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;

public interface CollectsMapper {

	List<Collects> findCollects(String id);

	List<Collects> collectsCount();

	List<Book> dayList();

	List<Book> monthList();

	List<Book> latestList();

	List<Book> allList();

}
