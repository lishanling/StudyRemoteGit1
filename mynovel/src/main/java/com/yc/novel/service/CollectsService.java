package com.yc.novel.service;

import java.util.List;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;

public interface CollectsService {

	List<Collects> findCollects(String id);

	List<Collects> CollectsBook();

	List<Book> DayList();

	List<Book> MonthList();

	List<Book> LatestList();

	List<Book> AllList();

}
