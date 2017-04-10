package com.yc.novel.entity;

import java.sql.Date;

public class Collects {

	private String usid;
	private String bid;
	private Date udate;
	private Book book;
	private Users user;
	

	public Collects() {

	}
	public Collects(String usid, String bid, Date udate , Book book,Users user) {
		this.usid = usid;
		this.bid = bid;
		this.udate = udate;
		this.book = book;
		this.user=user;
	}
	
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
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
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	@Override
	public String toString() {
		return "\nCollects [usid=" + usid + ", bid=" + bid + ", udate=" + udate + ", book=" + book + "]";
	}
}
