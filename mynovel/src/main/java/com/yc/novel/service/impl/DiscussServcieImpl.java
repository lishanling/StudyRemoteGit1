package com.yc.novel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.Discuss;
import com.yc.novel.mapper.DiscussMapper;
import com.yc.novel.service.DiscussServcie;

@Service("discussServcie")
public class DiscussServcieImpl implements DiscussServcie{

	@Autowired
	private DiscussMapper discussMapper;
	@Override
	public List<Discuss> findAllDiscuss() {
		return discussMapper.findDiscuss();
	}
	@Override
	public List<Discuss> getDiscussById(String id) {
		return discussMapper.findDiscussById(id);
	}

}
