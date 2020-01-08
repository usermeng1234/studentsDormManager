package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.Notice;
@Repository("noticeDao")
@Mapper
public interface NoticeDao {
	public int addNotice(Notice notice);
	public List<Notice> selectNotice();
	public int deleteANotice(Integer id);
	public int deleteNotice(List<Integer> id);
}
