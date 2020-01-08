package com.controller.before;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.User;
import com.service.before.LoginService;
@Controller
public class testController {
	
	@RequestMapping("/before/meng")
	public String login() {
		return "before/meng";
		
	}
}
