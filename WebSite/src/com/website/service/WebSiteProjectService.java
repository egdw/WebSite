package com.website.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.website.entites.WebsiteProject;
import com.website.mapper.WebsiteProjectMapper;

@Service
public class WebSiteProjectService {
	@Autowired
	private WebsiteProjectMapper mapper;

	public ArrayList<WebsiteProject> getAll() {
		ArrayList<WebsiteProject> list = mapper.getAll();
		return list;
	}

	@Transactional
	public boolean del(Long id) {
		if (id != null) {
			int i = mapper.deleteByPrimaryKey(id);
			if (i > 0) {
				return true;
			}
			return false;
		} else {
			return false;
		}
	}

	@Transactional
	public boolean update(WebsiteProject record) {
		if (record != null) {
			int i = mapper.updateByPrimaryKey(record);
			if (i > 0) {
				return true;
			} else {
				return false;
			}
		}
		return false;
	}

	@Transactional
	public boolean add(WebsiteProject record) {
		if (record != null) {
			int i = mapper.insert(record);
			if (i > 0) {
				return true;
			} else {
				return false;
			}
		}
		return false;
	}
	
	public WebsiteProject getById(Long id){
		WebsiteProject project = mapper.selectByPrimaryKey(id);
		return project;
	}
}
