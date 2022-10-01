package com.example.demo.controllers;

import java.util.ArrayList;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.example.demo.entity.Order;
import com.example.demo.entity.Product;

@Controller
public class ProductAndOrderServiceController {
	@Autowired
	private RestTemplate template;
	private Product productsArray[];

	public ProductAndOrderServiceController() {
		super();
	}

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String getWelcomePage() {
		return "index";
	}

	// <------------------------Product Service Controller------------------------------------->

	@RequestMapping(path = "/product-home-page", method = RequestMethod.GET)
	public String getProductHomePage() {
		return "ProductHome";
	}

	@RequestMapping(path = "/order-home-page", method = RequestMethod.GET)
	public String getOrderHomePage() {
		return "OrderHome";
	}

	@GetMapping(path = "/list/products")
	public String getAllProducts(Model model) {
		productsArray = this.template.getForObject("http://localhost:2020/api/products", Product[].class);
		model.addAttribute("list", productsArray);
		for (Product product : productsArray) {
			System.out.println(product);
		}
		return "ListProducts";
	}

	@GetMapping(path = "/list/products-available")
	public String getProductsInventoryAvailable(Model model) {
		productsArray = this.template.getForObject("http://localhost:2020/api/products/products-available", Product[].class);
		model.addAttribute("list", productsArray);
		for (Product product : productsArray) {
			System.out.println(product);
		}
		return "ListProducts";
	}

	@GetMapping(path = "/list/products-not-available")
	public String getProductsInventoryNotAvailable(Model model) {
		productsArray = this.template.getForObject("http://localhost:2020/api/products/products-not-available", Product[].class);
		model.addAttribute("list", productsArray);
		for (Product product : productsArray) {
			System.out.println(product);
		}
		return "ListProducts";
	}

	@RequestMapping(path = "/save", method = RequestMethod.GET)
	public String initAddPage(Model model) {
		model.addAttribute("product", new Product());
		return "AddProductDetails";
	}

	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product, Model model) {
		HttpEntity<Product> request = new HttpEntity<>(product);
		Product productObject = this.template.postForObject("http://localhost:2020/api/products/add", request,
				Product.class);
		model.addAttribute("message", "One Product is Added");
		return "AddProductDetails";
	}

	@RequestMapping(path = "/update", method = RequestMethod.GET)
	public String initUpdatePage(Model model) {
		model.addAttribute("product", new Product());
		return "UpdateProduct";
	}

	@RequestMapping(path = "/update", method = RequestMethod.PUT)
	public String updateProduct(@ModelAttribute("product") Product product, Model model) {
		HttpEntity<Product> request = new HttpEntity<>(product);
		Product productObject = this.template.postForObject("http://localhost:2020/api/products/update", request,
				Product.class);
		model.addAttribute("message", "One Product details are updated");
		return "UpdateProduct";
	}

	@RequestMapping(path = "/list/merchant", method = RequestMethod.GET)
	public String initSearchMerchant() {
		return "SearchByMerchant";
	}

	@RequestMapping(path = "/list/merchant", method = RequestMethod.POST)
	public String searchByProductMerchant(@RequestParam("productMerchant") String productMerchant, Model model) {
		model.addAttribute("list", this.template.postForObject("http://localhost:2020/api/products/byMerchant",
				productMerchant, Product[].class));
		return "ListProducts";
	}

	// ------------------------Order Service Controller-----------------------------

	
	@RequestMapping(path = "/saveorder", method = RequestMethod.GET)
	public String initAddOrderPage(Model model) {
		model.addAttribute("order", new Order());
		return "AddOrderDetails";
	}

	@RequestMapping(path = "/saveorder", method = RequestMethod.POST)
	public String addOrder(@ModelAttribute("order") Order order, Model model) {
		HttpEntity<Order> request = new HttpEntity<>(order);
		Order orderObject = this.template.postForObject("http://localhost:8080/api/orders/add", request,
				Order.class);
		model.addAttribute("message", "One Order is Placed");
		return "AddOrderDetails";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping(path = "/list/orders")
	public String getAllOrders(Model model) {
		model.addAttribute("list", this.template.getForObject("http://localhost:8080/api/orders", Order[].class));
		return "ListOrders";
	}

	@RequestMapping(path = "/list/user", method = RequestMethod.GET)
	public String initSearchByUsers() {
		return "SearchByUser";
	}

	@RequestMapping(path = "/list/user", method = RequestMethod.POST)
	public String searchByOrderUser(@RequestParam("user") String user, Model model) {
		Order[] orderList;
		String message = new StringBuilder("Order with Given user name: ").append(user).append(" Not Available").toString();
		orderList = this.template.postForObject("http://localhost:8080/api/orders/byUser", user, Order[].class);
		if (orderList.length != 0) {
			model.addAttribute("list", orderList);
			return "ListOrders";
		} else {
			model.addAttribute("message", message);
			return "ErrorMessages";
		}

	}

	@RequestMapping(path = "/orderId", method = RequestMethod.GET)
	public String initSearchById() {
		return "SearchById";
	}

	@RequestMapping(path = "/orderId", method = RequestMethod.POST)
	public String searchByOrderId(@RequestParam("orderId") int orderId, Model model) {
		List<Order> orderList = new ArrayList<>();
		String message = new StringBuilder("Order with Given OrderId: ").append(orderId).append(" Not Available")
				.toString();
		System.out.println("Hello ");
		orderList.add(this.template.postForObject("http://localhost:8080/api/orders/byOrderId", orderId, Order.class));
		orderList.forEach(System.out::println);
		if (orderList.get(0).getOrderId()!=0) {
			model.addAttribute("list", orderList);
			return "ListOrders";
		} else {
			model.addAttribute("message", message);
			return "ErrorMessages";
		}

	}

}
