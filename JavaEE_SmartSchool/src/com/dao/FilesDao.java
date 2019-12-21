package com.dao;

import java.util.List;

import com.entity.Files;

public interface FilesDao {

	int findCount();

	List<Files> findByPage(int begin, int pageSize);

	void save(Files files);

	Files findById(int fileId);

	void delete(Files files);


}
