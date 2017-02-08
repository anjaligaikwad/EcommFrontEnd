<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />
<html>
<%@include file="Header.jsp"%>
<body ng-app="myapp" ng-controller="productsController">


<h4>${productObject.productId}</h4>
	<h4>${productObject.productName}</h4>

	<a ng-click="addToCart(${productObject.productId})"
		data-text="Add To Cart">Add To Cart</a>


	<script src="${js}/cartcontroller.js"></script>
</body>
</html>