package com.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("project")
public class MyProjectController {
	@RequestMapping("MyProject.do")
	public String execute(){
		return "/project/list";
	}
}
