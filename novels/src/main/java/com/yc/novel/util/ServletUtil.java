package com.yc.novel.util;

import java.io.File;

public class ServletUtil {
	public static String DEPOLY_NAME;
	public static final String LOGIN_USER="loginUser";
	public static final String ERROR_MESSAGE="errorMsg";
	
	public static String UPLOAD_DIR;
	public static final String VIRTUAL_UPLOAD_DIR="/upload/";
	
	public static File getUploadFile(String fileName){
		File file=new File(UPLOAD_DIR,fileName);
		
		if(!file.getParentFile().exists()){
			file.getParentFile().mkdirs();
		}
		return file;
	}
}
