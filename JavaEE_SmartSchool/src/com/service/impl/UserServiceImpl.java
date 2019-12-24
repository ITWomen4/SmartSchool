package com.service.impl;

import com.dao.UserDao;
import com.entity.User;
import com.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao;
	   
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User checkUser(User user) {
		System.out.println("UserServiceImpl");
		User u = userDao.checkUser(user);
		return u;
	}

}
