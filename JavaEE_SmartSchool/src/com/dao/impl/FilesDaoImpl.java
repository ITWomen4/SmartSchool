package com.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.FilesDao;
import com.entity.Files;
import com.entity.LgNotice;

public class FilesDaoImpl extends HibernateDaoSupport implements FilesDao {

	@Override
	/**
	 * Dao层查询总教务通知文件数的方法
	 */
	public int findCount() {
		// TODO Auto-generated method stub
		String hql="select count(*) from Files f where f.status=?";
		List<Long> list = this.getHibernateTemplate().find(hql,1);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<Files> findByPage(int begin, int pageSize) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Files.class);
		List<Files> list = this.getHibernateTemplate().findByCriteria(criteria,begin,pageSize);
		System.out.println("DAOIMPL__________"+list);
		return list;
	}

	@Override
	public void save(Files files) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(files);
	}

}
