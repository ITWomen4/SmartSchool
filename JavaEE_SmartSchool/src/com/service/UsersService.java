package com.service;

import com.entity.Users;


public interface UsersService {

	Users login(Users users);
	Users findByUsername(Users users);
	public void save(Users users);
}
