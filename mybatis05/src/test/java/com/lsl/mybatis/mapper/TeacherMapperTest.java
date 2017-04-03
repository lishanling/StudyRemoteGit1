package com.lsl.mybatis.mapper;

import static org.junit.Assert.*;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import com.lsl.mybatis.util.MyBatisUtil;
import com.lsl.mybatis.util.PaginationBean;
import com.lsl.mybatis.util.Teacher;

public class TeacherMapperTest {

	
	@Test
	public void test3(){
		SqlSession session=MyBatisUtil.getSession();
		TeacherMapper tm=session.getMapper(TeacherMapper.class);
		PaginationBean<Teacher> pb=new PaginationBean<>();
		pb.setCurrPage(2);
		//pb=tm.partTeachers(pb);
		tm.partTeachers(pb);
		System.out.println(pb);
		assertNotNull(pb);
		
	}
}
