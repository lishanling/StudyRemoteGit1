package com.yc.novel.entity;


public class Menu {
	private String mid;
	private String mname;
	private String bid;
	private String bcontent;
	private Book book;
	
	
	
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
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
	
	public Menu(String mid, String mname, String bid, String bcontent, Book book) {
		this.mid = mid;
		this.mname = mname;
		this.bid = bid;
		this.bcontent = bcontent;
		this.book = book;
	}
	public Menu() {
		
	}
	@Override
	public String toString() {
		return "\nMenu [mid=" + mid + ", mname=" + mname + ", bid=" + bid + ", bcontent=" + bcontent + ", book=" + book
				+ "]";
	}



}
