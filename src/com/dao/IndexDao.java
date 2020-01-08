package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
@Repository("indexDao")
@Mapper
public interface IndexDao {
	public List<Map<String, Object>> selectNotice();
}
