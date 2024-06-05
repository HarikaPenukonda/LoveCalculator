package com.seleniumexpress.lc.api;

import java.util.Arrays;

public class RegisterInfo {
	
	private String myName;
	
	private String userName;
	
	private String password;
	
	private String country;
	
	private String[] hobby;
	
	private String gender;

	public String getMyName() {
		return myName;
	}

	public void setMyName(String myName) {
		this.myName = myName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "RegisterInfo [myName=" + myName + ", userName=" + userName + ", password=" + password + ", country="
				+ country + ", hobby=" + Arrays.toString(hobby) + ", gender=" + gender + "]";
	}
	
	

}
