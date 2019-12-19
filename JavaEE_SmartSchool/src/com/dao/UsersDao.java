package com.dao;


import com.entity.Users;

public interface UsersDao {

	Users findByUsernameAndPassword(Users users);
	Users findByUsername(Users users);
	void save(Users users);
	


}
