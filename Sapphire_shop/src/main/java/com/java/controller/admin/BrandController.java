package com.java.controller.admin;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.java.controller.CommonController;
import com.java.entity.Brand;
import com.java.repository.BrandRepository;

@Controller
public class BrandController extends CommonController{

	@Autowired
	BrandRepository brandRepository;

	// show list brands - table list
	@ModelAttribute("brands")
	public List<Brand> showBrand(Model model) {
		List<Brand> brands = brandRepository.findAll();
		model.addAttribute("brands", brands);

		return brands;
	}

	@GetMapping(value = "/admin/brands")
	public String brands(Model model, Principal principal) {

		Brand brand = new Brand();
		model.addAttribute("brand", brand);

		return "admin/brands";
	}

	// add brand
	@PostMapping(value = "/addBrand")
	public String addBrand(@Validated @ModelAttribute("brand") Brand brand, ModelMap model,
			BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("error", "failure");

			return "admin/brands";
		}

		brandRepository.save(brand);
		model.addAttribute("message", "successful!");

		return "redirect:/admin/brands";
	}
	
	// get Edit brand
	@GetMapping(value = "/editBrand/{id}")
	public String editCategory(@PathVariable("id") Integer id, ModelMap model) {
		Brand brand = brandRepository.findById(id).orElse(null);
		
		model.addAttribute("brand", brand);

		return "admin/editBrand";
	}
	
	// delete brand
	@GetMapping("/deleteBrand/{id}")
	public String delBrand(@PathVariable("id") Integer id, Model model) {
		brandRepository.deleteById(id);
		model.addAttribute("message", "Delete successful!");
		
		return "redirect:/admin/brands";
	}
}
