package com.website.mapper;

import com.website.entites.WebsiteUserRoleKey;

public interface WebsiteUserRoleMapper {
    int deleteByPrimaryKey(WebsiteUserRoleKey key);

    int insert(WebsiteUserRoleKey record);

    int insertSelective(WebsiteUserRoleKey record);
}