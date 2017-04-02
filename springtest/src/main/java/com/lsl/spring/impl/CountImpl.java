package com.lsl.spring.impl;

import org.apache.logging.log4j.LogManager;
import org.springframework.stereotype.Component;

import com.lsl.spring.Count;

@Component("count")
//（把普通pojo(简单的java对象)实例化到spring容器中，相当于配置文件中的<bean id="" class=""/>）
public class CountImpl implements Count{

	@Override
	public int add(int a, int b) {
		int result=a+b;
		LogManager.getLogger().debug(a+"+"+b+"="+result);
		return result;
	}

	@Override
	public int sub(int a, int b) {
		int result=a-b;
		LogManager.getLogger().debug(a+"-"+b+"="+result);
		return result;
	}

}
