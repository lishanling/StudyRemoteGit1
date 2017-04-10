package com.yc.novel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.yc.novel.entity.Admin;
import com.yc.novel.entity.PaginationBean;
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
	
	public void setAdminMapper(AdminMapper adminMapper){
		this.adminMapper=adminMapper;
	}
	
	@Override
	public boolean modifytAdmin(Admin admin) {

		return adminMapper.updateAdmin(admin)>0;
	}
	@Override
	public PaginationBean<Admin> listPartAdmin(String page, String rows) {
		PaginationBean<Admin> pb=new PaginationBean<Admin>();
		if(page!=null){
			pb.setCurrPage(Integer.parseInt(page));
		}
		if(rows!=null){
			pb.setPageSize(Integer.parseInt(rows));
		}
		return adminMapper.findPartAdmin(pb);
	}
	
	@Override
	public boolean addtAdmin(Admin admin) {
		return adminMapper.addAdmin(admin)>0;
		
	}
	
	
	@Override
	public boolean deleteAdmin(String aid) {
		return adminMapper.deleteAdmin(aid)>0;
	}

}
