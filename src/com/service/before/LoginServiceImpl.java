package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.IndexDao;
import com.dao.UserDao;
import com.po.User;
@Service("loginService")
@Transactional
public class LoginServiceImpl implements LoginService {
@Autowired
private UserDao userDao;
@Autowired
private IndexDao indexDao;
	@Override
	public String login(User user, Model model, HttpSession session) {
		// TODO Auto-generated method stub
		User user2=userDao.login(user);
		if(userDao.login(user) != null) {
			session.setAttribute("user", user2);
			model.addAttribute("msg", user.getUsernames());
			model.addAttribute("noticelist", indexDao.selectNotice());
			return "before/index";
		}else {
		model.addAttribute("msg", "登录失败");
		return "before/index";
		}
	}

}
