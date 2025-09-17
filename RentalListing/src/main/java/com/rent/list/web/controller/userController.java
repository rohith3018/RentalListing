package com.rent.list.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rent.list.web.model.Users;
import com.rent.list.web.service.userService;

@Controller
public class userController {
	@Autowired
	private userService us;
	
	@GetMapping("/")
	public String homePage() {
		return "index";
	}
//	@GetMapping("/users")
//	public List<Users> getus() {
//		return us.getUsers();
//	}
	
	@PostMapping ("/signup")
	public String SignUp(@ModelAttribute("uobj") Users u) {
		if(us.SignUP(u)) {
			return "redirect:/";
		}
		return "signup";
	}
	
	
	
}
