package com.yc.novel.web.listener;

import java.io.File;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.yc.novel.util.ServletUtil;



@WebListener
public class DataListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent sce)  { 
         
    }
	
    public void contextInitialized(ServletContextEvent sce)  { 
    	String deployName=sce.getServletContext().getContextPath();
    	ServletUtil.DEPOLY_NAME=deployName+"/";
    	sce.getServletContext().setAttribute("deployName",ServletUtil.DEPOLY_NAME);
   
    	ServletUtil.UPLOAD_DIR=sce.getServletContext().getRealPath(ServletUtil.VIRTUAL_UPLOAD_DIR).replace(deployName.substring(1)+File.separator,"");
    }
	
}
