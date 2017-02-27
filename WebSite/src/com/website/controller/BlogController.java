package com.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("blog")
@Controller
public class BlogController {
	/**
	 * 进入博客主页
	 */
	@RequestMapping(value="/")
	public String myBlogView(){
		return "/blog/blog_index";
	}
	
	/**
	 * 进入博客的照片
	 */
	@RequestMapping("/image")
	public String entryBlogImage(){
		return "/blog/blog_album";
	}
	
	/**
	 * 进入不同的分类博客界面
	 * @param typeId 类型的ID值
	 * @param pageNum 页码
	 */
	@RequestMapping("type")
	public void entryBlogType(Long typeId,Long pageNum){
		
	}
	
	@RequestMapping("search")
	public void findBySearch(String regex){
		
	}
	
}
