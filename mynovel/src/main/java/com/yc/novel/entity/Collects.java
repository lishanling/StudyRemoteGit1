package com.yc.novel.entity;

import java.sql.Date;
import java.util.List;

public class Collects {

	private String usid;
	private String bid;
	private Date udate;
	private Book book;
	
	public Collects() {
		
	}
	public Collects(String usid, String bid, Date udate , Book book) {
		this.usid = usid;
		this.bid = bid;
		this.udate = udate;
		this.book = book;
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
		return "Collects [usid=" + usid + ", bid=" + bid + ", udate=" + udate + ", book=" + book + "]";
	}
}
