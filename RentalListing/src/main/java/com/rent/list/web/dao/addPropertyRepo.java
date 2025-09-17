package com.rent.list.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import com.rent.list.web.model.add_Property;
@EnableJpaRepositories
@Repository
public interface addPropertyRepo extends JpaRepository<add_Property, Integer> {
	@Query(value="select * from add_property where id =?1",nativeQuery=true)
	add_Property findById(String propertyId);
	
}
