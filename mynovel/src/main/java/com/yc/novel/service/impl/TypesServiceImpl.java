package com.yc.novel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.Types;
import com.yc.novel.mapper.TypesMapper;
import com.yc.novel.service.TypesService;
@Service("typesService")
public class TypesServiceImpl implements TypesService {
	
	@Autowired
	private  TypesMapper typesMapper;
	
	@Override
	public List<Types> findAll() {
 		 return typesMapper.getAll();
	}

}
