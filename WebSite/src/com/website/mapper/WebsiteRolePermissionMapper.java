package com.website.mapper;

import com.website.entites.WebsiteRolePermission;

public interface WebsiteRolePermissionMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(WebsiteRolePermission record);

    int insertSelective(WebsiteRolePermission record);

    WebsiteRolePermission selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(WebsiteRolePermission record);

    int updateByPrimaryKey(WebsiteRolePermission record);
}