package com.yc.novel.web.handler;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Collects;
import com.yc.novel.service.CollectsService;


import com.yc.novel.entity.Book;


@Controller("collectsHandler")
@RequestMapping("collect")
public class CollectsHandler {
	@Autowired 	
	private CollectsService collectsService;
	
	@RequestMapping("/get")
	@ResponseBody
 	public boolean getDetails(String bid,String usid){
	
	     System.out.println(usid);
		System.out.println(bid);
		usid=usid.trim();
		Collects collects=new Collects();
		collects.setBid(bid);
		collects.setUsid(usid);
		java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
		collects.setUdate(currentDate);
		return collectsService.addCollects(collects);
  	} 

	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	@ResponseBody
	public List<Collects> collectInfo(@PathVariable("id")String id){
		return collectsService.findCollects(id);
	}

	@RequestMapping("bookinfo")
	@ResponseBody
	public List<Collects> collectBook(){
		 return collectsService.findBook();
	}	

	@Resource(name="collectsServiceImpl")
	public void setCollectsService(CollectsService collectsService) {
		this.collectsService = collectsService;
	}

	@RequestMapping("collectsBook")
	@ResponseBody
	public List<Collects>  CollectsBook(){
		return collectsService.CollectsBook();
	}

	@RequestMapping("monthList")
	@ResponseBody
	public List<Book> MonthList(){
		return collectsService.MonthList();
	}

	@RequestMapping("/toList.action")
	//@ResponseBody
	public String LatestList(Model model){
		List<Book> list= collectsService.LatestList();
		model.addAttribute("book",list);
		return "back/list";
	}
}
