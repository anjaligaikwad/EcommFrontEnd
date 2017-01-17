<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<%-- <%@ page session="falsse"%> --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
</head>
<body>
	<%@include file="Header.jsp"%>

	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Register</h2>
		</div>
	</div>
	<!-- grow -->
	<!--content-->

	<div class="container">
		<div class="col-md-8 account-top">
			<div class=" register">

				<c:url var="addAction" value="/register/add"></c:url>
				<form:form action="saveuser" commandName="Userdata" method="post">
					<form:input type="text" path="User_Id" placeholder="UserID"></form:input>
					<form:input type="text" path="User_Name" placeholder="UserName"></form:input>
					<form:input class="form-control" type="email" path="User_Email"
						placeholder="Email"></form:input>
					<form:input type="password" path="Password" placeholder="Password"></form:input>
					<form:input type="text" path="Phone_Number" placeholder="MobileNo."></form:input>

					<h3>Billing address</h3>
					<form:input type="text" path="billingAddress.flatno"
						placeholder="flat no"></form:input>
					<form:input type="text" path="billingAddress.buildingname"
						placeholder="building name"></form:input>
					<form:input type="text" path="billingAddress.localityname"
						placeholder="locality name"></form:input>
					<form:input type="text" path="billingAddress.landmark"
						placeholder="landmark"></form:input>
					<form:input type="text" path="billingAddress.cityname"
						placeholder="city name"></form:input>
					<form:input type="text" path="billingAddress.statename"
						placeholder="state name"></form:input>
					<form:input type="text" path="billingAddress.countryname"
						placeholder="country name"></form:input>
					<form:input type="text" path="billingAddress.zipcode"
						placeholder="zipcode"></form:input>


					<h3>Shipping address</h3>
					<form:input type="text" path="shippingAddress.flatno"
						placeholder="flat no"></form:input>
					<form:input type="text" path="shippingAddress.buildingname"
						placeholder="building name"></form:input>
					<form:input type="text" path="shippingAddress.localityname"
						placeholder="locality name"></form:input>
					<form:input type="text" path="shippingAddress.landmark"
						placeholder="landmark"></form:input>
					<form:input type="text" path="shippingAddress.cityname"
						placeholder="city name"></form:input>
					<form:input type="text" path="shippingAddress.statename"
						placeholder="state name"></form:input>
					<form:input type="text" path="shippingAddress.countryname"
						placeholder="country name"></form:input>
					<form:input type="text" path="shippingAddress.zipcode"
						placeholder="zipcode"></form:input>

					<input type="submit" value="Register">
				</form:form>
			</div>
		</div>
	</div>
	</div>
	</div>

	<%@include file="Footer.jsp"%>
</body>
</head>
