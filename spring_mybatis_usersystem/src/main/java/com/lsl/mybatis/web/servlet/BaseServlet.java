package com.lsl.mybatis.web.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;

public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1192299868360143394L;

	public static String DEPLOY_NAME; // 工程发布名

	@Override
	public void init() throws ServletException {
		DEPLOY_NAME = getServletContext().getContextPath(); // 初始化发布的工程发布名
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @param response
	 *            //响应处理对象
	 * @param respStr
	 *            //直接响应的字符
	 * @throws IOException
	 *             //响应异常
	 */
	public void outRespStr(HttpServletResponse response, String respStr) throws IOException {
		PrintWriter out = response.getWriter();
		out.println(respStr);
		out.flush();
		out.close();
	}

	/**
	 * 
	 * @param clazz
	 *            //要转换成的对象的类的类对象
	 * @param request
	 *            //请求处理对象
	 * @return 转换对象
	 */
	public <T> T reqParam2Obj(Class<T> clazz, HttpServletRequest request) {
		T obj = null;
		try {
			obj = clazz.newInstance(); // 使用类的类对象，通过反射创建对象实例
		} catch (Exception e) {
			e.printStackTrace();
		}

		Method[] ms = clazz.getDeclaredMethods(); // 取到指定对象的所有方法的类对象

		for (Method m : ms) {
			// 取到get, set方法对应的属性名
			if (m.getName().startsWith("set")) {
				String temp = m.getName().replace("set", "");
				String attrName = Character.toLowerCase(temp.charAt(0)) + temp.substring(1);
				String value = request.getParameter(attrName); // 取到请求的参数值
				if (value == null) { // 如果没有值就，就不继续操作
					continue;
				}

				String paramClassName = m.getParameterTypes()[0].getName(); // 取到set方法参数类型的全类名
				System.out.println(value + " === " + paramClassName);
				Object paramValue = null;
				// 反射调用，执行set方法给对象的属性赋值
				if (paramClassName.endsWith("Integer") || paramClassName.endsWith("int")) {
					paramValue = Integer.parseInt(value);
				} else if (paramClassName.endsWith("Double") || paramClassName.endsWith("double")) {
					paramValue = Double.parseDouble(value);
				} else {
					paramValue = value;
				}
				try {
					m.invoke(obj, paramValue); // 执行方法， 给对象属性赋值
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return obj;
	}

	/**
	 * 
	 * @param clazz
	 *            //要转换成的对象的类的类对象
	 * @param request
	 *            //二进制请求处理对象
	 * @return 转换对象
	 */
	public <T> T reqParam2Obj(Class<T> clazz, Request request) {
		T obj = null;
		try {
			obj = clazz.newInstance(); // 使用类的类对象，通过反射创建对象实例
		} catch (Exception e) {
			e.printStackTrace();
		}

		Method[] ms = clazz.getDeclaredMethods(); // 取到指定对象的所有方法的类对象

		for (Method m : ms) {
			// 取到get, set方法对应的属性名
			if (m.getName().startsWith("set")) {
				String temp = m.getName().replace("set", "");
				String attrName = Character.toLowerCase(temp.charAt(0)) + temp.substring(1);
				String value = request.getParameter(attrName); // 取到请求的参数值
				if (value == null) { // 如果没有值就，就不继续操作
					continue;
				}

				String paramClassName = m.getParameterTypes()[0].getName(); // 取到set方法参数类型的全类名
				LogManager.getLogger().debug(value + " === " + paramClassName);
				Object paramValue = null;
				// 反射调用，执行set方法给对象的属性赋值
				if (paramClassName.endsWith("Integer") || paramClassName.endsWith("int")) {
					paramValue = Integer.parseInt(value);
				} else if (paramClassName.endsWith("Double") || paramClassName.endsWith("double")) {
					paramValue = Double.parseDouble(value);
				} else {
					paramValue = value;
				}
				try {
					m.invoke(obj, paramValue); // 执行方法， 给对象属性赋值
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return obj;
	}

	/**
	 * 把对象转换成 json字符串
	 * @param obj
	 * @return
	 */
	public String toJsonStr(Object obj) {
		//Gson gson = new Gson();
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		return gson.toJson(obj);
	}
	
	
	public SmartUpload getSU(HttpServletRequest request, HttpServletResponse response){
		SmartUpload su = null;
		try {
			su = new SmartUpload();
			su.setCharset("utf-8");
			su.initialize(getServletConfig(), request, response);
			su.upload();
		} catch (Exception e) {
			throw new RuntimeException("文件上传失败！！！", e);
		}
		return su;
	}
}