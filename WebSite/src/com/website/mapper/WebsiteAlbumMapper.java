package com.website.mapper;

import com.website.entites.WebsiteAlbum;

public interface WebsiteAlbumMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WebsiteAlbum record);

    int insertSelective(WebsiteAlbum record);

    WebsiteAlbum selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(WebsiteAlbum record);

    int updateByPrimaryKey(WebsiteAlbum record);
}