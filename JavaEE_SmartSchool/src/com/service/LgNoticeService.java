package com.service;

import java.util.List;

import com.entity.LgNotice;
import com.entity.PageBean;

public interface LgNoticeService {

	PageBean<LgNotice> findByPage(Integer currPage);

	LgNotice findById(int noticeId);

	void save(LgNotice lgNotice);

	void delete(LgNotice lgNotice);

	List<LgNotice> findByNoticeName(String noticeName);

	void update(LgNotice lgNotice);

}
