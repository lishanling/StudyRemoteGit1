package com.yc.novel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.novel.entity.Admin;
import com.yc.novel.mapper.AdminMapper;
import com.yc.novel.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper adminMapper;
	@Override
	public Admin login(Admin admin) {
		return adminMapper.adminFind(admin);
	}

}
