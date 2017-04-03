package com.lsl.mybatis.util;

import java.io.IOException;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.logging.log4j.LogManager;

public class MyBatisUtil {
	private static SqlSessionFactory factory;
	//加载mybatis配置文件，创建mybatis数据库会话工厂
	static{
		try{
			InputStream in=Resources.getResourceAsStream("mybatis.xml");
			LogManager.getLogger().debug("加载mybatis配置文件数据流成功！");
			 factory=new SqlSessionFactoryBuilder().build(in);
			LogManager.getLogger().debug("通过mybatis配置文件数据流构建SqlSessionFactory成功！");
		} catch (IOException e) {
			LogManager.getLogger().error("加载mybatis配置文件数据流失败！",e);
		}catch (Exception e) {
			LogManager.getLogger().error("创建mybatis数据库会话对象失败！",e);

		} 

	}
	public static SqlSession getSession(){//手动
		SqlSession session=null;
		try {
			session=factory.openSession();
			LogManager.getLogger().debug("通过SqlSessionFactory创建SqlSession成功！");
		}catch (Exception e) {
			LogManager.getLogger().error("创建mybatis数据库会话对象失败！",e);
		} 
		return session;

	}

	public static SqlSession getAutoTranscationSession(){//自动
		SqlSession session=null;
		try {
			session=factory.openSession(true);
			LogManager.getLogger().debug("通过SqlSessionFactory创建SqlSession成功！");
		}	catch (Exception e) {
			LogManager.getLogger().error("创建mybatis数据库会话对象失败！",e);
		} 
		return session;
	}
	//增删改	  	程序--》数据库
	//查   		 数据库--》程序

}
