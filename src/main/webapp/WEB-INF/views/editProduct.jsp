<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ page session="false"%> --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<html>

<head>
<title>Product Page</title>
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

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
<body>
	<%@include file="Header.jsp"%>
	<div class="grow">
		<div class="container">
			<h2>Edit Product</h2>
		</div>
	</div>

	<h1>Add a Product</h1>

	<%-- 	<c:url var="addAction" value="/product/add"></c:url> --%>

	<c:set var="contextPath" value="${pageContext.request.contextPath }" />


	<form:form action="${contextPath}/product/add" modelAttribute="product" method="post"
		enctype="multipart/form-data">
		<table>

			<tr>
				<td><form:label path="productId">
						<spring:message text="productId" />
					</form:label></td>
				<td><form:input path="productId" readonly="true" size="8" /></td>
			</tr>

			<tr>
				<td><form:label path="productName">
						<spring:message text="productName" />
					</form:label></td>
				<td><form:input path="productName" /></td>
			</tr>
			<tr>
				<td><form:label path="Brand">
						<spring:message text="Brand" />
					</form:label></td>
				<td><form:input path="Brand" /></td>
			</tr>

			<!-- 	<tr> -->
			<!-- 		<td> -->
			<%-- 			<form:label path="Category"> --%>
			<%-- 				<spring:message text="Category"/> --%>
			<%-- 			</form:label> --%>
			<!-- 		</td> -->
			<!-- 		<td> -->
			<%-- 			<form:input path="Category" /> --%>
			<!-- 		</td> -->
			<!-- 	</tr> -->

			<tr>
				<td><form:label path="Price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="Price" /></td>
			</tr>


			<tr>
				<td><form:label path="image">
						<spring:message text="Image" />
					</form:label></td>
				<td><form:input type="file" path="image" /> <form:errors
						path="image" /></td>
			</tr>


			<tr>
				<td colspan="2">
					<%-- 			<c:if test="${!empty productName}"> --%> <input
					type="submit" value="<spring:message text="Edit Product"/>" /> <%-- 			</c:if> --%>
					<%-- 			<c:if test="${empty productName}"> --%> <!-- 				<input type="submit" -->
					<%-- 					value="<spring:message text="Add Product"/>" /> --%> <%-- 			</c:if> --%>
				</td>
			</tr>
		</table>
	</form:form>
	<br>
	<%@include file="Footer.jsp"%>
</body>
</html>