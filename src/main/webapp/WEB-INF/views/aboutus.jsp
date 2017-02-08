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
<title>About Us</title>

</head>

<body>

	<%@include file="Header.jsp"%>



<style>
 

 .account h4 {
   text-align: center;
   background-color: white;
    width: 70%;
    border: 2px solid black;
    padding: 30px;
    margin: 50px;
  
}
</style>
	<div class="grow">
		<div class="container">
			<h2>ABOUT US</h2>
		</div>
	</div>

	<!--content-->

	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-12 account-top">
					<div align="center">
					<h3>All About Mattress </h3>
					
						<h4>
							We Welcome you to the ultimate shopping
							experince on the planet. It has the best products and the
							categories are so well sorted so that you can get to the product
							you want as quick as you want saving you time which can be spent
							on shopping more.
							<br>
						</h4>

				</div>
			</div>
		</div>
		</div>
		
		<!--login-->
	</div>
	<!--content-->



	<%@include file="Footer.jsp"%>
</body>
</html>
