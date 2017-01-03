
package com.niit.eccomercefrontend.controller;

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

import com.niit.ecommercebackend.dao.CategoryDAO;
import com.niit.ecommercebackend.model.Category;

@Controller
public class CategoryController {

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/category")
	public ModelAndView indexPage() {
		List<Category> listCategorys = categoryDAO.listCategorys();
		ModelAndView model = new ModelAndView("Category");
		model.addObject("category", new Category());
		model.addObject("listCategorys", listCategorys);
		return model;
	}

	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@Valid @ModelAttribute("category") Category category, BindingResult result,
			HttpServletRequest request) {
		System.out.println("h0");

		// String filename = null;
		// byte[] bytes;
		//
		// if (!supplier.getImage().isEmpty()) {
		//
		// try {
		//
		// bytes = supplier.getImage().getBytes();
		// supplierDAO.addSupplier(supplier);
		// System.out.println("Data Inserted");
		// String path =
		// request.getSession().getServletContext().getRealPath("/resources/images/"
		// + supplier.getSupplierId() + ".jpg");
		// System.out.println("Path = " + path);
		// System.out.println("File name = " +
		// supplier.getImage().getOriginalFilename());
		// File f = new File(path);
		// BufferedOutputStream bs = new BufferedOutputStream(new
		// FileOutputStream(f));
		// bs.write(bytes);
		// bs.close();
		// System.out.println("Image uploaded");
		// } catch (Exception ex) {
		// System.out.println(ex.getMessage());
		// }
		// }

		if (result.hasErrors()) {
			return "index";
		} else {
			if (category.getCategoryId() == 0) {
				categoryDAO.addCategory(category);
			} else {
				categoryDAO.updateCategory(category);
			}
		}
		System.out.println("h3");

		return "redirect:/listCategory";
	}

	@RequestMapping("/removeCategory/{id}")
	public String removeCategory(@PathVariable("id") int id) {
		categoryDAO.removeCategory(id);
		return "redirect:/listCategory";
	}

	@RequestMapping("/editCategory/{id}")
	public String editCategory(@PathVariable("id") int id, Model model) {
		model.addAttribute("category", categoryDAO.getCategoryById(id));
		model.addAttribute("listCategorys", categoryDAO.listCategorys());
		return "editCategory";
	}

	@RequestMapping(value = "/listCategory")
	public String ViewCategory(Model model) {
		System.out.println("h1");
		model.addAttribute("categoryList", this.categoryDAO.listCategorys());
		System.out.println("h2");

		return "Categorylist";
	}
}
