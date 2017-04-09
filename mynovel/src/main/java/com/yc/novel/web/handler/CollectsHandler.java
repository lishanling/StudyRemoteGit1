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
@RequestMapping("collect")
public class CollectsHandler {
	@Autowired
	private CollectsService collectsService;
	
	
	@ResponseBody
	@RequestMapping("bookinfo")
	public List<Collects> collectInfo(){
		 return collectsService.findCollects();
	}	

}
