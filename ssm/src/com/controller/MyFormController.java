package com.controller;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.editor.DateEditor;

@Controller
public class MyFormController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(java.util.Date.class, new DateEditor());
	}

	@RequestMapping(value = "/dataFormat", method = RequestMethod.GET)
	public String formController(org.springframework.ui.Model model) {
		Date date = new Date(System.currentTimeMillis());
		System.out.println("old date " + date);
		model.addAttribute(date);
		return "success";
	}

	@RequestMapping(value = "/dataFormat", method = RequestMethod.POST)
	@DateTimeFormat
	public String getDate(java.util.Date date) {
		System.out.println(date);
		return "success";
	}
}
