package com.java.controller.admin;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.java.controller.CommonController;
import com.java.entity.Customer;
import com.java.repository.CustomerRepository;

@Controller
public class CustomerController extends CommonController{

	@Autowired
	CustomerRepository customerRepository;

	@GetMapping(value = "/admin/customers")
	public String customer(Model model, Principal principal) {
		
		Customer customer = customerRepository.findByEmail(principal.getName()).get();
		model.addAttribute("customer", customer);
		
		List<Customer> customers = customerRepository.findAll();
		model.addAttribute("customers", customers);
		
		return "/admin/customers";
	}
}
