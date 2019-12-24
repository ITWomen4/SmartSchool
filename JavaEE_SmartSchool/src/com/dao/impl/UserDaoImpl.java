package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.UserDao;
import com.entity.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

	@Override
	public User checkUser(User user) {
		System.out.println("UserDaoImpl");
		
		//不是针对数据库 而是针对表
		String hql = "from User where userId=? and password=?";
		
		List<User> UserList = this.getHibernateTemplate().find(hql,user.getUserId(),user.getPassword());
		if(UserList.size()>0){
			return UserList.get(0);
		}
		
		return null;
	}

	
}
