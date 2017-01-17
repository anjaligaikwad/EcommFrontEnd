package com.niit.eccomercefrontend.controller;

	import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

	@Controller
	public class HomeContoller {

		@RequestMapping(value = { "/index", "/", "/Home" })
		public ModelAndView home1() {
			ModelAndView model = new ModelAndView("index");
			return  model;
		}

		@RequestMapping("/AboutUs")
		public String aboutus() {
			return "aboutus";
		}

		@RequestMapping("/Products")
		public String products() {
			return "products";
		}

		@RequestMapping("contact")
		public String Contactus() {
			return "contact";
		}

		@RequestMapping("Login")
		public ModelAndView login() {
			ModelAndView model = new ModelAndView("login");
			return model;
		}
		
		@RequestMapping(value = "/Logout", method = RequestMethod.GET)
		public String logoutPage(HttpServletRequest request, HttpServletResponse response,
				@RequestParam(value = "logout", required = false) String logout, Model model) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (auth != null) {
				new SecurityContextLogoutHandler().logout(request, response, auth);
			}
			model.addAttribute("logout", "Have a great time! Thank you for visiting us.");
			return "login";// You can redirect wherever you want,
							// but generally it's a good practice to
							// show login screen again.
		}

		//@RequestMapping("/supplier")
		public String supplier() {
			return "supplier";
		}

		//@RequestMapping("/category")
		public String category() {
			return "Category";
		}

	
		
		
	}

