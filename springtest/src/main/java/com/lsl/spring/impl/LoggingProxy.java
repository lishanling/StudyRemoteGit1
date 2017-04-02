package com.lsl.spring.impl;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;

import javax.security.auth.spi.LoginModule;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.lsl.spring.Count;
@Component("loggingProxy")
public class LoggingProxy {
	@Autowired
	private Count count;
	public Count countProxy(){
		ClassLoader loader=Thread.currentThread().getContextClassLoader();
		Class<?>[] interfaces=count.getClass().getInterfaces();
		InvocationHandler h=new InvocationHandler() {
			
			@Override
			public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
				String methodName=method.getName();
				LogManager.getLogger().debug("代理方式。。开始执行"+methodName+"方法，参数为："+Arrays.toString(args));
				Object result=method.invoke(count, args);
				LogManager.getLogger().debug("代理方式。。执行完"+methodName+"方法，结果为："+result);
				return result;
			}
		};
		return (Count) Proxy.newProxyInstance(loader, interfaces, h);
	}

}
