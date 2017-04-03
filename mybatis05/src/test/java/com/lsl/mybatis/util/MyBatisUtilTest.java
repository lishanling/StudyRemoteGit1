package com.lsl.mybatis.util;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class MyBatisUtilTest {


	@Test//测试数据库连接是否成功
	public void test() {
		SqlSession session=MyBatisUtil.getSession();
		Connection conn=session.getConnection();
		assertNotNull(conn);
	}


}
