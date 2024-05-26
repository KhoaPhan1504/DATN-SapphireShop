package com.java.controller;

import java.security.Principal;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.entity.Brand;
import com.java.entity.CartItem;
import com.java.entity.Category;
import com.java.entity.Customer;
import com.java.repository.BrandRepository;
import com.java.repository.CategoryRepository;
import com.java.service.ShoppingCartService;

@Controller
@RequestMapping(value = "/")
public class CommonController {
	
	@Autowired
	ShoppingCartService shoppingCartService;

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	BrandRepository brandRepository;

	@ModelAttribute(value = "customer")
	public Customer initCustomer(Principal principal) {
		Customer customer = new Customer();
		if (principal != null) {
			customer = (Customer) ((Authentication) principal).getPrincipal();
//			customer = (Customer) ((OAuth2AuthenticationToken) principal).getAuthorities();
		}
		return customer;
	}

	
	@ModelAttribute("categoryList")
	public List<Category> showCategory(Model model) {
		List<Category> categoryList = categoryRepository.findAll();
		model.addAttribute("categoryList", categoryList);

		return categoryList;
	}

	@ModelAttribute("brandList")
	public List<Brand> brandList(Model model) {
		List<Brand> brandList = brandRepository.findAll();
		model.addAttribute("brandList", brandList);

		return brandList;
	}

	// active - font-end cart->header
	@ModelAttribute("cartItems")
	public Collection<CartItem> cartItems2(Model model) {
		Collection<CartItem> cartItems = shoppingCartService.getCartItems();
		model.addAttribute("cartItems", cartItems);
		model.addAttribute("total", shoppingCartService.getAmount());
		double totalPrice = 0;
		for (CartItem cartItem : cartItems) {
			double price = cartItem.getQuantity() * cartItem.getProduct().getPrice();
			totalPrice += price - (price * cartItem.getProduct().getDiscount() / 100);
		}

		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("totalCartItems", shoppingCartService.getCount());

		return cartItems;
	}
	
}
