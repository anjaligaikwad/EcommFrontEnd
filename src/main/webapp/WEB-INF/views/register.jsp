<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div class=" container">
		<div class=" register">

			<c:url var="addAction" value="/register/add"></c:url>
			<form:form action="saveuser" commandName="Userdata" method="post">
				<form:input type="text" path="User_Id" placeholder="UserID"></form:input>
				<form:input type="text" path="User_Name" placeholder="UserName"></form:input>
				<form:input type="email" path="User_Email" placeholder="Email"></form:input>
				<form:input type="password" path="Password" placeholder="Password"></form:input>
				<br>
				<form:input type="text" path="Phone_Number" placeholder="MobileNo."></form:input>
				<input type="submit" value="Register">
			</form:form>
		</div>
	</div>
	</div>
	<%@include file="Footer.jsp"%>
	</body>
	</head>
	