package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.Students;

@Repository("studentsDao")
@Mapper
public interface StudentsDao {
	public List<Students> selectStudents();
		// TODO Auto-generated method stub
	public int addStudents(Students students);
	public List<Students> selectStudentsById(int id);
	public Students selectStudentsByIds(int id);
	public List<Students> selectStudentsByyuanxi(String stuyuanxi);
	public List<Students> selectStudentsBydorm(String studorm);
	public List<Students> selectStudentsBydromnumber(String studromnumber);
	public int deleteStudents(List<String> meng);
	public int deleteAStudents(String id);
	public int updateStudentsById(Students students);
	public int selectAStudent(String id);
}
