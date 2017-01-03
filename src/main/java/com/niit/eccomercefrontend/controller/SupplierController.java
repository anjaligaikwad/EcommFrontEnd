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

import com.niit.ecommercebackend.dao.SupplierDAO;
import com.niit.ecommercebackend.model.Supplier;

	@Controller
	public class SupplierController {
		
		@Autowired
		SupplierDAO supplierDAO;
		
		@RequestMapping("/supplier")
		public ModelAndView indexPage()
		{
			List<Supplier> listSuppliers=supplierDAO.listSuppliers();
			ModelAndView model=new ModelAndView("Supplier");
			model.addObject("supplier",new Supplier());
			model.addObject("listSuppliers", listSuppliers);
			
			
			return model;
		}
		
		@RequestMapping(value= "/supplier/add", method = RequestMethod.POST)
		public String addSupplier(@Valid @ModelAttribute("supplier") Supplier supplier,BindingResult result,HttpServletRequest request)
		{
			System.out.println("h0");

			
//			String filename = null;
//			byte[] bytes;
//			
//			if (!supplier.getImage().isEmpty()) {
//
//				try {
//					
//					bytes = supplier.getImage().getBytes();
//					supplierDAO.addSupplier(supplier);
//					System.out.println("Data Inserted");
//					String path = request.getSession().getServletContext().getRealPath("/resources/images/" + supplier.getSupplierId() + ".jpg");
//					System.out.println("Path = " + path);
//					System.out.println("File name = " + supplier.getImage().getOriginalFilename());
//					File f = new File(path);
//					BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
//					bs.write(bytes);
//					bs.close();
//					System.out.println("Image uploaded");
//				} catch (Exception ex) {
//					System.out.println(ex.getMessage());
//				}
//			}
			
			if(result.hasErrors())
			{
				return "index";
			}
			else{
				if (supplier.getSupplierId() == 0) {
					supplierDAO.addSupplier(supplier);
				} else {
					supplierDAO.updateSupplier(supplier);
				}
			}
				System.out.println("h3");

				return "redirect:/listsuppliers";
			}
		
		@RequestMapping("/removeSupplier/{id}")
		public String removeSupplier(@PathVariable("id") int id)
		{
			supplierDAO.removeSupplier(id);
			return "redirect:/listsuppliers";
		}
		
		@RequestMapping("/editSupplier/{id}")
		public String editSupplier(@PathVariable("id") int id, Model model)
		{
			model.addAttribute("supplier", supplierDAO.getSupplierById(id));
	        model.addAttribute("listSuppliers", supplierDAO.listSuppliers());
	        return "editSupplier";
		}
		
		@RequestMapping(value ="/listsuppliers")
		public String ViewSupplier(Model model){
			System.out.println("h1");
			model.addAttribute("supplierList",this.supplierDAO.listSuppliers());
			System.out.println("h2");

			return "Supplierlist";
		}
	}

