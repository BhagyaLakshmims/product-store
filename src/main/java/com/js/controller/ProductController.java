package com.js.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.js.dao.ProductCRUD;
import com.js.dto.Product;

@Controller
public class ProductController {

	
	@Autowired
	ProductCRUD productCRUD;
	
	
	@RequestMapping("/load")
	public ModelAndView loadProduct() {
		
		ModelAndView mv = new ModelAndView("loadProduct.jsp");
		mv.addObject("product", new Product());
		return mv;
		
	}
	
	@RequestMapping("/save")
	public ModelAndView saveProduct(@ModelAttribute Product p) {
		
		ModelAndView mv = new ModelAndView("welcome.jsp");
		boolean result = productCRUD.insertProduct(p);
		
		if(result) {
			mv.addObject("msg", "Inserted Successfully");
		}
		else {
			mv.addObject("msg", "Failed to Insert");
		}
		return mv;
		
	}
	
	
	@RequestMapping("/display")
	public ModelAndView getAllProducts() {
		List<Product> products = productCRUD.getAllProducts();
		
		if(products.size()>0) {
		ModelAndView mv = new ModelAndView("display.jsp");
		mv.addObject("data", products);
		return mv;
		}
		
		else {
			ModelAndView mv = new ModelAndView("welcome.jsp");
			mv.addObject("msg", "No Products Available");
			return mv;
		}
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteProduct(@RequestParam int id) {
		boolean result = productCRUD.deleteProductbyId(id);
		if(result) {
			ModelAndView mv = new ModelAndView("display");
			return mv;
		}
		else {
	     ModelAndView  mv = new ModelAndView("welcome.jsp");
	     mv.addObject("msg", "No Product Available to Delete");
	     return mv;
		}
		
	}
	
	@RequestMapping("/edit")
	public ModelAndView updateProduct1(@RequestParam int id) {
		Product p = productCRUD.getProductbyId(id);
		if(p!=null) {
			ModelAndView mv = new ModelAndView("update.jsp");
			mv.addObject("pro", p);
			return mv;
		}
		else {
	     ModelAndView  mv = new ModelAndView("welcome.jsp");
	     mv.addObject("msg", "No Product Available to Update");
	     return mv;
		}
		
	}
	
	@RequestMapping("/update")
	public ModelAndView updateProduct2(@ModelAttribute Product p) {
		boolean res = productCRUD.UpdateProductbyId(p.getId(), p);
		if(res) {
			ModelAndView mv = new ModelAndView("display");
			return mv;
			
		}
		
		else {
			ModelAndView mv = new ModelAndView("welcome.jsp");
			mv.addObject("msg", "No Product available to Update");
			return mv;
					
		}
	}
}
