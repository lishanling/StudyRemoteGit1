package com.yc.novel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.Collects;
import com.yc.novel.mapper.CollectsMapper;
import com.yc.novel.service.CollectsService;
@Service("collectsService")
public class CollectsServiceImpl implements CollectsService {

	@Autowired
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
