package com.dao;

import java.util.List;

import com.entity.LgNotice;
import com.entity.PageBean;

public interface LgNoticeDao {

	int findCount();

	List<LgNotice> findByPage(int begin, int pageSize);

	LgNotice findById(int noticeId);

	void save(LgNotice lgNotice);

	void delete(LgNotice lgNotice);

	List<LgNotice> findByNoticeName(String noticeName);

	void update(LgNotice lgNotice);

}
