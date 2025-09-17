package com.rent.list.web.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="contact")
public class Contact {
	@Id
	private int id;
	private String name;
	private String email;
	private String message;
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(int id, String name, String email, String message) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.message = message;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "Contact [id=" + id + ", name=" + name + ", email=" + email + ", message=" + message + "]";
	}
	
	
}
