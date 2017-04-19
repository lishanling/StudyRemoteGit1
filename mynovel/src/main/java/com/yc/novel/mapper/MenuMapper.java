package com.yc.novel.mapper;

import java.util.List;

import com.yc.novel.entity.Menu;
import com.yc.novel.entity.PaginationBean;

public interface MenuMapper {
	List<Menu> findMenu(String bid);

	int addMenu(Menu menu);

	PaginationBean<Menu> findPartMenu(PaginationBean<Menu> pb);

	int modifytMenu(Menu menu);

	boolean deleteMenu(Menu menuid);

	List<Menu> searchMenu(Menu menu);

}
