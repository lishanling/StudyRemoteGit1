package com.yc.novel.web.handler;

import javax.servlet.http.HttpServletRequest;


import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.novel.entity.Admin;
import com.yc.novel.service.AdminService;
import com.yc.novel.util.ServletUtil;

@Controller("adminHandler")
@RequestMapping("admin")
public class AdminHandler {
	@Autowired
	private AdminService adminService;

	@RequestMapping("login")
	public String login(Admin admin, HttpServletRequest request) {
		admin = adminService.login(admin);
		System.out.println(admin);
		if (admin == null) {
			request.setAttribute(ServletUtil.ERROR_MESSAGE, "用户名或密码错误");
			return  "/back/adminlogin.jsp";
		} else {
			request.setAttribute(ServletUtil.LOGIN_ADMIN, admin);
			LogManager.getLogger().debug("success");
			return "/back/manage.jsp";
		}
	}
}
