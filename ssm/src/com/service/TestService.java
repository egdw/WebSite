package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.TestMapper;
import com.model.Test;
import com.model.TestExample;

@Service
public class TestService {
	@Autowired
	private TestMapper mapper;

	public boolean add(Test test) {
		int i = mapper.insert(test);
		if (i > 0) {
			return true;
		} else {
			return false;
		}
	}

	public boolean del(Integer id) {
		int key = mapper.deleteByPrimaryKey(id);
		if (key > 0) {
			return true;
		} else {
			return false;
		}
	}

	public List<Test> getAll() {
		TestExample example = new TestExample();
		List<Test> list = mapper.selectByExample(example);
		return list;
	}

	public boolean update(Test test) {
		int key = mapper.updateByPrimaryKey(test);
		if (key > 0) {
			return true;
		} else {
			return false;
		}
	}
}
