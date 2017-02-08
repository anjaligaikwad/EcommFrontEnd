package com.niit.eccomercefrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.niit.ecommercebackend.dao.CartDAO;
import com.niit.ecommercebackend.dao.CartItemDAO;
import com.niit.ecommercebackend.dao.ProductDAO;
import com.niit.ecommercebackend.dao.UserDAO;
import com.niit.ecommercebackend.model.Cart;
import com.niit.ecommercebackend.model.CartItem;
import com.niit.ecommercebackend.model.Product;
import com.niit.ecommercebackend.model.UserCustomer;

@Controller
public class CartItemController {

	@Autowired
	private CartItemDAO cartitemdao;

	@Autowired
	private UserDAO userdao;

	@Autowired
	private ProductDAO productdao;

	@Autowired
	private CartDAO cartdao;

	@RequestMapping("/cart/add/{productId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value = "productId") int productId) {
		System.out.println("Hello0");
		// Is to get the username of the customer
		// User object contains details about the user -username , password,
		// activeuser or not
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		System.out.println("bla bla");
		UserCustomer user1 = userdao.get(username);
		System.out.println("bla bla bla");
		Cart cart = user1.getCart();
		System.out.println("Hello1");

		List<CartItem> cartItems = cart.getCartItems();
		System.out.println(cartItems.isEmpty());
		Product product = productdao.getProductById(productId);

		for (int i = 0; i < cartItems.size(); i++) {
			CartItem cartItem = cartItems.get(i);

			if (product.getProductId() == cartItem.getProduct().getProductId()) {
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalprice(cartItem.getQuantity() * cartItem.getProduct().getPrice());
				cartitemdao.addCartItem(cartItem);
				return;
			}
		}
		CartItem cartItem = new CartItem();
		cartItem.setQuantity(1);
		cartItem.setProduct(product);
		cartItem.setTotalprice(product.getPrice() * 1);
		cartItem.setCart(cart);
		cartitemdao.addCartItem(cartItem);
		System.out.println(cartItem.getTotalprice());
	}

	@RequestMapping("/cart/removecartitem/{cartitemid}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable(value = "cartitemid") int cartItemId) {
		System.out.println("removing item");
		cartitemdao.removeCartItem(cartItemId);
	}

	@RequestMapping("/cart/removeAllItems/{cartId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable(value = "cartId") int cartId) {
		Cart cart = cartdao.getCartByCartId(cartId);
		cartitemdao.removeAllCartItems(cart);
	}

}