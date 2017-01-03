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

<!DOCTYPE html>
<html lang="en">
<head>
<title>Yaruis About Us</title>

</head>

<body>

	<%@include file="Header.jsp"%>




	<div class="grow">
		<div class="container">
			<h2>About US</h2>
		</div>
	</div>

	<!--content-->
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-8 account-top">
					<h3>About Yaruis</h3>
					<form>
						<h1>Hello Everyone!</h1>
						<br>
						<h4>
							We at <b> Yaruis</b> welcome you to the ultimate shopping
							experince on the planet! It has the best products and the
							categories are so well sorted so that you can get to the product
							you want as quick as you want saving you time which can be spent
							on shopping more!
						</h4>

				</div>
			</div>
		</div>
		<!--login-->
	</div>
	<!--content-->



	<%@include file="Footer.jsp"%>
</body>
</html>
