package com.rent.list.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rent.list.web.model.Contact;
import com.rent.list.web.service.ContactService;

@Controller
public class ContactController {
	@Autowired
	private ContactService cs;

	@PostMapping("/contact")
	public String contact(@ModelAttribute("cobj") Contact c) {
		if (cs.addToCon(c)) {
			return "redirect:/";
		}

		return "contact";

	}
}