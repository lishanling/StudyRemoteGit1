package com.yc.novel.web.handler;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.novel.entity.Users;
import com.yc.novel.service.UsersService;
import com.yc.novel.util.ServletUtil;

@Controller("userHandler")
@RequestMapping("user")
public class UserHandler{
	
	@Autowired
	private UsersService usersService ;
	
	@RequestMapping("login")
 	public String login(Users user ,HttpServletRequest request){
		 	user = usersService.login(user);
			if(user == null){
				request.setAttribute(ServletUtil.ERROR_MESSAGE, " invalid username or password");
				LogManager.getLogger().debug("用户名或密码错误");
				return "/back/login.jsp";
			}else{
				request.setAttribute( ServletUtil.LOGIN_USER, user);
				LogManager.getLogger().debug("success");
				return "redirect:/homepage.jsp";	
			}
 	}
	@RequestMapping("register")
 	public String register(Users user ,HttpServletRequest request){
		System.out.println(user);
		System.out.println("进入");
		/*user = usersService.register(user);
		System.out.println(user);*/
		return null;
		/*request.setAttribute( ServletUtil.LOGIN_USER, user);
		LogManager.getLogger().debug("success");
		return "redirect:/homepage.jsp";*/
		/*if(user == null){
			request.setAttribute(ServletUtil.ERROR_MESSAGE, "注册失败！");
			LogManager.getLogger().debug("用户名或密码错误");
			return "/back/login.jsp";
		}else{
			request.setAttribute( ServletUtil.LOGIN_USER, user);
			LogManager.getLogger().debug("success");
			return "redirect:/homepage.jsp";	
		}*/
			
 	}
	
	
			
}
