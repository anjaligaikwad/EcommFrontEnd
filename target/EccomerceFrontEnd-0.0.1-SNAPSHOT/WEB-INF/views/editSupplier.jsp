<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page isELIgnored="false" %>

<spring:url value="/resources/css" var="css"/>
<spring:url value="/resources/js" var="js"/>
<spring:url value="/resources/images" var="img"/>
<spring:url value="/resources/fonts" var="fonts"/>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%-- <%@ page session="false"%> --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<html>
<head>
	<title>Supplier Page</title>
	<style type="text/css">
 		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;} 
 		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;} 
 		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;} 
	.tg .tg-4eph{background-color:#f9f9f9} 
	
		
	</style>
</head>
<body>
<%@include file="Header.jsp"%>

<div class="grow">
		<div class="container">
			<h2>Edit Supplier</h2>
		</div>
	</div>
	<div class="container">
		<div class="account">
		<div class="account-pass">
		<div class="col-md-8 account-top">
	

<c:url var="addAction" value="/supplier/add" ></c:url>
<div align="center">
<form:form action="${addAction}" modelAttribute="supplier" enctype="multipart/form-data">
<table>
	<tr>
		<td>
			<form:label path="supplierId">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="supplierId" readonly="true" size="8"  />
			<form:hidden path="supplierId" />
		</td> 
	</tr>
	<tr>
	
		<td>
	
			<form:label path="supplierName">
				<spring:message text="supplierName"/>
			</form:label>
			
		</td>
		<td>
			<form:input path="supplierName" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="Address">
			
				<spring:message text="Address"/>
			</form:label>
		</td>
		<td>
			<form:input path="Address" />
		</td>
	</tr>
	

	<tr>
		<td colspan="2">
			<c:if test="${!empty supplierName}">
				<input type="submit"
					value="<spring:message text="Edit Supplier"/>" />
			</c:if>
			<c:if test="${empty supplierName}">
				<input type="submit"
					value="<spring:message text="Edit"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
</div>
</div>
</div>
</div>
</div>
<br>
<%@include file="Footer.jsp"%>