package com.controller.before;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.po.Notice;
import com.po.User;
import com.service.before.IndexService;
@Controller
public class indexController {
	@Autowired
   private IndexService indexService;
	//前端首页
	@RequestMapping("/before")
	public String before(Model model,HttpSession session, Notice notice,User user) {
		
		return indexService.before(model, session, notice,user);
	} 
}
