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

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ page session="false"%> --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- header -->
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
</style>
<body ng-app="prodapp" ng-controller="myprodController"
	ng-init="listProduct()">

	<div class="grow">
		<div class="container">
			<h2>Product List{{210+210}}</h2>
		</div>
	</div>

	<div align="center">
		<input type="text" ng-model="searchConditionprod"
			placeholder="Search Products">
	</div>

	<div align="center">

		<%-- <c:if test="${!empty listProduct}"> --%>
		<br>
		<table class="tg">

			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="120">Brand</th>
				<th width="120">image</th>
				<th width="120">price</th>
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</security:authorize>
			</tr>

			<%-- 	<c:forEach items="${productList}" var="product" > --%>
			<tr ng-repeat="p in products | filter:searchConditionprod">

				<td>{{p.productId}}</td>
				<td><a href="<c:url value='/infoprod/{{p.productId}}'/>">{{p.productName}}</td>
				<td>{{p.brand}}</td>
				<c:url value="/resources/images/{{p.productId}}.jpg" var="imgg"></c:url>
				<td><img src="${imgg}" hieght="80" width="80" /></td>

				<td>{{p.price}}</td>
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<td><a href="<c:url value='/edit/{{p.productId}}' />">Edit</a></td>
					<td><a href="<c:url value='/remove/{{p.productId}}' />">Delete</a></td>
				</security:authorize>
			</tr>

			<%-- 	</c:forEach> --%>
		</table>
		<%-- </c:if> --%>
	</div>
	<br>
	<%@include file="Footer.jsp"%>
	<br>
	<script src="${js}/App.js"></script>
</body>
</html>