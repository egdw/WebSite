package com.website.mapper;

import com.website.entites.WebsiteRole;

public interface WebsiteRoleMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(WebsiteRole record);

    int insertSelective(WebsiteRole record);

    WebsiteRole selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(WebsiteRole record);

    int updateByPrimaryKey(WebsiteRole record);
}