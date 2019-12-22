package com.dao;

import java.util.List;

import com.entity.Files;
import com.entity.LgNotice;

public interface FilesDao {
	//教务文件：
	int findCount();

	List<Files> findByPage(int begin, int pageSize);

	void save(Files files);

	Files findById(int fileId);

	void delete(Files files);
	
	List<Files> findByFileName(String fileName);


	//公共资料：
	int findSourceCount();

	List<Files> findSourceByPage(int begin, int pageSize);

	List<Files> findBySourceFileName(String fileName);



}
