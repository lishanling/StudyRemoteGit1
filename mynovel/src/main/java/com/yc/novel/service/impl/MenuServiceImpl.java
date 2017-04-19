package com.yc.novel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.Menu;
import com.yc.novel.entity.PaginationBean;
import com.yc.novel.mapper.MenuMapper;
import com.yc.novel.service.MenuService;

@Service("menuService")
public class MenuServiceImpl implements MenuService{
	@Autowired
	private MenuMapper menuMapper;

	@Override
	public List<Menu> getMenuById(String id) {
		return menuMapper.findMenu(id);
	}

	@Override                             
	public boolean addtMenu(Menu menu) {
		return menuMapper.addMenu(menu)>0;
	}

	@Override
	public PaginationBean<Menu> listPartMenu(String page, String rows) {
		
		PaginationBean<Menu> pb=new PaginationBean<Menu>();
		if(page!=null){
			pb.setCurrPage(Integer.parseInt(page));
		}
		if(rows!=null){
			pb.setPageSize(Integer.parseInt(rows));
		}
		return menuMapper.findPartMenu(pb);
	}

	@Override
	public boolean modifytMenu(Menu menu) {
		return menuMapper.modifytMenu(menu)>0;
	}

	@Override
	public boolean deleteMenu(Menu menuid) {
		return menuMapper.deleteMenu(menuid)>0;
	}

	@Override
	public List<Menu> searchMenu(Menu menu) {
		return menuMapper.searchMenu(menu);
	}

}
