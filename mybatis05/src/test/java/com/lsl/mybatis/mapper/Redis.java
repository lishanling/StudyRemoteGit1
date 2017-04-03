package com.lsl.mybatis.mapper;

import java.util.Set;

import org.junit.Test;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class Redis {
    @Test
    public void testRedisOperator(){
    	@SuppressWarnings("resource")
		JedisPool pool=new JedisPool(new JedisPoolConfig(),"127.0.0.1");
    	Jedis jedis=pool.getResource();
    	Set<String> keys=jedis.keys("*");
    	for (String key: keys) {
			System.out.println(key);
		}
    }
}
