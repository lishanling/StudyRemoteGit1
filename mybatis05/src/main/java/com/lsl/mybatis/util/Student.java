package com.lsl.mybatis.util;

public class Student {
	private Integer id;
	private String name;
	private String username;
	private String password;
	
	public Student() {
		super();
	}

	public Student(Integer id, String name, String username, String password) {
		super();
		this.id = id;
		this.name = name;
		this.username = username;
		this.password = password;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "\nStudent [id=" + id + ", name=" + name + ", username=" + username + ", password=" + password + "]";
	}

}
