package com.seleniumexpress.lc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.seleniumexpress.lc.api.UserInfo;

@Controller
public class LCAppController {
	
	
	@RequestMapping("/")
	public String myHomePage() {
		return "home-page";
	}
	
	@RequestMapping("/process-homepage")
	public String showResult(UserInfo userInfo, Model model) {
		
		System.out.println("username : " + userInfo.getUserName());
		System.out.println("crushname : " + userInfo.getCrushName());
		model.addAttribute("userInfo", userInfo);
		
		
		return "show-result";
	}

}
