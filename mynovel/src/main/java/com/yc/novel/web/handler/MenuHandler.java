package com.yc.novel.web.handler;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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
	public boolean delMenu(String menumid,String menubid) throws UnsupportedEncodingException{
		Menu menu=new Menu();
		menu.setBid(menubid);
		menumid=URLDecoder.decode(menumid, "utf-8");
		menu.setMid(menumid);
		return menuService.deleteMenu(menu);
	}
	
}