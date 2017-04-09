package com.yc.novel.service;

import java.util.List;

import com.yc.novel.entity.Collects;

public interface CollectsService {

	List<Collects> findCollects(String id);

}
