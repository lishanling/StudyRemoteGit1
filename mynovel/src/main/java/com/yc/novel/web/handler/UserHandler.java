package com.yc.novel.web.handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.PaginationBean;
import com.yc.novel.entity.Users;
import com.yc.novel.service.UsersService;
import com.yc.novel.util.Encrypt;
import com.yc.novel.util.ServletUtil;

@Controller("userHandler")
@RequestMapping("user")
public class UserHandler {

	@Autowired
	private UsersService usersService;

	@RequestMapping("login")
	public String login(Users user, HttpSession session) {
		user = usersService.login(user);
		if (user == null) {
			session.setAttribute(ServletUtil.ERROR_MESSAGE, "用户名或密码错误");
			return "/back/login";
		} else {
			session.setAttribute(ServletUtil.LOGIN_USER, user);
			LogManager.getLogger().debug("success");
			return "redirect:/homepage.jsp";
		}
	}

	@RequestMapping(value="{register}" , method=RequestMethod.POST)
	public String register(Users user, HttpServletRequest request) {
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

	@RequestMapping("list")
	@ResponseBody
	public PaginationBean<Users> list(String rows, String page){

		return usersService.listPartUsers(page, rows);//异步数据响应
	}
	//退出登录
	@RequestMapping(value="/outlogin",method=RequestMethod.POST)
	@ResponseBody
	public boolean out(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		 HttpSession session = request.getSession(false);//防止创建Session  
	     session.removeAttribute(ServletUtil.LOGIN_USER);  
	    // response.sendRedirect("../back/outlogin.jsp");
	     return true;
	}

	@RequestMapping("modify")
	@ResponseBody
	public boolean modify(String uname,String upwd,String uemail,String usid) throws UnsupportedEncodingException{
		Users users=new Users();
		uname=URLDecoder.decode(uname, "utf-8");
		users.setUname(uname);
		users.setUemail(uemail);
		users.setUpwd(Encrypt.md5AndSha(upwd));
		users.setUsid(usid);
		return usersService.modifyUsers(users);//异步数据响应
	}
}