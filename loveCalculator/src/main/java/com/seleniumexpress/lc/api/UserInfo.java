package com.seleniumexpress.lc.api;

import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

public class UserInfo {
	
	@NotEmpty(message="* UserName should not be empty")
	//@Min(value = 3, message = "* UserName should have atleast 3 characters")
	@Size(min = 3, max = 15, message="* UserName should have atleast 3 characters")
	private String userName;
	
	private String crushName;
	
	@AssertTrue(message = "You have to agree to terms and conditions to use our app")
	private boolean termsAndConditions;
	

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

	public boolean isTermsAndConditions() {
		return termsAndConditions;
	}

	public void setTermsAndConditions(boolean termsAndConditions) {
		this.termsAndConditions = termsAndConditions;
	}

	@Override
	public String toString() {
		return "UserInfo [userName=" + userName + ", crushName=" + crushName + "]";
	}
	
	

}
