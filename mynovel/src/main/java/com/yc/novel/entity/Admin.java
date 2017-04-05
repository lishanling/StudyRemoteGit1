package com.yc.novel.entity;

public class Admin {
	private String aid;
	private String apenname;
	private String apwd;
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getApenname() {
		return apenname;
	}
	public void setApenname(String apenname) {
		this.apenname = apenname;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", apenname=" + apenname + ", apwd=" + apwd + "]";
	}
	
	
	

	
}
