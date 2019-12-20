package com.dao;

import java.util.List;

import com.entity.LgNotice;

public interface LgNoticeDao {

	int findCount();

	List<LgNotice> findByPage(int begin, int pageSize);

}
