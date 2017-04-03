package com.lsl.mybatis.mapper;

import com.lsl.mybatis.util.PaginationBean;
import com.lsl.mybatis.util.Teacher;

public interface TeacherMapper {
	Teacher getTeacherByid(int id);
	int delTeacherById(int id);
	//PaginationBean<Teacher> partTeachers(PaginationBean<Teacher> pb);
	void partTeachers(PaginationBean<Teacher> pb);
}
