package com.yc.novel.entity;

public class Admin {
	private String aid;
	private String apenname;
	private String apwd;
	private Integer atel;
	private String aemail;
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
	public Integer getAtel() {
		return atel;
	}
	public void setAtel(Integer atel) {
		this.atel = atel;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	@Override
	public String toString() {
		return "Author [aid=" + aid + ", apenname=" + apenname + ", apwd=" + apwd + ", atel=" + atel + ", aemail="
				+ aemail + "]";
	}
	

	
}
