package com.yc.novel.entity;

public class Users {
	
	private String usid;
	private String uname;
	private String upwd;
	private String uemail;
	public String getUsid() {
		return usid;
	}
	public void setUsid(String usid) {
		this.usid = usid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	@Override
	public String toString() {
		return "Users [usid=" + usid + ", uname=" + uname + ", upwd=" + upwd + ", uemail=" + uemail + "]";
	}
	
		

}
