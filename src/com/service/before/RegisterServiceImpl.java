package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.UserDao;
import com.po.User;
@Service("registerService")
@Transactional
public class RegisterServiceImpl implements RegisterService{
	private UserDao UserDao;
	@Override
	public String register(User user1, Model model, HttpSession session) {
		// TODO Auto-generated method stub
		if (UserDao.registerU(user1)>0) {
			return "mengwenxing";
		}
		return "meng";
	}

}
