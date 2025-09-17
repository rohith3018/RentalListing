package com.rent.list.web.serviceInterface;

import java.util.List;

import com.rent.list.web.model.Users;

public interface userServiceInterface {
	public List<Users> getUsers();
	
	//sign up
	public boolean SignUP(Users u);
	
	//Login
	public Users Login(String uname, String upassword);
}
