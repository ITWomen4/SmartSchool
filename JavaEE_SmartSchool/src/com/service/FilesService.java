package com.service;

import java.util.List;

import com.entity.Files;
import com.entity.PageBean;

public interface FilesService {

	//教务文件：
	PageBean<Files> findByPage(Integer currPage);

	void uploadFile(Files files);

	Files findById(int fileId);

	void delete(Files files);
	
	List<Files> findByFileName(String fileName);

	
	//公共资料：
	PageBean<Files> findSourceByPage(Integer currPage);

	List<Files> findBySourceFileName(String fileName);




}
