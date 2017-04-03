package com.lsl.mybatis.cache;

import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import org.apache.ibatis.cache.Cache;

import com.lsl.mybatis.util.SerializeUtil;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;
/**
 * 自定义的二级缓存，使用redis作为缓存
 * @author lsl
 *
 */
public class RedisCache implements Cache{
	private  String id;
	private Jedis jedis;
	private final ReadWriteLock readWriteLock=new ReentrantReadWriteLock();
	
	public RedisCache(String id) {
		System.out.println("Redis缓存编号:"+id);
		this.id = id;
		jedis=createJedis();
	}

	@Override
	public String getId() {
		return id;
	}

	@Override//向redis缓存中存入数据
	public void putObject(Object key, Object value) {
		jedis.set(SerializeUtil.serialize(key),SerializeUtil.serialize(value));
		System.out.println("存储到redis缓存的数据key:"+key+",value"+value);
	}

	@Override
	public Object getObject(Object key) {
		
		System.out.println("从redis缓存中数据key:"+key+"取数据");
		return SerializeUtil.unserialize(jedis.get(SerializeUtil.serialize(key)));

	}

	@Override
	public Object removeObject(Object key) {
		System.out.println("清除redis缓存数据库中key"+key+"的数据");
		return jedis.expire(SerializeUtil.serialize(key), 0);
	}

	@Override
	public void clear() {
		System.out.println("清除Redis缓存数据库");
		jedis.flushDB();
	}

	@Override
	public int getSize() {
		return jedis.dbSize().intValue();
	}

	@Override
	public ReadWriteLock getReadWriteLock() {
		return readWriteLock;
	}
	@SuppressWarnings("resource")
	public static Jedis createJedis(){
		try {
			return new JedisPool(new JedisPoolConfig(), "127.0.0.1").getResource();
		} catch (Exception e) {
			return null;
		}
	}
}
