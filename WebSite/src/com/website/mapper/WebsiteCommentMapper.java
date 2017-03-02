package com.website.mapper;

import com.website.entites.WebsiteComment;

public interface WebsiteCommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WebsiteComment record);

    int insertSelective(WebsiteComment record);

    WebsiteComment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WebsiteComment record);

    int updateByPrimaryKeyWithBLOBs(WebsiteComment record);

    int updateByPrimaryKey(WebsiteComment record);
}