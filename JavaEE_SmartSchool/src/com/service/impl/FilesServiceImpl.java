package com.service.impl;

import java.util.List;

import com.dao.FilesDao;
import com.entity.Files;
import com.entity.LgNotice;
import com.entity.PageBean;
import com.service.FilesService;

public class FilesServiceImpl implements FilesService {
	//注入dao
	private FilesDao filesDao;

	public void setFilesDao(FilesDao filesDao) {
		this.filesDao = filesDao;
	}

	@Override
	public PageBean<Files> findByPage(Integer currPage) {
		// TODO Auto-generated method stub
		PageBean<Files> pageBean = new PageBean<Files>();
        // 封装当前页数
        pageBean.setCurrPage(currPage);
        // 封装每页记录数
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        // 封装总记录数
        int totalCount = filesDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 封装页数
        int totalPage;
        if(totalCount%pageSize==0){
        	totalPage = totalCount/pageSize;
        }else{
        	totalPage = totalCount/pageSize + 1; 
        }
        pageBean.setTotalPage(totalPage);
        // 封装当前页记录
        int begin= (currPage - 1)*pageSize;
        List<Files> list = filesDao.findByPage(begin, pageSize);
        pageBean.setList(list);
		return pageBean;
	}

	@Override
	public void uploadFile(Files files) {
		// TODO Auto-generated method stub
		filesDao.save(files);
	}

}
