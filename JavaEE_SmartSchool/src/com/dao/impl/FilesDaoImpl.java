package com.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
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
		String hql="select count(*) from Files f where f.status=1 and f.type=1";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<Files> findByPage(int begin, int pageSize) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Files.class);
		criteria.add(Restrictions.eq("status",1));
		criteria.add(Restrictions.eq("type",1));//1：教务通知文件；2：公共资料；
		List<Files> list = this.getHibernateTemplate().findByCriteria(criteria,begin,pageSize);
		return list;
	}

	@Override
	public void save(Files files) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(files);
	}

	@Override
	public Files findById(int fileId) {
		// TODO Auto-generated method stub\
		Files files = this.getHibernateTemplate().get(Files.class, fileId);
		return files;
	}

	@Override
	public void delete(Files files) {
		files.setStatus(0);
		this.getHibernateTemplate().update(files);

	}
	
	@Override
	public List<Files> findByFileName(String fileName) {
		// TODO Auto-generated method stub
		List<Files> list = this.getHibernateTemplate().find("from Files f where f.fileName like'%"+fileName+"%' and f.status=1 and f.type=1 ");
		return list;
	}
	
	//公共资料：
	@Override
	public int findSourceCount() {
		// TODO Auto-generated method stub
		String hql="select count(*) from Files f where f.status=1 and f.type=2";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<Files> findSourceByPage(int begin, int pageSize) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Files.class);
		criteria.add(Restrictions.eq("status",1));//文件的状态 0代表删除 ，1代表正常
		criteria.add(Restrictions.eq("type",2));//1：教务通知文件；2：公共资料；
		List<Files> list = this.getHibernateTemplate().findByCriteria(criteria,begin,pageSize);
		return list;
	}

	@Override
	public List<Files> findBySourceFileName(String fileName) {
		// TODO Auto-generated method stub
		List<Files> list = this.getHibernateTemplate().find("from Files f where f.fileName like'%"+fileName+"%' and f.status=1 and f.type=2 ");
		return list;
	}



}
