package com.java.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.entity.Customer;
import com.java.entity.Role;
import com.java.repository.CustomerRepository;

@Controller
public class RegisterController extends CommonController {

	@Autowired
	CustomerRepository customerRepository;

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	@GetMapping(value = "/registered")
	public String register() {

		return "site/register";
	}

	// register
	@RequestMapping(value = "/registered")
	public String addCourse(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, ModelMap model,
			Principal principal) {

		// check error
		if (result.hasErrors()) {

			return "site/register";
		}

		// check email by database
		if (!checkEmail(customer.getEmail())) {
			model.addAttribute("error", "Đăng ký thất bại, Email này đã được sử dụng!");

			return "site/register";
		}

		// check id login by database
		if (!checkIdlogin(customer.getCustomerId())) {
			model.addAttribute("error", "Đăng kí thất bại, ID Login này đã được sử dụng!");

			return "site/register";
		}

		customer.setEnabled(true);
		customer.setRoleId("0");
		customer.setPassword(bCryptPasswordEncoder.encode(customer.getPassword()));
		Date date = new Date();
		customer.setCreateDate(date);

		Customer c = customerRepository.save(customer);

		Role role = new Role();
		role.setRoleName("ROLE_USER");
		role.setCustomer(customer);
		if (null != c) {
			model.addAttribute("message", "Đăng ký thành công, vui lòng đăng nhập!");
			model.addAttribute("customer", customer);
		} else {
			model.addAttribute("error", "failure");
			model.addAttribute("customer", customer);
		}

		return "site/register";
	}

	// check email
	public boolean checkEmail(String email) {
		List<Customer> list = customerRepository.findAll();
		for (Customer c : list) {
			if (c.getEmail().equalsIgnoreCase(email)) {
				return false;
			}
		}
		return true;
	}

	// check ID Login
	public boolean checkIdlogin(String customerId) {
		List<Customer> listC = customerRepository.findAll();
		for (Customer c : listC) {
			if (c.getCustomerId().equalsIgnoreCase(customerId)) {
				return false;
			}
		}
		return true;
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
	
}
