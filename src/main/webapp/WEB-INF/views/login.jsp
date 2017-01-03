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
<body>
<!--header-->
	<%@include file="Header.jsp"%>
	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Login</h2>
		</div>
	</div>
	<!-- grow -->
<!--content-->
<div class="container">
		<div class="account">
		<div class="account-pass">
		<div class="col-md-8 account-top">
			<form action="<c:url value="j_spring_security-check"/> "method="post">
				
			<div> 	
				<Span>User name</span>
				<input type="text" name="j_User_id"> 
			</div>
			<div> 
				<span>Password</span>
				<input type="password" name ="j_User_password" >
			</div>				
				<input type="submit" value="Login"> <input type="hidden" name="${csrf.parametername}" value="${_csrf.token}" />
			</form>
		</div>
		<div class="col-md-4 left-account ">
			<a href="single.html"><img class="img-responsive " src="images/s1.jpg" alt=""></a>
			<div class="five">
			<h2>25% </h2><span>discount</span>
			</div>
			<a href="register.html" class="create">Create an account</a>

		</div>
	
	</div>
	</div>

</div>
	<%@include file="Footer.jsp"%>
</body>
</html>
			