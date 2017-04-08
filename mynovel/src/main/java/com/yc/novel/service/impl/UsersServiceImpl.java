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

	public void setUsersMapper(UsersMapper usersMapper) {
		this.usersMapper = usersMapper;
	}

	@Override
	public Users login(Users user ) {
		System.out.println("用户进行登录操作 ===> " + user);
		return usersMapper.find(user);
	}

	@Override
	public boolean register(Users user) {
		if ( usersMapper.registerUser(user)  ){
			return true;
  		}else{
			return false;
		}
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
	public boolean modifyUsers(Users users) {

		return usersMapper.updateUsers(users) > 0;
	}




}
