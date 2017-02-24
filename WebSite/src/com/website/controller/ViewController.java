package com.website.controller;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.website.entites.WebsiteFunny;
import com.website.entites.WebsiteTemp;
import com.website.service.WebSiteFunnyService;
import com.website.service.WebSiteTempService;

/**
 * 控制视图跳转的控制器
 * @author hdy
 *
 */
@Controller
public class ViewController {
	@Autowired
	private WebSiteFunnyService funnyService;
	@Autowired
	private WebSiteTempService tempService;
	
	
	
	/**
	 * 进入趣味网站主页
	 */
	@RequestMapping(value="funnyView.do")
	public String funnyView(Map<String, Object> map){
		ArrayList<WebsiteFunny> list = funnyService.getAll();
		map.put("projects", list);
		return "/project/funny_list";
	}
	
	/**
	 * 进入临时网站主页
	 */
	@RequestMapping(value="tempView.do")
	public String tempView(Map<String, Object> map){
		ArrayList<WebsiteTemp> list = tempService.getAll();
		map.put("projects", list);
		return "/project/temp_list";
	}
	
	
	/**
	 * 进入博客主页
	 */
	@RequestMapping(value="blog.do")
	public void myBlogView(){
		
	}
	
	
}
