package com.seleniumexpress.lc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.seleniumexpress.lc.api.UserInfo;

@Controller
public class LCAppController {
	
	
	@RequestMapping("/")
	public String myHomePage(@ModelAttribute("userInfo") UserInfo userInfo) {
		return "home-page";
	}
	
	@RequestMapping("/process-homepage")
	public String showResult(@ModelAttribute("userInfo") UserInfo userInfo) {
		return "show-result";
	}

}
