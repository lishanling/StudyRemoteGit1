package com.yc.novel.mapper;

import com.yc.novel.entity.Admin;

import com.yc.novel.entity.PaginationBean;

public interface AdminMapper {

	Admin adminFind(Admin admin);

	PaginationBean<Admin> findPartAdmin(PaginationBean<Admin> pb);

	int updateAdmin(Admin admin);

	int addAdmin(Admin admin);

}
