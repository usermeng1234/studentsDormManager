package com.service.admin;



import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.AdminUser;

public interface AdminService {
	//管理员登录
	public String login(AdminUser adminUser, Model model, HttpSession session);
}
