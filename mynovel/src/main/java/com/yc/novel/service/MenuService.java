package com.yc.novel.service;

import java.util.List;

import com.yc.novel.entity.Menu;
import com.yc.novel.entity.PaginationBean;

public interface MenuService {

	List<Menu> getMenuById(String bid);

	boolean addtMenu(Menu menu);

	PaginationBean<Menu> listPartMenu(String page, String rows);

	boolean modifytMenu(Menu menu);

	boolean deleteMenu(Menu menu);

}
