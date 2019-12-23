package com.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.dao.LgNoticeDao;
import com.entity.LgNotice;
import com.entity.PageBean;
import com.service.LgNoticeService;
@Transactional
public class LgNoticeServiceImpl implements LgNoticeService{
	//注入dao
	private LgNoticeDao lgNoticeDao;

	public void setLgNoticeDao(LgNoticeDao lgNoticeDao) {
		this.lgNoticeDao = lgNoticeDao;
	}

	@Override
	/**
	 * 业务层查询指定页面方法
	 */
	public PageBean<LgNotice> findByPage(Integer currPage) {
		// TODO Auto-generated method stub
		PageBean<LgNotice> pageBean = new PageBean<LgNotice>();
        // 封装当前页数
        pageBean.setCurrPage(currPage);
        // 封装每页记录数
        int pageSize = 16;
        pageBean.setPageSize(pageSize);
        // 封装总记录数
        int totalCount = lgNoticeDao.findCount();
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
        List<LgNotice> list = lgNoticeDao.findByPage(begin, pageSize);
        pageBean.setList(list);
		return pageBean;
	}

	@Override
	public LgNotice findById(int noticeId) {
		// TODO Auto-generated method stub
		return lgNoticeDao.findById(noticeId);
	}

	@Override
	public void save(LgNotice lgNotice) {
		// TODO Auto-generated method stub
		lgNoticeDao.save(lgNotice);
	}

	@Override
	/**
	 * 业务层员工删除
	 */
	public void delete(LgNotice lgNotice) {
		// TODO Auto-generated method stub
		lgNoticeDao.delete(lgNotice);
	}

	@Override
	public List<LgNotice> findByNoticeName(String noticeName) {
	
		return lgNoticeDao.findByNoticeName(noticeName);

		 
	}

	@Override
	public void update(LgNotice lgNotice) {
		// TODO Auto-generated method stub
		lgNoticeDao.update(lgNotice);		
	}

}
