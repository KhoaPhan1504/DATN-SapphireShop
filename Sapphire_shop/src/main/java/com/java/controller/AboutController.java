package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutController extends CommonController{

	@GetMapping(value = "/aboutUs")
	public String about() {
		
		return "site/aboutUs";
	}
}
