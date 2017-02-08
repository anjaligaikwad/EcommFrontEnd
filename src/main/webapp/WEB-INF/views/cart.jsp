<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="Header.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}


 .account-top {
   text-align: center;		
   background-color: white;
    width: auto;
    border: 2px solid black;
    padding: 30px;
    margin: 50px;
     margin-right: 250px;
  	
}

  	
</style>


<body ng-app="myapp" ng-controller="productsController">
	<div ng-init="getCart(${cartId})">

<div class="grow">
		<div class="container">
			<h2>Product List</h2>
		</div>
	</div>

	<div align="center">
		<input type="text" ng-model="searchConditionprod"
			placeholder="Search Products">
	</div>
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-12 account-top">
					<div align="center">
		<table class="tg">
			<tr>
				<th width="160">Product Name</th>
				<th width="120">Quantity</th>
				<th width="120">Product Price</th>
				<th width="160">Total Price</th>
				<th width="120">Action</th>
			</tr>
			<tr ng-repeat="cartItem in cart.cartItems">
				<td>{{cartItem.product.productName}}</td>
				<td>{{cartItem.quantity}}</td>
				<td>{{cartItem.product.price}}</td>
				<td>{{cartItem.totalprice}}</td>
				<td><a href="#" class="label label-danger"
					ng-click="removeFromCart(cartItem.cartitemid)"> <span
						class="glyphicon glyphicon-remove"></span> Remove
				</a></td>
			</tr>
		</table>


<!-- <div align="center"> -->

		Grand total = {{calculateGrandTotal()}} <br> <br> <a
			class="btn btn-danger pull-left" ng-click="clearCart()"> <span
			class="glyphicon glyphicon-remove-sign"> </span> Clear Cart
		</a>


							<a href="<c:url value="/order/${cartId}"></c:url>"
								class="btn btn-success pull-right"> <span
								class="glyphicon glyphicon-shopping-cart"></span> Check Out
</a>

<!-- </div> -->
</div>
</div>
</div>
</div>
</div>
</div>
<%@ include file="/WEB-INF/views/Footer.jsp" %>
		<script src="${js}/cartcontroller.js"></script>
</body>
</html>