<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags" %>

<spring:url value="/resources/css" var="css"/>
<spring:url value="/resources/js" var="js"/>
<spring:url value="/resources/images" var="img"/>
<spring:url value="/resources/fonts" var="fonts"/>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%-- <%@ page session="false"%> --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>

<!-- header -->
<%@include file="Header.jsp"%>
<!-- <!--  <style>  --> -->
<!-- /* .contact-in{  */ -->
<!-- /*      background-color: lightgrey; */ -->
<!-- /*      width: 300px;  */ -->
<!-- /*      border: 25p;  */ -->
<!-- /*      margin: 25px; */ -->
<!-- /*  }  */ -->
<!-- <!--   </style>  --> -->

	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Contact</h2>
		</div>
	</div>
	<!-- grow -->
<!--content-->
<div class="contact">
			
			<div class="container">
			<div class="contact-form">
				
				<div class="col-md-8 contact-grid">
					<!-- <form action="#" method="post">
						<input type="text" value="Name" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Name';}">
					
						<input type="text" value="Email" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Email';}">
						<input type="text" value="Subject" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Subject';}">
						
						<textarea cols="77" rows="6" value=" " onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
						<div class="send">
							<input type="submit" value="Send">
						</div>
					</form> -->
				</div>
				<div class="col-md-4 contact-in">

						<div class="address-more">
						<h4>Address</h4>
							<p>The company name,</p>
							<p>Lorem ipsum dolor,</p>
							<p>Glasglow Dr 40 Fe 72. </p>
						</div>
						<div class="address-more">
						<h4>Address1</h4>
							<p>Tel:1115550001</p>
							<p>Fax:190-4509-494</p>
							<p>Email:<a href="mailto:contact@example.com"> contact@example.com</a></p>
						</div>
					
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>
			</div>
		</div>
		
	</div>
<!--//content-->
<footer>
			<%@include file="Footer.jsp"%>
		</footer>
</body>
</html>
			