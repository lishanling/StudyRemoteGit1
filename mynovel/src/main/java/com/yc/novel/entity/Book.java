package com.yc.novel.entity;

import java.io.Serializable;

import java.sql.Date;

public class Book implements Serializable{
	private static final long serialVersionUID = -6765580454607657848L;
	private String bid;
	private String bname;
	private String bdesc;
	private Date bdate;
	private String bcopyright;
	private String burl;
	private String bauthor;
	private Types types;
	private String bpic;
	
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
	
	public String getBpic() {
		return bpic;
	}
	public void setBpic(String bpic) {
		this.bpic = bpic;
	}
	
	public Types getTypes() {
		return types;
	}
	
	
	public Book() {
		
	}
	public Book( String bname,String bauthor) {
		
		this.bname = bname;
		this.bauthor = bauthor;
	
	}
	@Override
	public String toString() {
		return "\nBook [bid=" + bid + ", bname=" + bname + ", bdesc=" + bdesc + ", bdate=" + bdate + ", bcopyright="
				+ bcopyright + ", burl=" + burl + ", bauthor=" + bauthor + ", types=" + types + ", bpic=" + bpic + "]";
	}
	
	

	
	
}
