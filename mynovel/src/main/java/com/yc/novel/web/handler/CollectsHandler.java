package com.yc.novel.web.handler;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;
import com.yc.novel.service.CollectsService;


@Controller("collectsHandler")
@RequestMapping("collect")
public class CollectsHandler {
	@Autowired
	private CollectsService collectsService;

	@RequestMapping("/get")
	@ResponseBody
 	public boolean getDetails(String bid,String usid){

		usid=usid.trim();
		Collects collects=new Collects();
		collects.setBid(bid);
		collects.setUsid(usid);
		java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
		collects.setUdate(currentDate);
		return collectsService.addCollects(collects);
  	}

	@ResponseBody
	@RequestMapping(value="collectbookinfo",method=RequestMethod.POST)
	public List<Book> collectInfo(String usid){
		return collectsService.findCollects(usid);
	}

	@ResponseBody
	@RequestMapping(value="delcollect",method=RequestMethod.POST)
	public boolean delCollect(String bid){
		return collectsService.delCollect(bid);
	}


	@RequestMapping("bookinfo")
	@ResponseBody
	public List<Book> collectBook(){
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

	@RequestMapping("/toDayList.action")
	public String DayList(Model model){
		List<Book> list= collectsService.DayList();
		model.addAttribute("book",list);
		return "back/list";
	}

	@RequestMapping("/toMonthList.action")
	public String MonthList(Model model){
		List<Book> list= collectsService.MonthList();
		model.addAttribute("book",list);
		return "back/list";
	}

	@RequestMapping("/toAllList.action")
	public String AllList(Model model){
		List<Book> list= collectsService.AllList();
		model.addAttribute("book",list);
		return "back/list";
	}

	@RequestMapping("/toLatestList.action")
	public String LatestList(Model model){
		List<Book> list= collectsService.LatestList();
		model.addAttribute("book",list);
		return "back/list";
	}
}