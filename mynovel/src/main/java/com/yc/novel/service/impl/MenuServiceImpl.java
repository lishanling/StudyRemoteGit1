package com.yc.novel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.Menu;
import com.yc.novel.mapper.MenuMapper;
import com.yc.novel.service.MenuService;

@Service("menuService")
public class MenuServiceImpl implements MenuService{
	@Autowired
	private MenuMapper menuMapper;

	@Override
	public List<Menu> getMenuById(String id) {
		return menuMapper.findMenu();
	}

}
