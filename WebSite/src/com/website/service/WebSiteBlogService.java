package com.website.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.website.entites.WebsiteBlog;
import com.website.mapper.WebsiteBlogMapper;
import com.website.utils.ConstantClass;

@Service
public class WebSiteBlogService {
	@Autowired
	private WebsiteBlogMapper mapper;

	@Transactional
	public boolean addBlog(WebsiteBlog record) {
		int insert = mapper.insert(record);
		if (insert > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public WebsiteBlog getBlogById(Integer id){
		WebsiteBlog blog = mapper.selectByPrimaryKey(id);
		return blog;
	}
	
	@Transactional
	public boolean update(WebsiteBlog record) {
		int i = mapper.updateByPrimaryKey(record);
		if (i > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Transactional
	public boolean delete(Integer id) {
		int i = mapper.deleteByPrimaryKey(id);
		if (i > 0) {
			return true;
		} else {
			return false;
		}
	}

	public WebsiteBlog query(Integer id){
		WebsiteBlog blog = mapper.selectByPrimaryKey(id);
		return blog;
	}
	
	public Integer getProjectNum() {
		int num = mapper.getBLogNum();
		// 获取到所有项目的数量
		return num;
	}
	
	/**
	 * 获取分页
	 * @return
	 */
	public Integer getPageNum(){
		Integer num = getProjectNum();
		int page = 0;
		if (num % ConstantClass.EVERT_PROJECT_GET_NUM == 0) {
			page = num / ConstantClass.EVERT_PROJECT_GET_NUM;
		} else {
			page = num / ConstantClass.EVERT_PROJECT_GET_NUM + 1;
		}
		return page;
	}
	
	public ArrayList<WebsiteBlog> selectBlogByNum(Integer pageNum){
		ArrayList<WebsiteBlog> arrayList = mapper.selectByPageNum(pageNum* ConstantClass.EVERT_PROJECT_GET_NUM, ConstantClass.EVERT_PROJECT_GET_NUM);
		return arrayList;
	}
	
	public ArrayList<WebsiteBlog> getAll(){
		ArrayList<WebsiteBlog> list = mapper.getAll();
		return list;
	}
}
