package com.seleniumexpress.lc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LCAppController {
	
	
	@RequestMapping("/")
	public String myHomePage() {
		return "home-page";
	}
	
	@RequestMapping("/process-homepage")
	public String showResult(@RequestParam("userName") String userName, 
			@RequestParam("crushName") String crushName, Model model) {
		
		System.out.println("username : " + userName);
		System.out.println("crushname : " + crushName);
		model.addAttribute("userName", userName);
		model.addAttribute("crushName", crushName);
		
		return "show-result";
	}

}
