package com.service.admin;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.AdminUserDao;
import com.po.AdminUser;

@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminUserDao adminUserDao;
	@Override
	public String login(AdminUser adminUser, Model model, HttpSession session) {
		// TODO Auto-generated method stub
		if(adminUserDao.login(adminUser) != null && adminUserDao.login(adminUser).size() > 0) {
			session.setAttribute("adminUser", adminUser);
			return "admin/main";
		}else {
		model.addAttribute("msg", "登录错误");
		return "admin/login";
		}
	}

}
