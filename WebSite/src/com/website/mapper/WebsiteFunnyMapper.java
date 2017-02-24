package com.website.mapper;

import java.util.ArrayList;

import com.website.entites.WebsiteFunny;
import com.website.entites.WebsiteProject;

public interface WebsiteFunnyMapper {
	int deleteByPrimaryKey(Long funnyId);

	int insert(WebsiteFunny record);

	int insertSelective(WebsiteFunny record);

	WebsiteFunny selectByPrimaryKey(Long funnyId);

	int updateByPrimaryKeySelective(WebsiteFunny record);

	int updateByPrimaryKeyWithBLOBs(WebsiteFunny record);

	int updateByPrimaryKey(WebsiteFunny record);

	ArrayList<WebsiteFunny> getAll();

	int getFunnyNum();

	ArrayList<WebsiteFunny> selectByPageNum(Integer pageNum, Integer getNum);
}