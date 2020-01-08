package com.controller.before;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.User;

import com.service.before.RegisterService;
@Controller
public class registerController {
	@Autowired
	private RegisterService registerService;
	//前端注册
	@RequestMapping("/before/register")
	public String register(User user1,Model model,HttpSession session) {
		return registerService.register(user1, model, session);
		
	}
}
