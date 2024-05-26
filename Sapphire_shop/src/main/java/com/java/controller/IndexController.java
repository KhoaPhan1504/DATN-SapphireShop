package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.java.entity.OrderDetail;
import com.java.entity.Product;
import com.java.repository.OrderDetailRepository;
import com.java.repository.ProductRepository;

@Controller
public class IndexController extends CommonController {

	@Autowired
	ProductRepository productRepository;

	@Autowired
	OrderDetailRepository orderDetailRepository;

	@GetMapping(value = "/")
	public String index(Model model) {
		listproduct10(model);

		return "site/index";
	}

	// list product ở trang chủ limit 8 sản phẩm mới nhất
	@ModelAttribute("listProduct8")
	public List<Product> listproduct10(Model model) {
		List<Product> productList = productRepository.listProduct8();
		model.addAttribute("productList", productList);

		return productList;
	}
	
	@ModelAttribute("topOrder")
    public String reporttop(Model model) {
        OrderDetail orderDetail = new OrderDetail();
        model.addAttribute("orderDetail", orderDetail);
        List<Object[]> topOrderList =  orderDetailRepository.topOrder();
        model.addAttribute("topOrderList", topOrderList);
        return "topOrder";
    }
	
}
