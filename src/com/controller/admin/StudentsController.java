package com.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.Students;
import com.service.admin.StudentsService;


@Controller
@RequestMapping("/students")
public class StudentsController {
	@Autowired
	private StudentsService studentsService;
	//查询所有学生
	@RequestMapping("/selectStudents")
	public String selectStudents(Model model, Integer pageCur, String act) {
		return studentsService.selectStudents(model, pageCur, act);}
	
	//根据id查询学生
	@RequestMapping("/idSelectStudent")
		public String idSelectStudent(int id,Model model, Integer pageCur, String act) {
		return studentsService.idSelectStudent(id,model, pageCur, act);}
		
		
	//根据院系查询学生
	@RequestMapping("/yuanxiSelectStudent")
	public String yuanxiSelectStudent(String stuyuanxi,Model model, Integer pageCur, String act) {
		return studentsService.yuanxiSelectStudent(stuyuanxi,model, pageCur, act);}
				
	//根据宿舍查询学生
	@RequestMapping("/dormSelectStudent")
	public String dormSelectStudent(String studorm,Model model, Integer pageCur, String act) {
	return studentsService.dormSelectStudent(studorm,model, pageCur, act);}	
	
	//根据宿舍号查询学生
	@RequestMapping("/dromnumberSelectStudent")
	public String dromnumberSelectStudent(String studromnumber,Model model, Integer pageCur, String act) {
	return studentsService.dromnumberSelectStudent(studromnumber,model, pageCur, act);}	
	//删除一个学生
	@RequestMapping("/deleteAStudents")
	public String deleteAStudents(String id, Model model) {
		return studentsService.deleteAStudents(id, model);
	}
	//删除多个学生
	@RequestMapping("/deleteStudents")
	public String deleteStudents(String ids[], Model model) {
		return studentsService.deleteStudent(ids, model);
	}
	//添加学生 页面
	@RequestMapping("/AddStudents")
	public String toAStudents(Model model){
		model.addAttribute("students", new Students());
		return "admin/AddStudents";
	}
	//添加学生
	@RequestMapping("/addStudents")
	public String addStudents(@ModelAttribute Students students,String id, HttpServletRequest request,Model model, String updateAct){
		return studentsService.addOrUpdateStudents(students,id, request,model,updateAct);
	}
}
