package com.yc.novel.entity;

import java.sql.Blob;
import java.sql.Date;

public class Book {

	private String bid;
	private String bname;
	private String bdesc;
	private Date bdate;
	private String bcopyright;
	private String burl;
	private String bauthor;
	private String ssid;
	private Blob bpic;
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBdesc() {
		return bdesc;
	}
	public void setBdesc(String bdesc) {
		this.bdesc = bdesc;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	
	public String getBcopyright() {
		return bcopyright;
	}
	public void setBcopyright(String bcopyright) {
		this.bcopyright = bcopyright;
	}
	public String getBurl() {
		return burl;
	}
	public void setBurl(String burl) {
		this.burl = burl;
	}
	public String getBauthor() {
		return bauthor;
	}
	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}
	public String getSsid() {
		return ssid;
	}
	public void setSsid(String ssid) {
		this.ssid = ssid;
	}
	public Blob getBpic() {
		return bpic;
	}
	public void setBpic(Blob bpic) {
		this.bpic = bpic;
	}
	@Override
	public String toString() {
		return "Book [bid=" + bid + ", bname=" + bname + ", bdesc=" + bdesc + ", bdate=" + bdate + ", bcopyright="
				+ bcopyright + ", burl=" + burl + ", bauthor=" + bauthor + ", ssid=" + ssid + ", bpic=" + bpic + "]";
	}

	
	
}
