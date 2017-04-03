package com.lsl.mybatis.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.logging.log4j.LogManager;

import com.lsl.mybatis.web.servlet.ServletUtil;
@WebListener
public class DataListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce)  { 
    	ServletUtil.DEPLOY_NAME=sce.getServletContext().getContextPath()+"/";
    	sce.getServletContext().setAttribute("deployName", ServletUtil.DEPLOY_NAME);//Ϊ����ҳ��ʹ��
    	LogManager.getLogger().debug("��Ŀ�ķ�����Ϊ��"+ServletUtil.DEPLOY_NAME);
    }

    public void contextDestroyed(ServletContextEvent sce)  { 
    }
	
}
