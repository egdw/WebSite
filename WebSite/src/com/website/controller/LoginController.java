package com.website.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.website.entites.WebsiteUser;
import com.website.service.WebSiteUserService;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	private WebSiteUserService service;

	/**
	 * 用户登录操作
	 * 
	 * @param username
	 *            账号
	 * @param password
	 *            密码
	 */
	@RequestMapping(value = "Login.do", method = RequestMethod.POST)
	public String loginByUsernamePasswd(String username, String password,
			HttpSession session) {
		WebsiteUser user = service.loginByUsernamePasswd(username, password);
		if(user!=null){
			session.setAttribute("currentUser", user);
			return "admin/admin_index";
		}else{
			//这里有问题.等我集成shiro
			return null;
		}
	}

	/**
	 * 用户注册操作
	 * 
	 * @param user
	 *            需要注册的用户
	 */
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public void register(WebsiteUser user) {

	}

	/**
	 * 退出登录
	 */
	public void logout() {
		// 暂时用session代替.后续直接加上shiro
	}
}
