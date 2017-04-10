package com.yc.novel.service;

import com.yc.novel.entity.Collects;
import java.util.List;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;

public interface CollectsService {

   boolean addCollects(Collects collects);
	List<Collects> CollectsBook();

	List<Book> MonthList();

	List<Book> LatestList();

	List<Collects> findCollects(String id);

	List<Collects> findBook();

}
