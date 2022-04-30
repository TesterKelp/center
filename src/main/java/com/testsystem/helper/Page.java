package com.testsystem.helper;

import java.util.ArrayList;
import java.util.List;

public class Page {

	
	    private int pageSize; // 表示页面一次要显示多少条记录
	    private int pageNum;   //当前页
	    private int totalRecord;   //表示查询后一共得到多少条结果记录
	    private int totalPage;    //表示将所有的记录进行分页后，一共有多少页
	    private List list=new ArrayList();  //查询数据封装到list中
	    
		public int getPageSize() {
			return pageSize;
		}
		public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
		}
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
		public int getTotalPage() {
			return totalPage;
		}
		public void setTotalPage(int totalPage) {
			this.totalPage = totalPage;
		}
		public List getList() {
			return list;
		}
		public void setList(List list) {
			this.list = list;
		}
	

	    

	
	
	
	
	
}
