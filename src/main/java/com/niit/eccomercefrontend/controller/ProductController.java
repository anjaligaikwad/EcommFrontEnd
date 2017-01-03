package com.niit.eccomercefrontend.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ecommercebackend.dao.ProductDAO;
import com.niit.ecommercebackend.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/product")
	public ModelAndView indexPage()
	{
		List<Product> listProducts=productDAO.listProducts();
		ModelAndView model=new ModelAndView("Product");
		model.addObject("product",new Product());
		model.addObject("listProducts", listProducts);
		
		return model;
	}
	
	@RequestMapping(value= "/product/add", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product,BindingResult result,HttpServletRequest request)
	{
		System.out.println("h0");

		
		String filename = null;
		byte[] bytes;
		
		if (!product.getImage().isEmpty()) {

			try {
				
				bytes = product.getImage().getBytes();
				productDAO.addProduct(product);
				System.out.println("Data Inserted");
				String path = request.getSession().getServletContext().getRealPath("/resources/images/" + product.getProductId() + ".jpg");
				System.out.println("Path = " + path);
				System.out.println("File name = " + product.getImage().getOriginalFilename());
				File f = new File(path);
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		
		if(result.hasErrors())
		{
			return "index";
		}
		else{
			if (product.getProductId() == 0) {
				productDAO.addProduct(product);
			} else {
				productDAO.updateProduct(product);
			}

			System.out.println("h3");

			return "redirect:/listproducts";
		}
	}
	
	
	@RequestMapping("/remove/{id}")
	public String removeProduct(@PathVariable("id") int id)
	{
		productDAO.removeProduct(id);
		return "redirect:/listproducts";
	}
	
	@RequestMapping("/edit/{id}")
	public String editProduct(@PathVariable("id") int id, Model model)
	{
		model.addAttribute("product", productDAO.getProductById(id));
        model.addAttribute("listProducts", productDAO.listProducts());
        return "editProduct";
	}
	
	@RequestMapping(value ="/listproducts")
	public String ViewProduct(Model model){
		System.out.println("h1");
		model.addAttribute("productList",this.productDAO.listProducts());
		System.out.println("h2");

		return "Productlist";
	}
}
