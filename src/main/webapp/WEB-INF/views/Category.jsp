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
<!DOCTYPE html>
<html lang="en">

<head>
<title>Mattress Category</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Category</h2>
		</div>
	</div>
	<!-- grow -->
	<!--content-->
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-8 account-top">
					<h3>Category</h3>
					<c:url var="addAction" value="/category/add"></c:url>
					<form:form action="${addAction}" commandName="category">
<%-- 						<form:label path="categoryId">Category ID</form:label> --%>
<!-- 						<div class="key"> -->
<!-- 							<i class="glyphicon glyphicon-qrcode" aria-hidden="true"></i> -->
<%-- 							<form:input type="text" path="categoryId" /> --%>
<!-- 							<div class="clearfix"></div> -->
<!-- 						</div> -->
						<form:label path="categoryName">Category Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-tag" aria-hidden="true"></i>
							<form:input path="categoryName" />
							<div class="clearfix"></div>
						</div>

						<form:label path="desc">Category Description</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i>
							<form:input path="desc" />
							<div class="clearfix"></div>


						</div>
						<input type="submit" value="Submit">
				</div>

			</div>

		</div>
	</div>
	<!--login-->
	</div>
	<!--content-->
	</form:form>



	
	<%@include file="Footer.jsp"%>

</body>
</html>