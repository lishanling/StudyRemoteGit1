package com.yc.novel.mapper;

import java.util.List;

import com.yc.novel.entity.Menu;

public interface MenuMapper {
	List<Menu> findMenu(String bid);

}
