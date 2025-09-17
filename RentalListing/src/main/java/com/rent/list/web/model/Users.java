package com.rent.list.web.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="user")
public class Users {
	@Id
	private int id;
	private String fullname;
	private String username;
	private String password;
	private String phoneno;
	private String email;
	
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Users(int id, String fullname, String username, String password, String phoneno, String email) {
		super();
		
		this.id = id;
		this.fullname = fullname;
		this.username = username;
		this.password = password;
		this.phoneno = phoneno;
		this.email = email;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", fullname=" + fullname + ", username=" + username + ", password=" + password
				+ ", phoneno=" + phoneno + ", email=" + email + "]";
	}
	
	

}
