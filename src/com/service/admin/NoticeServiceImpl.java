package com.service.admin;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.NoticeDao;
import com.po.Notice;
import com.po.Students;
@Service("noticeService")
@Transactional
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDao noticeDao;
	@Override
	public String toAddNotice() {
		// TODO Auto-generated method stub
		return "admin/AddNotice";
	}
	
	@Override
	public String addOrUpdateNotice(Notice notice, HttpServletRequest request, String updateAct) {
		// TODO Auto-generated method stub
		if(noticeDao.addNotice(notice)>0){
			return "forward:/notice/selectNotice";
		}else{
			return "admin/AddNotice";
		}
	}

	@Override
	public String selectNotice(Model model,String act) {
		// TODO Auto-generated method stub
		List<Notice> noticeall=noticeDao.selectNotice();
		model.addAttribute("noticeall", noticeall);
		model.addAttribute("mgs", "公告如下");
		if("deleteNotice".equals(act)) {
			return "admin/noticeDelete";	
		}else
		return "admin/noticeselect";
	}

	@Override
	public String deleteANotice(Integer id,Model model) {
		// TODO Auto-generated method stub
		noticeDao.deleteANotice(id);
		model.addAttribute("msg", "删除成功");
		return "forward:/notice/selectNotice";
	}

	@Override
	public String deleteNotice(Integer[] id, Model model) {
		// TODO Auto-generated method stub
		List<Integer> list1 = new ArrayList<Integer>();
		for (int i = 0; i < id.length; i++) {	
			list1.add(id[i]);
		}
		noticeDao.deleteNotice(list1);
		model.addAttribute("msg", "删除成功");
		return "forward:/notice/selectNotice";
	}

}
