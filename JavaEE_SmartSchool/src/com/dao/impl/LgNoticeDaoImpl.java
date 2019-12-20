package com.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.LgNoticeDao;
import com.entity.LgNotice;


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
		System.out.println(list);
		return list;
	}

}
