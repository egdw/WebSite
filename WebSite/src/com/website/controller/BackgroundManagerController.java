package com.website.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.website.entites.WebsiteProject;
import com.website.entites.WebsiteUser;
import com.website.service.WebSiteProjectService;
import com.website.service.WebSiteUserService;

@Controller
@RequestMapping("manager")
public class BackgroundManagerController {
	@Autowired
	private WebSiteUserService service;
	@Autowired
	private WebSiteProjectService projectService;

	@RequestMapping("manager_person_setting.do")
	public String entryPersonSetting(Map<String, Object> map) {
		Subject subject = SecurityUtils.getSubject();
		String principal = (String) subject.getPrincipal();
		WebsiteUser user = service.getByUsername(principal);
		map.put("user", user);
		return "admin/admin_person_setting";
	}

	/**
	 * 项目显示界面.进行分页操作
	 * 
	 * @param pageNum
	 *            当前的页数
	 * @return
	 */
	@RequestMapping("manager_project_manager.do")
	public String entryProjectManager(Integer pageNum, Map<String, Object> map) {
		if (pageNum == null) {
			pageNum = 0;
		}
		ArrayList<WebsiteProject> list = projectService
				.selectProjectByNum(pageNum);
		map.put("pageNum", String.valueOf(pageNum + 1));
		int integer = projectService.getPageNum();
		map.put("allNum", String.valueOf(integer));
		map.put("projects", list);
		return "admin/admin_project_manager";
	}

	@RequestMapping(value = "manager_project_add.do", method = RequestMethod.POST)
	@ResponseBody
	public String addProject(
			@RequestParam("project_topic") String project_topic,
			@RequestParam("project_text") String project_text,
			@RequestParam("project_url") String project_url) {
		WebsiteProject project = new WebsiteProject();
		project.setProjectText(project_text);
		project.setProjectTopic(project_topic);
		project.setProjectUrl(project_url);
		project.setProjectCreateDate(new Date());
		boolean b = projectService.add(project);
		if (b) {
			return "{add_project_true}";
		}
		return "{add_project_error}";
	}

	@RequestMapping(value = "manager_project_delete.do", method = RequestMethod.POST)
	@ResponseBody
	public String delProject(Long projectId) {
		if (projectId != null) {
			boolean del = projectService.del(projectId);
			if (del) {
				return "{project_del_success}";
			}
		}
		return "{project_del_error}";
	}

	@RequestMapping(value = "manager_project_update.do", method = RequestMethod.POST)
	@ResponseBody
	public String updateProject(Long projectId, String projectUrl,
			String projectText, String projectTopic) {
		if (projectId != null && projectUrl != null && projectText != null
				&& projectText != null) {
			WebsiteProject project = projectService.getById(projectId);
			if(project!=null){
				project.setProjectText(projectText);
				project.setProjectTopic(projectTopic);
				project.setProjectUrl(projectUrl);
				project.setProjectId(projectId);
				projectService.update(project);
				return "{project_update_success}";
			}
		}
		return "{project_update_error}";
	}
}
