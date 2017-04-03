package com.yc.novel.entity;

import java.sql.Date;

public class Collects {

	private String usid;
	private String bid;
	private Date udate;
	
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
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
	}
	@Override
	public String toString() {
		return "Collects [usid=" + usid + ", bid=" + bid + ", udate=" + udate + "]";
	}
	
	
	
}
