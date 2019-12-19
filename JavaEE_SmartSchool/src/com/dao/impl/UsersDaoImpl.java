package com.dao.impl;

import java.util.List;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.UsersDao;
import com.entity.Users;

public class UsersDaoImpl extends HibernateDaoSupport implements UsersDao {


	public Users findByUsernameAndPassword(Users user) {
		// TODO Auto-generated method stub
		String hql = "from Users where username=? and password=?";
		List<Users> UsersList = this.getHibernateTemplate().find(hql,user.getUsername(),user.getPassword());
		if(UsersList.size()>0){
			System.out.println(UsersList.get(0).getUsername()+"成功登录");
			return UsersList.get(0);
		}
		return null;
	}
	
	public Users findByUsername(Users user) {
		// TODO Auto-generated method stub
		String hql = "from Users where username=?";
		List<Users> UsersList = this.getHibernateTemplate().find(hql,user.getUsername());
		if(UsersList.size()>0){
			System.out.println(UsersList.get(0).getUsername()+"已存在");
			return UsersList.get(0);
		}
		return null;
	}
	
	@Override
	public void save(Users users) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(users);
	}

}
