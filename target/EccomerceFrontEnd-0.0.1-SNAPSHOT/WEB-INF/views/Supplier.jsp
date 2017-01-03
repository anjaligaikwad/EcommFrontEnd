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
<!-- <!-- <style> --> -->
<!-- /* .key  input[type="text"] ,.key  input[type="password"]{ */ -->
<!-- /*     width: 87%; */ -->
<!-- /*     padding: 10px 10px; */ -->
<!-- /*     font-size: 1em; */ -->
<!-- /*     border: none; */ -->
<!-- /*     border-bottom: none; */ -->
<!-- /*     outline: none; */ -->
<!-- /*     color: #999; */ -->
<!-- /*     float: left; */ -->
<!-- /*     background: none; */ -->
<!-- /* } */ -->
<!-- /* .key i{ */ -->
<!-- /* 	    float: left; */ -->
<!-- /*     color: #999; */ -->
<!-- /*     font-size: 1.1em; */ -->
<!-- /*     padding: 13px; */ -->
<!-- /* } */ -->
<!-- /* .key { */ -->
<!-- /*     background: #fff; */ -->
<!-- /*     border: 1px solid #999; */ -->
<!-- /*     margin-bottom: 2em; */ -->
<!-- /* } */ -->
<!-- <!-- </style> --> -->

<head>
<!-- header -->
<%@include file="Header.jsp"%>

<title>Supplier Page</title>
<div class="grow">
	<div class="container">
		<h2>Supplier</h2>
	</div>
</div>


<h1>Add a Supplier</h1>

<c:url var="addAction" value="/supplier/add"></c:url>

<div class="container">
		<div class="account">
		<div class="account-pass">
		<div class="col-md-8 account-top">

<div align="center">
	<form:form action="${addAction}" commandName="supplier"
		enctype="multipart/form-data">

		<c:if test="${!empty supplierName}">


			<form:label path="id">
				<spring:message text="ID" />
			</form:label>


			<form:input path="id" readonly="true" size="8" disabled="true" />
			<form:hidden path="id" />

		</c:if>

		<div class="key">
			<form:label path="supplierName">
				<spring:message text="supplierName" />
			</form:label>
			<br>
			<form:input path="supplierName" />
			<br>
		</div>
		<div class="key">
			<form:label path="Address">
				<spring:message text="Address" />
			</form:label>
			<form:input path="Address" />
		</div>
		<br>


		<c:if test="${!empty supplierName}">
			<input type="submit" value="<spring:message text="Edit Supplier"/>" />
		</c:if>
		<c:if test="${empty supplierName}">
			<input type="submit" value="<spring:message text="Add Supplier"/>" />
		</c:if>
	</form:form>
</div>
</div>
</div>
</div>
</div>

<br>
<footer>
	<%@include file="Footer.jsp"%>
</footer>
</body>
</html>