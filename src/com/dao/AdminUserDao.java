package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.AdminUser;
@Repository("adminUserDao")
@Mapper
public interface AdminUserDao {
	List<AdminUser> login(AdminUser adminUser);
}
