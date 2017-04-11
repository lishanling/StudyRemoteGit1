package com.yc.novel.service;

import java.util.List;

import com.yc.novel.entity.Discuss;

public interface DiscussServcie {
	List<Discuss> findAllDiscuss();
	List<Discuss> getDiscussById(String id);
	 
}
