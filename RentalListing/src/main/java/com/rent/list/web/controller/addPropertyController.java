package com.rent.list.web.controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rent.list.web.model.add_Property;
import com.rent.list.web.service.addPropertyService;

@Controller
public class addPropertyController {
	@Autowired
	private addPropertyService as;
	
	@PostMapping("/addProperty")
	public String addProp(@RequestParam("prop_type") String Prop_type,@RequestParam("name") String name,@RequestParam("email") String email, 
			@RequestParam("phone") String phone, @RequestParam("title") String title, @RequestParam("description") String description, 
			@RequestParam("choice") String choice,@RequestParam("address") String address,
			@RequestParam("price") String price,@RequestParam("image") MultipartFile imgfile,@RequestParam("owner") String owner,@RequestParam("status") String status) {
		add_Property ap = new add_Property();
		ap.setProp_type(Prop_type);
		ap.setName(name);
		ap.setEmail(email);
		ap.setPhone(phone);
		ap.setTitle(title);
		ap.setDescription(description);
		ap.setChoice(choice);
		ap.setAddress(address);
		ap.setPrice(price);
		ap.setOwner(owner);
		ap.setStatus(status);
		as.Save(ap, imgfile);
		return "index";
	}
	
	@GetMapping("/propertyview")
	public String getAllProperty(Model model) {
		List<add_Property> prop = as.getAllProperties();
		
		if(prop!=null) {
			model.addAttribute("viewproperty",prop);
		}
		else {
			model.addAttribute("viewproperty", Collections.emptyList());
		}
			return "view_prop";
			
	}
	
	@GetMapping("/showDetails")
	public String getPropertyDetails(@RequestParam("id") String propertyId, Model model) {
		add_Property property =as.getPropertyById(propertyId);
		model.addAttribute("showDetails",property);
		return "showDetails";
	}
	
	@GetMapping("/editProperty")
	public String getPropertyEdit(@RequestParam("id") String propertyId, Model model) {

		add_Property property = as.getPropertyById(propertyId);
		model.addAttribute("editProperty", property);

		return "editProperty";
	}

	@GetMapping("deleteProperty/{id}")
	public String deleteprop(@PathVariable("id") int id) {
		as.deleteById(id);
		return "redirect:/propertyview";
	}

	@PostMapping("/edit")
	public String editProperty(@ModelAttribute add_Property updatedProperty) {
		as.updateProperty(updatedProperty.getId(), updatedProperty);
		return "redirect:/propertyview";
	}
}
