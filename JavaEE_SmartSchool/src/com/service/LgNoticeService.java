package com.service;

import com.entity.LgNotice;
import com.entity.PageBean;

public interface LgNoticeService {

	PageBean<LgNotice> findByPage(Integer currPage);

}
