package com.rent.list.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import com.rent.list.web.model.Contact;

@EnableJpaRepositories
@Repository
public interface ContactRepository extends JpaRepository<Contact, Integer>{
	
}
