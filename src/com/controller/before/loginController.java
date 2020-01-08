package com.controller.before;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.User;
import com.service.before.LoginService;

@Controller
public class loginController {
	@Autowired
	private LoginService loginService;
	//前端登录
	@RequestMapping("/before/login")
	public String login(User user,Model model,HttpSession session) {
		return loginService.login(user, model, session);
		
	}
}
