package com.yc.novel.web.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Admin;
import com.yc.novel.entity.PaginationBean;
import com.yc.novel.service.AdminService;

@Controller("adminHandler")
@RequestMapping("admin")
public class AdminHandler {

	@Autowired
	private AdminService adminService;

	@RequestMapping("add")
	@ResponseBody
	public boolean add(Admin admin){

		return adminService.addtAdmin(admin);
	}

	@RequestMapping("list")
	@ResponseBody
	public PaginationBean<Admin> list(String rows,String page){

		return adminService.listPartAdmin(page,rows);
	}

	@RequestMapping("modify")
	@ResponseBody
	public boolean modify(Admin admin){

		return adminService.modifytAdmin(admin);
	}

}
