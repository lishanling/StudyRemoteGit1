package com.yc.novel.service;

import com.yc.novel.entity.Users;
public interface UsersService {
	 Users login(Users user);
	 
	 boolean register(Users user);
}
