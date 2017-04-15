package com.yc.novel.web.handler;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Menu;
import com.yc.novel.service.MenuService;

@Controller("menuHandler")
@RequestMapping("menu")
public class MenuHandler {
 	
	@Autowired 	
	private MenuService menuService;
	
	@ResponseBody
	@RequestMapping(value="{info}")
 	public List<Menu> getMenuById(String id){
		return menuService.getMenuById(id);
  	} 
	
}