package com.service.impl;


import org.springframework.transaction.annotation.Transactional;

import com.dao.UsersDao;
import com.service.UsersService;
import com.entity.*;
@Transactional
public class UsersServiceImpl implements UsersService {
	
    private UsersDao usersDao;
   


	
	public UsersDao getUsersDao() {
		return usersDao;
	}


	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}


	public Users login(Users users) {
		// TODO Auto-generated method stub
		Users user = usersDao.findByUsernameAndPassword(users);
		return user;
	}
	public Users findByUsername(Users users) {
		Users user = usersDao.findByUsername(users);
		return user;
	}
	
	public void save(Users users) {
		// TODO Auto-generated method stub
		usersDao.save(users);
		
	}

}
