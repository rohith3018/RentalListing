package com.rent.list.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rent.list.web.model.Users;
import com.rent.list.web.service.userService;

import jakarta.servlet.http.HttpSession;

@Controller
public class loginController {
	
	@Autowired
	private userService us;
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute("lobj") Users u, Model m, HttpSession s) {
		String uname =u.getUsername();
		String pass = u.getPassword();
		Users obj = us.Login(uname, pass);
		if(obj==null) {
			return "login";
		}
		else if(obj.getUsername().equals(uname) && obj.getPassword().equals(pass)) {
			s.setAttribute("currentUser", obj);
			return "redirect:/";
		}
		else {
			return "redirect:signup";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession s) {
		s.removeAttribute("currentUser");
		return "redirect:/";
	}
	
	
	
	
}






