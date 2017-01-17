//search for products 

var app = angular.module("prodapp",[])
.controller ('myprodController',function ($scope,$http){
	//alert('Yash');
	$scope.listProduct = function(){
	//alert('before contol call');
		$http.get('http://localhost:8081/EccomerceFrontEnd/listproductsjson').success(function (data){
		//	alert('after contol call');
			
			$scope.products = data;
			console.log(data);
			console.log('after contol call1');
		})
		
	}
	
})