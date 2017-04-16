package com.yc.novel.service;

import com.yc.novel.entity.PaginationBean;
import com.yc.novel.entity.Users;

public interface UsersService {

	PaginationBean<Users> listPartUsers(String page, String rows);
	boolean modifyUsers(Users user);
	 Users login(Users user);
	 boolean register(Users user);
	
}
