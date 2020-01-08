package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.User;

@Repository("userDao")
@Mapper
public interface UserDao {
	public User login(User user);
	public int registerU(User user1); 
}
