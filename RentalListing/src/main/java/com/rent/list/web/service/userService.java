package com.rent.list.web.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rent.list.web.dao.userRepository;
import com.rent.list.web.model.Users;
import com.rent.list.web.serviceInterface.userServiceInterface;

@Service
public class userService implements userServiceInterface{
	@Autowired
	private userRepository ur;
	
	public List<Users> getUsers() 
	{		
		Iterable<Users> it = ur.findAll();
		Iterator<Users> myitr = it.iterator();
		
		List<Users> list = new ArrayList<Users>();
		while(myitr.hasNext())
		{
			list.add(myitr.next());
			}
		
		return list;
	}

	// Signup
	@Override
	public boolean SignUP(Users u) {
		ur.save(u);
		return true;
	}
	
	// Login
	@Override
	public Users Login(String uname, String upassword) {
		return ur.Login(uname, upassword);
	}
	
	
}
