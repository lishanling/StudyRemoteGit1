package com.yc.novel.entity;

public class Sorts {
	
	private String ssid;
	private String sname;
	
	public String getSsid() {
		return ssid;
	}
	public void setSsid(String ssid) {
		this.ssid = ssid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	@Override
	public String toString() {
		return "Sorts [ssid=" + ssid + ", sname=" + sname + "]";
	}
	
	

}
