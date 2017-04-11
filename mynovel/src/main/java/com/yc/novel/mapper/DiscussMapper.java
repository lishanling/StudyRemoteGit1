package com.yc.novel.mapper;

import java.util.List;

import com.yc.novel.entity.Discuss;

public interface DiscussMapper {
	List<Discuss> findDiscuss();
List<Discuss> findDiscussById(String id);
	
}
