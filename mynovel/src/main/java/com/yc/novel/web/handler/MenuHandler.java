package com.yc.novel.web.handler;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Menu;
import com.yc.novel.entity.PaginationBean;
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
	
	@RequestMapping("add")
	@ResponseBody
	public boolean add(Menu menu){
 		return menuService.addtMenu(menu);
	}

	@RequestMapping("list")
	@ResponseBody
	public PaginationBean<Menu> list(String rows,String page){
 		return menuService.listPartMenu(page,rows);
	}

	@RequestMapping("modify")
	@ResponseBody
	public boolean modify(Menu menu){
		return menuService.modifytMenu(menu);
	}

	@RequestMapping(value="delete",method=RequestMethod.POST)
	@ResponseBody
	public boolean delMenu(Menu menuid){
		return menuService.deleteMenu(menuid);
	}
	
}