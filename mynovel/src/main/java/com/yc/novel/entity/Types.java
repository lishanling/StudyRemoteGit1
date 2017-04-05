package com.yc.novel.entity;

public class Types {
	
	private String ssid;
	private String sname;
	private String imgsrc;
	
	public Types() {
		
	}
	public Types(String ssid, String sname, String imgsrc) {
		this.ssid = ssid;
		this.sname = sname;
		this.imgsrc = imgsrc;
	}
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
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	
	@Override
	public String toString() {
		return "Sorts [ssid=" + ssid + ", sname=" + sname + ", imgsrc=" + imgsrc + "]";
	}

}
