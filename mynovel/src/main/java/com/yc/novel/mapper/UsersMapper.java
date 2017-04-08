package com.yc.novel.mapper;

import com.yc.novel.entity.PaginationBean;
import com.yc.novel.entity.Users;

public interface UsersMapper {
		Users find(Users user);

		PaginationBean<Users> findPartUsers(PaginationBean<Users> pb);

		int updateUsers(Users users);

		boolean registerUser(Users user);

		//获取用户名和密码

}
