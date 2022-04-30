package com.testsystem.systemtest.vo;

public class WebTask {

	int taskid;
	String taskname;
	int userid;
	String createtime;
	String servername;
	int status;
	String clicentaddress;
	int tasktype;
	String rtime;
	String runnertime;
	int testtype;

	
	
	
	
	public int getTesttype() {
		return testtype;
	}

	public void setTesttype(int testtype) {
		this.testtype = testtype;
	}

	public String getRunnertime() {
		return runnertime;
	}

	public void setRunnertime(String runnertime) {
		this.runnertime = runnertime;
	}

	public String getRtime() {
		return rtime;
	}

	public void setRtime(String rtime) {
		this.rtime = rtime;
	}

	public int getTasktype() {
		return tasktype;
	}

	public void setTasktype(int tasktype) {
		this.tasktype = tasktype;
	}

	public String getClicentaddress() {
		return clicentaddress;
	}

	public void setClicentaddress(String clicentaddress) {
		this.clicentaddress = clicentaddress;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getServername() {
		return servername;
	}

	public void setServername(String servername) {
		this.servername = servername;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public int getTaskid() {
		return taskid;
	}

	public void setTaskid(int taskid) {
		this.taskid = taskid;
	}

	public String getTaskname() {
		return taskname;
	}

	public void setTaskname(String taskname) {
		this.taskname = taskname;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

}
