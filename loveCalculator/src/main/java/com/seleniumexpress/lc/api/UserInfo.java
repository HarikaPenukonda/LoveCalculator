package com.seleniumexpress.lc.api;

public class UserInfo {
	
	private String userName;
	
	private String crushName;
	
	

	public UserInfo() {
		System.out.println("userinfo constructor is called");
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCrushName() {
		return crushName;
	}

	public void setCrushName(String crushName) {
		this.crushName = crushName;
	}

	@Override
	public String toString() {
		return "UserInfo [userName=" + userName + ", crushName=" + crushName + "]";
	}
	
	

}