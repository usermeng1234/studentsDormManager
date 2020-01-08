package com.controller.admin;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.AdminUser;
import com.service.admin.AdminService;
@Controller
public class AdminController {
	@Autowired
	//去登陆
	private AdminService adminService;
	@RequestMapping("/admin")
	public String toLogin(@ModelAttribute AdminUser adminUser) {
		return "admin/login";
	}
	//测试
//	@RequestMapping("/index")
//	public String toLogin1() {
//		return "admin/index";
//	}
//	@RequestMapping("/login")
//	public String to() {
//		return "admin/index1";
//	}
	//登录
	@RequestMapping("/admin/login")
	public String login(@ModelAttribute AdminUser adminUser, Model model, HttpSession session) {
		return adminService.login(adminUser, model, session);
	}
	//退出登录
	@RequestMapping("/exit")
	public String exit(@ModelAttribute AdminUser adminUser,HttpSession session) {
		session.invalidate();
		return "admin/login";
	}
}
