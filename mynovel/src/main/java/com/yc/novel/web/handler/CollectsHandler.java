package com.yc.novel.web.handler;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Collects;
import com.yc.novel.service.CollectsService;


import com.yc.novel.entity.Book;



@Controller()
@RequestMapping("collect")
public class CollectsHandler {
	@Autowired 	
	private CollectsService collectsService;
	
	@RequestMapping("get")
	@ResponseBody
 	public boolean getDetails(String bid,String usid){
		System.out.println("sdf");
		System.out.println(bid);
		/*
		HttpSession session=null;
		//String session.getAttribute("");
		Collects collects=new Collects();
		collects.setBid(bid);
		Users user=(Users) session.getAttribute("loginUser");
		collects.setUsid(user.getUsid());*/
		 return true;
  	} 

	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	@ResponseBody
	public List<Collects> collectInfo(@PathVariable("id")String id){
		return collectsService.findCollects(id);
	}

	/*@RequestMapping("bookinfo")
	@ResponseBody
	public List<Collects> collectBook(){
		 return collectsService.findBook();
	}	*/

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

	/*@RequestMapping("/toList.action")
	//@ResponseBody
	public String LatestList(Model model){
		List<Book> list= collectsService.LatestList();
		model.addAttribute("book",list);
		return "back/list";
	}*/
	
	@RequestMapping("/toList.action")
	//@ResponseBody
	public String LatestList01(Model model){
		List<Book> list= collectsService.findBook();
		model.addAttribute("book",list);
		return "back/userinfo";
	}
}
