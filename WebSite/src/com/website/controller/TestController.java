package com.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("/HelloWrold")
	public void test(){
		System.out.println("this is a test");
	}
}
