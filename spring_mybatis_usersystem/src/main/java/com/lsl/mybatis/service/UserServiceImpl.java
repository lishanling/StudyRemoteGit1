package com.lsl.mybatis.service;

import com.lsl.mybatis.mapper.UserMapper;
import com.lsl.mybatis.util.Encrypt;
import com.lsl.mybatis.util.MyBatisUtil;
import com.lsl.mybatis.util.User;

public class UserServiceImpl implements UserService{
	private UserMapper userMapper;
	
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	@Override
	public User login(User user) {
		user.setPassword(Encrypt.md5AndSha(user.getPassword()));
		return userMapper.findUser(user);
	}

}
