package com.website.mapper;

import java.util.ArrayList;

import com.website.entites.WebsiteBlog;

public interface WebsiteBlogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WebsiteBlog record);

    int insertSelective(WebsiteBlog record);

    WebsiteBlog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WebsiteBlog record);

    int updateByPrimaryKeyWithBLOBs(WebsiteBlog record);

    int updateByPrimaryKey(WebsiteBlog record);
    
    ArrayList<WebsiteBlog> getAll();
    
    int getBLogNum();

	ArrayList<WebsiteBlog> selectByPageNum(Integer pageNum, Integer getNum);
}