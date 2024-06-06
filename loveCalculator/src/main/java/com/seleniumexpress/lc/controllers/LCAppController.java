package com.seleniumexpress.lc.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seleniumexpress.lc.api.UserInfo;

import jakarta.validation.Valid;

@Controller
public class LCAppController {
	
	
	@RequestMapping("/")
	public String myHomePage(@ModelAttribute("userInfo") UserInfo userInfo) {
		return "home-page";
	}
	
	@RequestMapping("/process-homepage")
	public String showResult(@Valid @ModelAttribute("userInfo") UserInfo userInfo, BindingResult result) {
		
		//System.out.println(userInfo.isTermsAndConditions());
		
		if(result.hasErrors()) {
			List<ObjectError> allErrors = result.getAllErrors();
			for(ObjectError err : allErrors) {
				System.out.println(err);
			}
			return "home-page";
		}
		return "show-result";
	}
	
	
}
