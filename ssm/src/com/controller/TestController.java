package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Test;
import com.service.TestService;

@Controller
public class TestController {
	@Autowired
	private TestService service;

	@RequestMapping(method = RequestMethod.GET, value = "/queryTest")
	public String query(Map<String, Object> map) {
		List<Test> list = service.getAll();
		System.out.println(list);
		map.put("list", list);
		return "success";
	}

	@RequestMapping(method = RequestMethod.PUT, value = "/queryTest")
	public void update() {

	}

	@RequestMapping(method = RequestMethod.DELETE, value = "/queryTest")
	public String delete(Integer id, Map<String, Object> map) {
		boolean b = service.del(id);
		if (b) {
			List<Test> list = service.getAll();
			map.put("list", list);
			return "success";
		} else {
			return "error";
		}
	}

	@RequestMapping(method = RequestMethod.POST, value = "/queryTest")
	public String add(Integer id, String name, Map<String, Object> map) {
		Test test = new Test();
		test.setId(id);
		test.setName(name);
		boolean b = service.add(test);
		if (b) {
			List<Test> list = service.getAll();
			map.put("list", list);
			return "success";
		} else {
			return "error";
		}
	}
}
