package com.yc.novel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;
import com.yc.novel.mapper.CollectsMapper;
import com.yc.novel.service.CollectsService;

@Service
public class CollectsServiceImpl implements CollectsService {

	@Autowired
	public CollectsMapper collectsMapper;

	public void setCollectsmapper(CollectsMapper collectsmapper) {
		this.collectsMapper = collectsmapper;
	}

	@Override
	public List<Collects> findCollects(String id) {
		return collectsMapper.findCollects(id);
	}


	@Override
	public List<Collects> CollectsBook() {
		return collectsMapper.collectsCount();
	}

	@Override
	public List<Book> LatestList() {
		return collectsMapper.latestList();
	}

	@Override
	public List<Book> AllList() {
		return collectsMapper.allList();
	}

	@Override
	public List<Book> DayList() {
		return collectsMapper.dayList();
	}

	@Override
	public List<Book> MonthList() {
		return collectsMapper.monthList();
	}

}
