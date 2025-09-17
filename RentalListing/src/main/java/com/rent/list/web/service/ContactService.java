package com.rent.list.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rent.list.web.dao.ContactRepository;
import com.rent.list.web.model.Contact;
import com.rent.list.web.serviceInterface.ContactServiceInterface;

@Service
public class ContactService implements ContactServiceInterface{

	@Autowired
	private ContactRepository cr ;
	@Override
	public boolean addToCon(Contact c) {
		cr.save(c);
		return true;
	}
	
}
