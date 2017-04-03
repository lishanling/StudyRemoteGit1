package com.yc.novel.entity;

import java.util.List;
/**
 * 閫氱敤鍒嗛〉bean
 * @author Administrator
 *
 * @param <T>
 */
public class PaginationBean<T> {
	private Integer currPage = 1; 
	private Integer pageSize = 10; 

	private Integer total; 
	private Integer totalPage; 
	private List<T> rows; 

	
	
	public PaginationBean() {
	
	}

	public PaginationBean(Integer total, Integer totalPage, List<T> rows) {
		this.total = total;
		this.totalPage = totalPage;
		this.rows = rows;
	}

	public Integer getCurrPage() {
		return currPage;
	}

	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "PaginationBean [currPage=" + currPage + ", pageSize=" + pageSize + ", total=" + total 
				+ ", totalPage=" + totalPage + "\nrows=" + rows + "]";
	}
	
	
}
