package com.yc.novel.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.PaginationBean;
import com.yc.novel.entity.Users;
import com.yc.novel.mapper.UsersMapper;
import com.yc.novel.service.UsersService;

@Service("usersService")
public class UsersServiceImpl implements UsersService{

	@Autowired
	private  UsersMapper usersMapper;

	@Override
	public Users login(Users user ) {
		   return usersMapper.find(user);
	}

	@Override
	public Users register(Users user) {
		return usersMapper.registerUser(user);
	}

	@Override
	public PaginationBean<Users> listPartUsers(String page, String rows) {
		PaginationBean<Users> pb = new PaginationBean<Users>();
		if(page != null){
			pb.setCurrPage(Integer.parseInt(page));
		}
		if(rows != null){
			pb.setPageSize(Integer.parseInt(rows));
		}
		return usersMapper.findPartUsers(pb);
	}

	@Override
	public boolean modifyUser(Users users) {

		return usersMapper.updateUser(users) > 0;
	}


}
