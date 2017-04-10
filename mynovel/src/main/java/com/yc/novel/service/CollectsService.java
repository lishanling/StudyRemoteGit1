package com.yc.novel.service;

import java.util.List;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;

public interface CollectsService {

	List<Collects> CollectsBook();

	List<Book> MonthList();


	List<Book> LatestList();


	List<Collects> findCollects(String id);

}
