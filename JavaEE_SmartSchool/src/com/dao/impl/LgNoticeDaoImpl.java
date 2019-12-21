package com.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.LgNoticeDao;
import com.entity.LgNotice;
import com.entity.PageBean;


public class LgNoticeDaoImpl extends HibernateDaoSupport implements LgNoticeDao{

	@Override
	/**
	 * Dao层查询总后勤通知数的方法
	 */
	public int findCount() {
		// TODO Auto-generated method stub
		String hql="select count(*) from LgNotice";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	/**
	 * Dao中查询指定页的方法
	 */
	public List<LgNotice> findByPage(int begin, int pageSize) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(LgNotice.class);
		List<LgNotice> list = this.getHibernateTemplate().findByCriteria(criteria,begin,pageSize);
		return list;
	}

	@Override
	/**
	 * Dao中查询指定id的后勤通知的方法
	 */
	public LgNotice findById(int noticeId) {
		// TODO Auto-generated method stub
		LgNotice lg = this.getHibernateTemplate().get(LgNotice.class, noticeId);
		return lg;
	}

	@Override
	/**
	 * Dao 层添加后勤通知的保存方法
	 */
	public void save(LgNotice lgNotice) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(lgNotice);
	}

	@Override
	public void delete(LgNotice lgNotice) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(lgNotice);
	}

	@Override
	public List<LgNotice> findByNoticeName(String noticeName) {
		// TODO Auto-generated method stub
		List<LgNotice> list = this.getHibernateTemplate().find("from LgNotice b where b.noticeName like'%"+noticeName+"%'");
		return list;
	}

	@Override
	public void update(LgNotice lgNotice) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(lgNotice);
	}

}
