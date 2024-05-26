package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.entity.Product;
import com.java.repository.ProductRepository;

@Controller
public class ProductDetailController extends CommonController {

	@Autowired
	ProductRepository productRepository;

	// get productDetail
	@GetMapping(value = "/productDetail")
	public String productDetail(@RequestParam("id") Integer productId, Model model) {

		Product product = productRepository.findById(productId).orElse(null);
		model.addAttribute("product", product);
		// active -font-end
		productByCategory(model, product.getCategory().getCategoryId());

		return "site/productDetail";
	}

	// Gợi ý sản phẩm cùng loại
	public void productByCategory(Model model, Integer categoryId) {
		List<Product> products = productRepository.productsByCategory(categoryId);
		model.addAttribute("productByCategory", products);

	}

}
