package com.yc.novel.service;

import com.yc.novel.entity.Admin;
import com.yc.novel.entity.PaginationBean;

public interface AdminService {
	Admin login(Admin admin);
	boolean modifytAdmin(Admin admin);
	PaginationBean<Admin> listPartAdmin(String page, String rows);
	boolean addtAdmin(Admin admin);

	boolean deleteAdmin(String aid);

}
