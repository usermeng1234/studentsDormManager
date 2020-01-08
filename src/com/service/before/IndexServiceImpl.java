package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.StudentsDao;
import com.po.Notice;
import com.po.User;
@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService {
	@Autowired
	private StudentsDao studentsDao;
	@Override
	public String before(Model model, HttpSession session, Notice notice,User user) {
		// TODO Auto-generated method stu
		model.addAttribute("studentslist", studentsDao.selectStudents());
		return "before/index";
	}

}