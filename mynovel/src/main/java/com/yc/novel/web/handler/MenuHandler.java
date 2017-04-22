package com.yc.novel.web.handler;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
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

	@RequestMapping(value="search",method=RequestMethod.POST)
	@ResponseBody
	public List<Menu> searchBid(String bid){
		Menu menu=new Menu();
		menu.setBid(bid);
		return menuService.searchMenu(menu);
	}
	@RequestMapping(value="gettext",method=RequestMethod.POST)
	@ResponseBody
	public Menu id(String bid,String mid) throws UnsupportedEncodingException{
		Menu menu=new Menu();
		mid=URLDecoder.decode(mid, "utf-8");
		menu.setBid(bid);
		menu.setMid(mid);
		menu=menuService.findByMid(menu);
		System.out.println(menu);
		File file = new File("E:/menu/"+menu.getBcontent());  
		BufferedReader br = null;  
		StringBuffer sb = new StringBuffer();  
		try{  
			br  = new BufferedReader(new FileReader(file));  
			String line = "";  
			while ((line = br.readLine()) != null){  
				sb.append(line);  
				sb.append('\n');  
			}  
			br.close();  
		}catch (Exception e){  
			e.printStackTrace();  
		}  
		menu.setBcontent(URLDecoder.decode(sb.toString(), "utf-8")); 
		System.out.println(menu.getBcontent());
		return menu;
	}

}