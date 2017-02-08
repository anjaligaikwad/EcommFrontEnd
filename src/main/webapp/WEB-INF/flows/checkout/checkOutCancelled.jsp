<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page isELIgnored="false" %>

<%@ include file="/WEB-INF/flows/checkout/Header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger">Checkout cancelled!</h1>

                    <p>Your checkout process is cancelled! You may continue shopping.</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href=${allproducts} class="btn btn-default">All products</a></p>
        </section>

<%@ include file="/WEB-INF/flows/checkout/Footer.jsp" %>
