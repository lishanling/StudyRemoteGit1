package com.lsl.mybatis.util;

import java.io.Serializable;
import java.util.List;

public class Teacher implements Serializable{
	private static final long serialVersionUID = -1089680648632935616L;
	private Integer id;
	private String name;
	private List<Student> stus;
	
	public Teacher() {
		super();
	}
	public Teacher(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public List<Student> getstus() {
		return stus;
	}
	public void setstus(List<Student> stus) {
		this.stus = stus;
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
	public Teacher(Integer id, String name, List<Student> stus) {
		super();
		this.id = id;
		this.name = name;
		this.stus = stus;
	}
	@Override
	public String toString() {
		return "\nTeacher [id=" + id + ", name=" + name + ", stus=" + stus + "]";
	}
	
	
	
}
