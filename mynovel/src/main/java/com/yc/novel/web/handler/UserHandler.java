package com.yc.novel.web.handler;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.novel.entity.PaginationBean;
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
				request.setAttribute(ServletUtil.ERROR_MESSAGE, "用户名或密码错误");
				return "/back/login.jsp";

			}else{
				request.setAttribute( ServletUtil.LOGIN_USER, user);
				LogManager.getLogger().debug("success");
				return "redirect:/homepage.jsp";
			}
 	}

	@RequestMapping("list")
	@ResponseBody
	public PaginationBean<Users> list(String rows, String page){
		System.out.println("list : rows ===> " + rows + ", page ===> " + page);
		return usersService.listPartUsers(page, rows);//异步数据响应
	}

	@RequestMapping("modify")
	@ResponseBody
	public boolean modify(@RequestParam("picData")MultipartFile picData, Users users){


		return usersService.modifyUser(users);//异步数据响应
	}

}
