package com.rent.list.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import com.rent.list.web.model.Users;
@EnableJpaRepositories
@Repository
public interface userRepository extends JpaRepository<Users, Integer>{
	@Query("select e from user e where username = ?1 and password = ?2")
	public Users Login(String uname, String upassword);
	
}
