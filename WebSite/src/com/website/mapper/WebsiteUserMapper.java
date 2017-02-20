package com.website.mapper;

import com.website.entites.WebsiteUser;

public interface WebsiteUserMapper {
    int deleteByPrimaryKey(Long userId);

    int insert(WebsiteUser record);

    int insertSelective(WebsiteUser record);

    WebsiteUser selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(WebsiteUser record);

    int updateByPrimaryKey(WebsiteUser record);
}