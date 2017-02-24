package com.website.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.website.entites.WebsiteProject;
import com.website.entites.WebsiteTemp;
import com.website.mapper.WebsiteTempMapper;
import com.website.utils.ConstantClass;

@Service
public class WebSiteTempService {
	@Autowired
	private WebsiteTempMapper mapper;

	public ArrayList<WebsiteTemp> getAll() {
		ArrayList<WebsiteTemp> list = mapper.getAll();
		return list;
	}

	@Transactional
	public boolean insertTemp(WebsiteTemp temp) {
		int i = mapper.insert(temp);
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Transactional
	public boolean updateTemp(WebsiteTemp temp) {
		int i = mapper.updateByPrimaryKey(temp);
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Transactional
	public boolean delTemp(long id) {
		int i = mapper.deleteByPrimaryKey(id);
		if (i > 0) {
			return true;
		}
		return false;
	}

	public WebsiteTemp getById(Long id) {
		WebsiteTemp temp = mapper.selectByPrimaryKey(id);
		return temp;
	}
	
	public Integer getProjectNum() {
		int num = mapper.getTempNum();
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
	public ArrayList<WebsiteTemp> selectProjectByNum(Integer pageNum) {
		ArrayList<WebsiteTemp> list = mapper.selectByPageNum(pageNum
				* ConstantClass.EVERT_PROJECT_GET_NUM,
				ConstantClass.EVERT_PROJECT_GET_NUM);
		return list;
	}

}
