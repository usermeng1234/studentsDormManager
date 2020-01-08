package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.User;

public interface RegisterService {
	public String register(User user1,Model model,HttpSession session);
}
