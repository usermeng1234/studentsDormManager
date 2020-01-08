package com.service.admin;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.StudentsDao;
import com.exception.MyExceptionHandler;
import com.po.Students;
import com.util.MyUtil;

@Service("studentsService")
@Transactional
public class StudentsServiceImpl implements StudentsService {
	@Autowired
	private StudentsDao studentsDao;
	//重写接口方法
	@Override
	public String selectStudents(Model model, Integer pageCur, String act) {
		// TODO Auto-generated method stub
		List<Students> allStudents =studentsDao.selectStudents();
		//往前台传数据，可以传对象，可以传List，通过el表达式 ${}可以获取到，
		model.addAttribute("allStudents", allStudents);
//		int temp = allStudents.size();
//		model.addAttribute("totalCount", temp);
//		int totalPage = 0;
//		if (temp == 0) {
//			totalPage = 0;//��ҳ��
//		} else {
//			//���ش��ڻ��ߵ���ָ�����ʽ����С����
//			totalPage = (int) Math.ceil((double) temp / 10);
//		}
//		if (pageCur == null) {
//			pageCur = 1;
//		}
//		if ((pageCur - 1) * 10 > temp) {
//			pageCur = pageCur - 1;
//		}
		//��ҳ��ѯ
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("startIndex", (pageCur - 1) * 10);//��ʼλ��
//		map.put("perPageSize", 10);//ÿҳ10��
//		allStudents = studentsDao.selectAllGoodsByPage(map);
//		model.addAttribute("allGoods", allGoods);
//		model.addAttribute("totalPage", totalPage);
//		model.addAttribute("pageCur", pageCur);
		//ɾ����ѯ
		if("deleteStudents".equals(act)){
			return "admin/deleteStudents";
		}
		
		//�޸Ĳ�ѯ
		else if("updateSelect".equals(act)){
			return "admin/updateStudents";
		}else{
			return "admin/selectStudents";
		}
	}
	
	
	@Override
	public String deleteAStudents(String id, Model model) {
		studentsDao.deleteAStudents(id);
		model.addAttribute("msg", "删除成功");
		return "forward:/students/selectStudents?act=selectStudents";
	}
	
	
	
	@Override
	public String addOrUpdateStudents(Students students,String id,HttpServletRequest request,Model model, String updateAct) {
		
		String newFileName = "";
		String fileName = students.getImage().getOriginalFilename(); 
		
		if(fileName.length() > 0){
			String realpath = request.getServletContext().getRealPath("logos");
			
			String fileType = fileName.substring(fileName.lastIndexOf('.'));
			
			newFileName = MyUtil.getStringID() + fileType;
			students.setLogoImage(newFileName);
			File targetFile = new File(realpath, newFileName); 
			if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        } 
			
	        try {   
	        	students.getImage().transferTo(targetFile);
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
		}
	
		if("update".equals(updateAct)){
			
	       if(studentsDao.updateStudentsById(students) > 0){
	    	   
      	return "forward:/students/selectStudents?act=selectStudents";
	        }else{
	        	return "/students/updateAgoods";
	       }
		}else{
			
			if (studentsDao.selectAStudent(id)>0) {
				model.addAttribute("msg", "用户存在");
				return "admin/AddStudents";
			}else if(studentsDao.addStudents(students)>0){
					//转发到查询的controller
				model.addAttribute("msg1", "添加成功");
				}
			
//			if(studentsDao.addStudents(students)>0){
//				//转发到查询的controller
//				return "admin/main";
//			}else{
//				return "card/addCard";
//			
//			}
			
		}
		return "admin/main";
	}

	@Override
	public String idSelectStudent(int id, Model model, Integer pageCur, String act) {
		// TODO Auto-generated method stub
		List<Students> allStudents =studentsDao.selectStudentsById(id);
		Students stu=studentsDao.selectStudentsByIds(id);
		model.addAttribute("stu",stu);
		model.addAttribute("allStudents", allStudents);
		if("idSelect".equals(act)) {
			return "admin/idSelect";
		}
		else if ("updateAStudents".equals(act)) {
			model.addAttribute("stuA", stu);
			return "admin/updateAStudents";
		}
		else if ("detils".equals(act)) {
			return "admin/studentsDetils";
		}
		
		return "admin/idSelect";
		
	}


	@Override
	public String yuanxiSelectStudent(String stuyuanxi, Model model, Integer pageCur, String act) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				List<Students> allStudents =studentsDao.selectStudentsByyuanxi(stuyuanxi);
				if("idSelect".equals(act)) {
					return "admin/idSelect";
				}
				model.addAttribute("allStudents", allStudents);
				return "admin/idSelect";
	}


	@Override
	public String dormSelectStudent(String studorm, Model model, Integer pageCur, String act) {
		// TODO Auto-generated method stub
		List<Students> allStudents =studentsDao.selectStudentsBydorm(studorm);
		if("idSelect".equals(act)) {
			return "admin/idSelect";
		}
		model.addAttribute("allStudents", allStudents);
		return "admin/idSelect";
	}


	@Override
	public String dromnumberSelectStudent(String studromnumber, Model model, Integer pageCur, String act) {
		// TODO Auto-generated method stub
		List<Students> allStudents =studentsDao.selectStudentsBydromnumber(studromnumber);
		if("idSelect".equals(act)) {
			return "admin/idSelect";
		}
		model.addAttribute("allStudents", allStudents);
		return "admin/idSelect";
	}


	@Override
	public String deleteStudent(String[] ids, Model model) {
		// TODO Auto-generated method stub
		List<String> list = new ArrayList<String>();
		for (int i = 0; i < ids.length; i++) {
			
			list.add(ids[i]);
		}
		studentsDao.deleteStudents(list);
		model.addAttribute("msg", "删除成功");
		return "admin/selectStudents";
	}

}
