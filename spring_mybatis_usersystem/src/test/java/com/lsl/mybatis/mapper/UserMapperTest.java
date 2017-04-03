package com.lsl.mybatis.mapper;

import static org.junit.Assert.*;

import org.junit.Test;

import com.lsl.mybatis.util.Encrypt;
import com.lsl.mybatis.util.MyBatisUtil;
import com.lsl.mybatis.util.User;

public class UserMapperTest {

	@Test
	public void testFindUser() {
		UserMapper um=MyBatisUtil.getSession().getMapper(UserMapper.class);
		User user=new User();
		user.setPassword(Encrypt.md5AndSha("aaaaaa"));
		user.setName("rdjni");
		//user.setName("10003");
		user=um.findUser(user);
		System.out.println(user);
		assertNotNull(user);
	}

}
