package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.User;

public interface LoginService {
	public String login(User user,Model model,HttpSession session);
}
