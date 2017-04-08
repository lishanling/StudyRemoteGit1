package com.yc.novel.web.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Types;
import com.yc.novel.service.TypesService;

@Controller("typesHandler")
@RequestMapping("types")
public class TypesHandler {
	
	@Autowired 	
	private TypesService service;
	
	@ResponseBody
	@RequestMapping("info")
	public List<Types> sortsInfo(){
		System.out.println("进入添加");
		 return service.findAll();
	}	
}
