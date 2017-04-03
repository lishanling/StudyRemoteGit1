package com.yc.novel.mapper;

import com.yc.novel.entity.Users;

public interface UsersMapper {
		Users find(Users user);

		boolean registerUser(Users user);	
	
}
