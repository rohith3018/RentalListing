package com.rent.list.web.serviceInterface;

import java.util.List;

import com.rent.list.web.model.add_Property;

public interface addPropertyServiceInterface {
	public List<add_Property> getAllProperties();
	public add_Property getPropertyById(String propid);
	public void deleteById(int id);
	public void updateProperty(int id,add_Property upProp);
}
