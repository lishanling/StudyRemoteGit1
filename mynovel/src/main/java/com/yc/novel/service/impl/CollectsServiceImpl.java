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
	private CollectsMapper collectsMapper;
	@Override
	public boolean addCollects(Collects collects) {
		return collectsMapper.add(collects)>0;
	}

	public void setCollectsmapper(CollectsMapper collectsmapper) {
		this.collectsMapper = collectsmapper;
	}

	@Override
	public List<Book> findCollects(String usid) {
		return collectsMapper.findCollects(usid);
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

	@Override
	public List<Book> findBook() {
		
		return collectsMapper.findBook();
	}

	@Override
	public boolean delCollect(String bid) {
		return collectsMapper.delCollect(bid)>0;
	}

	@Override
	public boolean mycnki(Collects c) {
		return collectsMapper.cnki(c)>0;
	}


}
