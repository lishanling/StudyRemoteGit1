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
	public List<Collects> CollectsBook() {
		return collectsMapper.collectsCount();
	}

	@Override
	public List<Book> LatestList() {
		return collectsMapper.latestList();
	}

	@Override
	public List<Book> MonthList() {
		return collectsMapper.monthList();

	}

	public CollectsMapper CollectsMapper;

	@Override
	public List<Collects> findCollects(String id) {
		return CollectsMapper.findCollects(id);
	}


	@Override
	public List<Collects> findBook() {
		
		return CollectsMapper.findBook();
	}

}
