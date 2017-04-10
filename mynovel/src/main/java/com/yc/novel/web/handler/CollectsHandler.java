package com.yc.novel.web.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Collects;
import com.yc.novel.service.CollectsService;

@Controller("collectsHandler")
@RequestMapping("collects")
public class CollectsHandler {
	@Autowired
	private CollectsService collectsService;
	
	
	
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
}
