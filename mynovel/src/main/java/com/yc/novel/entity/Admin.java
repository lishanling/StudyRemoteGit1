package com.yc.novel.entity;

public class Admin {
	private String aid;
	private String apenname;
	private String apwd;

	
	public Admin() {
		
	}

	public Admin(String aid, String apenname, String apwd) {
		this.aid = aid;
		this.apenname = apenname;
		this.apwd = apwd;
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


	public String getAid() {
		return aid;
	}

	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
}