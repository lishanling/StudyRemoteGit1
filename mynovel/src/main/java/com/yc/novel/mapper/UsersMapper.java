package com.yc.novel.mapper;

import com.yc.novel.entity.PaginationBean;
import com.yc.novel.entity.Users;

public interface UsersMapper {
		Users find(Users user);

		Users registerUser(Users user);

		PaginationBean<Users> findPartUsers(PaginationBean<Users> pb);

		int updateUser(Users users);

}
