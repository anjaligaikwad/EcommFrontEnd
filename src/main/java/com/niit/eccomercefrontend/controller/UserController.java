package com.niit.eccomercefrontend.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ecommercebackend.dao.UserDAO;
import com.niit.ecommercebackend.model.BillingAddress;
import com.niit.ecommercebackend.model.Cart;
import com.niit.ecommercebackend.model.ShippingAddress;
import com.niit.ecommercebackend.model.UserCustomer;
	@Controller

	public class UserController {
	@Autowired
	UserDAO udao;
		
		@RequestMapping("/register")
		public ModelAndView register() {
			BillingAddress billingAddress = new BillingAddress();
			ShippingAddress shippingAddress = new ShippingAddress();
			Cart cart = new Cart();
			UserCustomer u = new UserCustomer();
			u.setBillingAddress(billingAddress);
			u.setShippingAddress(shippingAddress);
			u.setCart(cart);
			ModelAndView model = new ModelAndView("register");
			model.addObject("Userdata",u);
			return model;	
			}
		
		@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
		public String adduser(@Valid @ModelAttribute("Userdata")UserCustomer reg,BindingResult result)
		{
			udao.save(reg);
			return "index";
			
		}

}
