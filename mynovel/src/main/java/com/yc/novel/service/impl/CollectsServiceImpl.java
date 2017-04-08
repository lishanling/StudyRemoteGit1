package com.yc.novel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.Collects;
import com.yc.novel.mapper.CollectsMapper;
import com.yc.novel.service.CollectsService;
@Service("collectsService")
public class CollectsServiceImpl implements CollectsService {
	@Autowired
	private CollectsMapper collectsMapper;
	@Override
	public boolean addCollects(Collects collects) {
		return collectsMapper.add(collects)>0;
	}

}
