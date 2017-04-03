package com.yc.novel.entity;

import java.sql.Date;

public class Discuss {
	private String usid;
	private String bid;
	private String dcontent;
	private Date dtime;
	public String getUsid() {
		return usid;
	}
	public void setUsid(String usid) {
		this.usid = usid;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getDcontent() {
		return dcontent;
	}
	public void setDcontent(String dcontent) {
		this.dcontent = dcontent;
	}
	public Date getDtime() {
		return dtime;
	}
	public void setDtime(Date dtime) {
		this.dtime = dtime;
	}
	@Override
	public String toString() {
		return "Discuss [usid=" + usid + ", bid=" + bid + ", dcontent=" + dcontent + ", dtime=" + dtime + "]";
	}
	
	

}
