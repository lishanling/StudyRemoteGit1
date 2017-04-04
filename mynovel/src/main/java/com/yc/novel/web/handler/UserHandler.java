package com.yc.novel.web.handler;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.PaginationBean;
import com.yc.novel.entity.Users;
import com.yc.novel.service.UsersService;
import com.yc.novel.util.ServletUtil;

@Controller("userHandler")
@RequestMapping("user")
public class UserHandler {

	@Autowired
	private UsersService usersService;

	@RequestMapping("login")
	public String login(Users user, HttpServletRequest request) {
		user = usersService.login(user);
		if (user == null) {
			request.setAttribute(ServletUtil.ERROR_MESSAGE, "用户名或密码错误");
			return "/back/login.jsp";
		} else {
			request.setAttribute(ServletUtil.LOGIN_USER, user);
			LogManager.getLogger().debug("success");
			return "redirect:/homepage.jsp";
		}
	}

	@RequestMapping(value="{register}" , method=RequestMethod.POST)
	public String register(Users user, HttpServletRequest request) {
		System.out.println(user);
		
		if (usersService.login(user) == null) {
			if (usersService.register(user)) {
				return "redirect:/homepage.jsp";
			}else{
				request.setAttribute(ServletUtil.ERROR_MESSAGE, "服务器出错 ...");
				return "/back/register.jsp";
			}
 		} else {
 			request.setAttribute(ServletUtil.ERROR_MESSAGE, "该名称已注册...");
			return "/back/register.jsp";
		}
	}

}
