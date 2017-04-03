package com.yc.novel.service;

import com.yc.novel.entity.Users;
public interface UsersService {
	 Users login(Users user);
	 Users register(Users user);
}
