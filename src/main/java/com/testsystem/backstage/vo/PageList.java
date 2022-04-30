package com.testsystem.backstage.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * 封装分页对象 
 **/
public class PageList {
    private int pageNum;   //当前页
    private int totalRecord;   //总行数
    private int pages;    //总页数
    
    private List list=new ArrayList();

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}

	public List getList() {
		  if(list==null){
	         list=new ArrayList();
	        }
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

  
    
    
    
}
