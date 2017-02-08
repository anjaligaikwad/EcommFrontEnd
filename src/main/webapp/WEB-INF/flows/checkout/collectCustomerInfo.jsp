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
<%@ include file="/WEB-INF/flows/checkout/Header.jsp" %>


<div class="container">
	<div class="w3-container">
		<div class="form">
			<h1>Cutomer</h1>


			<p class="lead">Customer Details:</p>


			<form:form commandName="order" class="form-horizontal">

				<h3>Cutomer Basic Info:</h3>

				<div class="form-group">

					<form:label path="cart.usercustomer.username">Name</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.username" />
						<div class="clearfix"></div>
					</div>


					<form:label path="cart.usercustomer.useremail">Email</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.useremail" />
						<div class="clearfix"></div>
					</div>


					<form:label path="cart.usercustomer.userphoneno">Phone No</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.userphoneno" />
						<div class="clearfix"></div>
					</div>

					<h3>Customer Billing Address:</h3>

					<form:label path="cart.usercustomer.billingAddress.flatno">Flat No</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.billingAddress.flatno" />
						<div class="clearfix"></div>
					</div>

					<form:label path="cart.usercustomer.billingAddress.buildingname">Building Name</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.billingAddress.buildingname" />
						<div class="clearfix"></div>
					</div>

					<form:label path="cart.usercustomer.billingAddress.localityname">Locality Name</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.billingAddress.localityname" />
						<div class="clearfix"></div>
					</div>

					<form:label path="cart.usercustomer.billingAddress.landmark">Landmark</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.billingAddress.landmark" />
						<div class="clearfix"></div>
					</div>

					<form:label path="cart.usercustomer.billingAddress.cityname">City</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.billingAddress.cityname" />
						<div class="clearfix"></div>
					</div>

					<form:label path="cart.usercustomer.billingAddress.statename">State</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.billingAddress.statename" />
						<div class="clearfix"></div>
					</div>

					<form:label path="cart.usercustomer.billingAddress.countryname">Country</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.billingAddress.countryname" />
						<div class="clearfix"></div>
					</div>

					<form:label path="cart.usercustomer.billingAddress.zipcode">Zip Code</form:label>
					<div class="key">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<form:input path="cart.usercustomer.billingAddress.zipcode" />
						<div class="clearfix"></div>
								<input type="hidden" name="_flowExecutionKey" />



							<button class="btn btn-danger pull-left" name="_eventId_cancel">Cancel</button>


							<input type="submit" value="Next"
								class="btn btn-success pull-right"
								name="_eventId_customerInfoCollected" />
						</div>
					</form:form>
					</div>
				</div>
			</div>
		</div>	


	<%@ include file="/WEB-INF/flows/checkout/Footer.jsp" %>