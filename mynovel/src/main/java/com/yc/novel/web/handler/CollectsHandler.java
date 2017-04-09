package com.yc.novel.web.handler;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;
import com.yc.novel.service.CollectsService;

@Controller("collectHandler")
@RequestMapping("collect")
public class CollectsHandler {
	private CollectsService collectsService;

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
