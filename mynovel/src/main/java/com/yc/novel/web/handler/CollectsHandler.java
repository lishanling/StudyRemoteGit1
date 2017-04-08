package com.yc.novel.web.handler;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Collects;
import com.yc.novel.entity.Users;
import com.yc.novel.service.CollectsService;

@Controller("collectsHandler")
@RequestMapping("collects")
public class CollectsHandler {
	@Autowired 	
	private CollectsService collectsService;
	

	@RequestMapping(value="get",method=RequestMethod.GET)
 	public boolean getDetails(){
		System.out.println("sdf");
		/*
		HttpSession session=null;
		//String session.getAttribute("");
		Collects collects=new Collects();
		collects.setBid(bid);
		Users user=(Users) session.getAttribute("loginUser");
		collects.setUsid(user.getUsid());*/
		 return true;
  	} 
}
