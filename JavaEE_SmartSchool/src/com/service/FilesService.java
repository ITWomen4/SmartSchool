package com.service;

import com.entity.Files;
import com.entity.PageBean;

public interface FilesService {

	PageBean<Files> findByPage(Integer currPage);

	void uploadFile(Files files);

	Files findById(int fileId);

	void delete(Files files);



}
