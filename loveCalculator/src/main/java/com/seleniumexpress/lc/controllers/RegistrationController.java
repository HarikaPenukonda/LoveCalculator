package com.seleniumexpress.lc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seleniumexpress.lc.api.RegisterInfo;

@Controller
public class RegistrationController {
	
	@RequestMapping("/register-user")
	public String registerUser(@ModelAttribute("registerInfo") RegisterInfo registerInfo) {
		return "register-page";
	}
	
	@RequestMapping("/register-success")
	public String registerResult(@ModelAttribute("registerInfo") RegisterInfo registerInfo) {
		return "register-success-page";
	}


}
