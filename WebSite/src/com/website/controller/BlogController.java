package com.website.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.website.entites.WebsiteBlog;
import com.website.service.WebSiteBlogService;
import com.website.utils.UUIDUtils;

@RequestMapping("blog")
@Controller
public class BlogController {
	@Autowired
	private WebSiteBlogService service;

	/**
	 * 进入博客主页
	 */
	@RequestMapping(value = "/")
	public String myBlogView() {
		return "/blog/blog_index";
	}

	/**
	 * 进入博客的照片
	 */
	@RequestMapping("/image")
	public String entryBlogImage() {
		return "/blog/blog_album";
	}

	/**
	 * 进入不同的分类博客界面
	 * 
	 * @param typeId
	 *            类型的ID值
	 * @param pageNum
	 *            页码
	 */
	@RequestMapping("type")
	public String entryBlogType(@RequestParam(required = false) Long typeId,
			@RequestParam(required = false) Long pageNum) {
		return "/blog/blog_type";
	}
	
	/**
	 * 进入博客管理界面
	 * @return
	 */
	@RequestMapping("admin")
	public String entryBlogAdmin(Map<String, Object> map,@RequestParam(required=false)Integer pageNum){
		if(pageNum==null){
			pageNum = 0;
		}
		ArrayList<WebsiteBlog> list = service.selectBlogByNum(pageNum);
		map.put("list", list);
		return "/blog/blog_admin";
	}
	
	@RequestMapping("search")
	public void findBySearch(String regex) {

	}

	/**
	 * 进入文章详细内容的控制器
	 * 
	 * @return
	 */
	@RequestMapping("detail")
	public String entryPage() {
		return "/blog/blog_text";
	}

	/**
	 * 上传图片方法
	 * 
	 * @return
	 */
	@SuppressWarnings("deprecation")
	@RequestMapping("imageUpload")
	@ResponseBody
	public String uploadImage(@RequestParam("image") MultipartFile file) {
		if (file == null) {
			// 判断file是否为空,为空就返回空指针的json数据
			return "{url:'null'}";
		}
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		String filename = file.getOriginalFilename();
		File path = null;
		if (filename != null && !filename.isEmpty()) {
			int lastIndexOf = filename.lastIndexOf(".");
			String string = filename.substring(lastIndexOf);
			path = new File(request.getRealPath("upload/image/") + "/"
					+ UUIDUtils.getUUID() + string);
		}
		try {
			byte[] bytes = file.getBytes();
			BufferedOutputStream bos = new BufferedOutputStream(
					new FileOutputStream(path));
			bos.write(bytes);
			bos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if (path.exists()) {
			// 这里进行返回相应的图片的地址.
			String absolutePath = path.getAbsolutePath();
			int indexOf = absolutePath.indexOf("upload/image/");
			String substring = absolutePath.substring(indexOf);
			return "{url:'" + substring + "'}";
		} else {
			return "{url:'null'}";
		}
	}

	/**
	 * 添加博客
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	@ResponseBody
	public String addBlog(String title, Integer type, String pic_url,
			String content) {
		WebsiteBlog blog = new WebsiteBlog();
		blog.setPicUrl(pic_url);
		blog.setType(type.byteValue());
		blog.setTitle(title);
		blog.setCreateTime(new Date());
		blog.setContent(content);
		boolean b = service.addBlog(blog);
		if(b){
			return "success";
		}else{
			return "error";
		}
	}
	
	/**
	 * 修改博客
	 * @return
	 */
	@RequestMapping(value="update",method=RequestMethod.PUT)
	@ResponseBody
	public String update(WebsiteBlog record){
		if(record!=null){
			System.out.println(record!=null);
			return "error";
		}
		boolean update = service.update(record);
		if(update){
			return "success";
		}else{
			return "error";
		}
	}
	
	
	/**
	 * 根据ID号进行获取相应的对象
	 * @return
	 */
	@RequestMapping(value="get",method=RequestMethod.GET)
	@ResponseBody
	public WebsiteBlog get(Integer id){
		WebsiteBlog blog = service.getBlogById(id);
		return blog;
	}
}
