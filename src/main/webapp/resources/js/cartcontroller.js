var myapp = angular
		.module("myapp", [])
		.controller(
				'productsController',
				function($scope, $http) {
					// alert('1')
					$scope.getProducts = function() {
						$http
								// alert('2')
								.get(
										'http://localhost:8081/EccomerceFrontEnd/listproductsjson')
								.success(function(data) {
									// alert('12')
									$scope.product1 = data;
								})
					}

					$scope.addToCart = function(productId) {
//		
						
						alert('cart')
						$http.put(
								'http://localhost:8081/EccomerceFrontEnd/cart/add/'
										+ productId).success(function() {

							alert('Added Successfully to the cart!');
						})
					}

					$scope.refreshCart = function() {
						$http.get(
								'http://localhost:8081/EccomerceFrontEnd/cart/getCart/'
										+ $scope.cartId).success(
								function(data) {
									$scope.cart = data;
								})
					}

					$scope.getCart = function(cartId) {
						$scope.cartId = cartId;
						// $scope.refreshCart(cartId);
						$scope.refreshCart();
						// alert('Successfully refreshed the cart!');
					}

					$scope.removeFromCart = function(cartitemid) {
						$http.put(
								'http://localhost:8081/EccomerceFrontEnd/cart/removecartitem/'
										+ cartitemid).success(function() {
							$scope.refreshCart();
							alert('Removed Successfully from the cart!');
						})
					}

					$scope.clearCart = function() {

						$http.put(
								'http://localhost:8081/EccomerceFrontEnd/cart/removeAllItems/'
										+ $scope.cartId)

						.success(function() {

							$scope.refreshCart();
							alert('Successfully cleared the cart!');
						});
					}

					$scope.calculateGrandTotal = function() {
						var grandTotal = 0
						for (var i = 0; i < $scope.cart.cartItems.length; i++) {
							grandTotal = grandTotal
									+ $scope.cart.cartItems[i].totalprice;
							;
						}
						return grandTotal;
					}
				});