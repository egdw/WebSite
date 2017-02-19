package com.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.model.Test;

@RestController
public class UrlController {

	@ModelAttribute
	public void testModelAttribute(Model model) {
		model.addAttribute("testName", "this is my first ModelAttribute");
		Test test = new Test();
		test.setId(100);
		test.setName("hdy");
		model.addAttribute(test);
	}

	@RequestMapping(value = "/{num}/urlTest", method = RequestMethod.GET)
	public String test(@PathVariable("num") String num) {
		System.out.println("get the num" + num);
		return "success";
	}
}
