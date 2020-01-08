package com.service.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.po.Notice;

public interface NoticeService {
	//修改添加公告
	public String addOrUpdateNotice(Notice notice, HttpServletRequest request, String updateAct);
	//添加公告页面
	public String toAddNotice();
	//查询公告
	public String selectNotice(Model model,String act);
	//删除一条公告
	public String deleteANotice(Integer id,Model model);
	//删除多条公告
	public String deleteNotice(Integer[] id,Model model);
}
