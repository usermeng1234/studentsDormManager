package com.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.Notice;
import com.service.admin.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticesController {
	@Autowired
	private NoticeService noticeService;
	//去添加公告页面
	@RequestMapping("/toAddNotice")
	public String toAddNotice(){
		return noticeService.toAddNotice();
	}
	//添加一条公告
	@RequestMapping("/addANotice")
	public String addNotice(@ModelAttribute Notice notice, HttpServletRequest request, String updateAct){
		return noticeService.addOrUpdateNotice(notice, request, updateAct);
	}
	//查询公告
	@RequestMapping("/selectNotice")
	public String selectNotice(Model model, String act){
		return noticeService.selectNotice(model,act);
	}
	//删除一条公告
	@RequestMapping("/deleteAnotice")
	public String deleteANotice(Integer id,Model model) {
		return noticeService.deleteANotice(id,model);
	}
	//删除多条公告
	@RequestMapping("/deleteNotice")
	public String deleteNotice(Integer id[],Model model) {
		return noticeService.deleteNotice(id,model);
	}
}
