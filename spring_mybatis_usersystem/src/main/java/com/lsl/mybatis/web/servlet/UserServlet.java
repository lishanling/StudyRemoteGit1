package com.lsl.mybatis.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.lsl.mybatis.service.UserService;
import com.lsl.mybatis.service.UserServiceImpl;
import com.lsl.mybatis.util.User;
@WebServlet("/user/*")
public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestUri=request.getRequestURI();
		LogManager.getLogger().debug(requestUri+"请求");
		if(requestUri.endsWith("login")){
			doLogin(request,response);
		}
	}
	private void doLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		User user=reqParam2Obj(User.class, request);
		ApplicationContext ac=WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		UserService userService=(UserService) ac.getBean("userService");
		user=userService.login(user);
		if(user==null){
			request.setAttribute(ServletUtil.ERROE_MSG, "用户名或密码错误!");
			request.getRequestDispatcher("/page/login.jsp").forward(request, response);
			
		}else{
			request.getSession().setAttribute(ServletUtil.LOGIN_USER,user);
			response.sendRedirect(ServletUtil.DEPLOY_NAME+"page/list.jsp");

		}
		
		System.out.println("请求参数"+user);
		

	}

}
