<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" /><%@ taglib
	prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/flows/checkout/Header.jsp" %>

<%@ page isELIgnored="false"%>
<div class="container">
	<div class="w3-container">
		<div class="form">
			<h1>Cutomer</h1>


			<p class="lead">Customer Details:</p>



					<form:form commandName="order" class="form-horizontal">

						<h3>Customer Shipping Address:</h3>
						<div class="form-group">


							<form:label path="cart.usercustomer.shippingAddress.flatno">Flat No</form:label>
							<div class="key">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
								<form:input path="cart.usercustomer.shippingAddress.flatno" />
								<div class="clearfix"></div>
							</div>


							<form:label path="cart.usercustomer.shippingAddress.buildingname">Building Name</form:label>
							<div class="key">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
								<form:input
									path="cart.usercustomer.shippingAddress.buildingname" />
								<div class="clearfix"></div>
							</div>

							<form:label path="cart.usercustomer.shippingAddress.localityname">Locality Name</form:label>
							<div class="key">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
								<form:input
									path="cart.usercustomer.shippingAddress.localityname" />
								<div class="clearfix"></div>
							</div>

							<form:label path="cart.usercustomer.shippingAddress.landmark">Landmark</form:label>
							<div class="key">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
								<form:input path="cart.usercustomer.shippingAddress.landmark" />
								<div class="clearfix"></div>
							</div>

							<form:label path="cart.usercustomer.shippingAddress.cityname">City</form:label>
							<div class="key">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
								<form:input path="cart.usercustomer.shippingAddress.cityname" />
								<div class="clearfix"></div>
							</div>

							<form:label path="cart.usercustomer.shippingAddress.statename">State</form:label>
							<div class="key">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
								<form:input path="cart.usercustomer.shippingAddress.statename" />
								<div class="clearfix"></div>
							</div>

							<form:label path="cart.usercustomer.shippingAddress.countryname">Country</form:label>
							<div class="key">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
								<form:input path="cart.usercustomer.shippingAddress.countryname" />
								<div class="clearfix"></div>
							</div>

							<form:label path="cart.usercustomer.shippingAddress.zipcode">Zip Code</form:label>
							<div class="key">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
								<form:input path="cart.usercustomer.shippingAddress.zipcode" />
								<div class="clearfix"></div>
							</div>
							<input type="hidden" name="_flowExecutionKey" />


							<div align="center">
								<button class="btn btn-default"
									name="_eventId_backToCollectCustomerInfo">Back</button>
							</div>
							<br>



							<button class="btn btn-danger pull-left" name="_eventId_cancel">Cancel</button>



							<input type="submit" value="Next"
								class="btn btn-success pull-right"
								name="_eventId_shippingDetailCollected" />
						</div>
					</form:form>
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/flows/checkout/Footer.jsp" %>