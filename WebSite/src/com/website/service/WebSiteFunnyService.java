package com.website.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.website.entites.WebsiteFunny;
import com.website.entites.WebsiteProject;
import com.website.mapper.WebsiteFunnyMapper;
import com.website.utils.ConstantClass;

@Service
public class WebSiteFunnyService {
	@Autowired
	private WebsiteFunnyMapper mapper;

	public ArrayList<WebsiteFunny> getAll() {
		ArrayList<WebsiteFunny> list = mapper.getAll();
		return list;
	}

	@Transactional
	public boolean insertFunny(WebsiteFunny record) {
		int i = mapper.insert(record);
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Transactional
	public boolean updateFunny(WebsiteFunny record) {
		int i = mapper.updateByPrimaryKey(record);
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Transactional
	public boolean delFunny(Long id) {
		int i = mapper.deleteByPrimaryKey(id);
		if (i > 0) {
			return true;
		}
		return false;
	}

	public WebsiteFunny getById(Long id) {
		WebsiteFunny key = mapper.selectByPrimaryKey(id);
		return key;
	}
	
	public Integer getProjectNum() {
		int num = mapper.getFunnyNum();
		// 获取到所有项目的数量
		return num;
	}

	/**
	 * 获取能分页的页数
	 * 
	 * @return
	 */
	public Integer getPageNum() {
		Integer num = getProjectNum();
		int page = 0;
		if(num%ConstantClass.EVERT_PROJECT_GET_NUM==0){
			page = num / ConstantClass.EVERT_PROJECT_GET_NUM;
		}else{
			page = num / ConstantClass.EVERT_PROJECT_GET_NUM + 1;
		}
		return page;
	}

	/**
	 * 分页操作
	 * 
	 * @param pageNum
	 *            页码
	 * @return
	 */
	public ArrayList<WebsiteFunny> selectProjectByNum(Integer pageNum) {
		ArrayList<WebsiteFunny> list = mapper.selectByPageNum(pageNum
				* ConstantClass.EVERT_PROJECT_GET_NUM,
				ConstantClass.EVERT_PROJECT_GET_NUM);
		return list;
	}
	
}
