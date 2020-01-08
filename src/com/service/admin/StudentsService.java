package com.service.admin;



import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.po.Students;

public interface StudentsService {
	//����ѧ�Ų�ѯ
	public String idSelectStudent(int id,Model model, Integer pageCur, String act);
	//����Ժϵ��ѯ
	public String yuanxiSelectStudent(String stuyuanxi,Model model, Integer pageCur, String act);
	//���������ѯ 
	public String dormSelectStudent(String studorm,Model model, Integer pageCur, String act);
	//��������Ų�ѯ
	public String dromnumberSelectStudent(String studorm,Model model, Integer pageCur, String act);
	//ɾ�����ѧ��
	public String deleteStudent(String ids[], Model model);
	//ɾ��һ��ѧ��
	public String deleteAStudents(String id, Model model);
	//��ӣ��޸�ѧ��
	public String addOrUpdateStudents(Students students,String id,HttpServletRequest request,Model model, String updateAct);
	//��ѯ����ѧ��
	public String selectStudents(Model model, Integer pageCur, String act);
}
