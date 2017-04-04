package com.yc.novel.service.impl;


import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import com.yc.novel.entity.Users;
import com.yc.novel.mapper.UsersMapper;
import com.yc.novel.service.UsersService;

@Service("usersService")
public class UsersServiceImpl implements UsersService{
	
	@Autowired
	private  UsersMapper usersMapper;
	
	@Override
	public Users login(Users user){
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


}
