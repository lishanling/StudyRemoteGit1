package com.yc.novel.entity;


public class Menu {
	private String mid;
	private String mname;
	private String bid;
	private String bcontent;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	@Override
	public String toString() {
		return "\nMenu [mid=" + mid + ", mname=" + mname + ", bid=" + bid + ", bcontent=" + bcontent + "]";
	}
	
	

}
