package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.Notice;
import com.po.User;;

public interface IndexService {
	public String before(Model model,HttpSession session, Notice notice,User user);
}
