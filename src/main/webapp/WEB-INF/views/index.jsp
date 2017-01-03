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

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ page session="false"%> --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<title>Mattress A Ecommerce Website</title>
<!-- header -->
<%@include file="Header.jsp"%>

<div class="banner">
	<div class="container">
		<script src="${js}/responsiveslides.min.js"></script>
		<script>
			$(function() {
				$("#slider").responsiveSlides({
					auto : true,
					nav : true,
					speed : 500,
					namespace : "callbacks",
					pager : true,
				});
			});
		</script>
		<div id="top" class="callbacks_container">
			<ul class="rslides" id="slider">
				<li>

					<div class="banner-text">
						<h3>Lorem Ipsum is</h3>
						<!-- 						<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.</p> -->
						<%-- 						<img src="${img}/1.jpg" > --%>
					</div>

				</li>
				<li>

					<div class="banner-text">
						<h3>There are many</h3>
						<p>Popular belief Contrary to , Lorem Ipsum is not simply
							random text. It has roots in a piece of classical Latin
							literature from 45 BC.</p>


					</div>

				</li>
				<li>
					<div class="banner-text">
						<h3>Sed ut perspiciatis</h3>
						<p>Lorem Ipsum is not simply random text. Contrary to popular
							belief, It has roots in a piece of classical Latin literature
							from 45 BC.</p>


					</div>

				</li>
			</ul>
		</div>

	</div>
</div>

<!--content-->
<div class="container">
	<div class="cont">
		<div class="content">
			<div class="content-top-bottom">
				<h2>Featured PRODUCTS</h2>
				<div class="col-md-6 men">

					<!-- 					<iframe width="512" height="418" src="https://www.youtube.com/embed/mk8IozfXStU?rel=0" frameborder="0" allowfullscreen></iframe> -->
					<iframe width="512" height="418"
						src="https://www.youtube.com/embed/QC52ZmZ2tX4" frameborder="0"
						allowfullscreen></iframe>

				</div>
				<div class="col-md-6">
					<div class="col-md1 ">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img
							class="img-responsive" src="${img}/t2.jpg" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-top top-in1   b-delay03 ">
									<span>CLARISSA</span>
								</h3>
							</div> </a>

					</div>
					<div class="col-md2">
						<div class="col-md-6 men1">
							<a href="single.html"
								class="b-link-stripe b-animate-go  thickbox"><img
								class="img-responsive" src="${img}/t3.jpg" alt="">
								<div class="b-wrapper">
									<h3 class="b-animate b-from-top top-in2   b-delay03 ">
										<span>COLORMATE</span>
									</h3>
								</div> </a>

						</div>
						<div class="col-md-6 men2">
							<a href="single.html"
								class="b-link-stripe b-animate-go  thickbox"><img
								class="img-responsive" src="${img }/t4.jpg" alt="">
								<div class="b-wrapper">
									<h3 class="b-animate b-from-top top-in2   b-delay03 ">
										<span>HERLEQUIN</span>
									</h3>
								</div> </a>

						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="content-top">
				<h1>NEW PRODUCTS</h1>
				<div class="grid-in">
					<div class="col-md-3 grid-top simpleCart_shelfItem">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img
							class="img-responsive" src="${img}/pi.jpg" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left    b-delay03 ">
									<span>TRIBECA LIVING</span>

								</h3>
							</div> </a>


						<p>
							<a href="single.html">TRIBECA LIVING</a>
						</p>
						<a href="#" class="item_add"><p class="number item_price">
								<i> </i>$500.00
							</p></a>
					</div>
					<div class="col-md-3 grid-top simpleCart_shelfItem">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img
							class="img-responsive" src="/${img}/pi1.jpg" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left    b-delay03 ">
									<span>ESSENTIAL</span>
								</h3>
							</div> </a>
						<p>
							<a href="single.html">ESSENTIAL</a>
						</p>
						<a href="#" class="item_add"><p class="number item_price">
								<i> </i>$500.00
							</p></a>
					</div>
					<div class="col-md-3 grid-top simpleCart_shelfItem">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img
							class="img-responsive" src="${img}/pi2.jpg" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left    b-delay03 ">
									<span>CLARISSA</span>
								</h3>
							</div> </a>
						<p>
							<a href="single.html">CLARISSA</a>
						</p>
						<a href="#" class="item_add"><p class="number item_price">
								<i> </i>$500.00
							</p></a>
					</div>
					<div class="col-md-3 grid-top">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox"><img
							class="img-responsive" src="${img}/pi4.jpg" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left    b-delay03 ">
									<span>LITTLE HOME</span>
								</h3>
							</div> </a>
						<p>
							<a href="single.html">LITTLE HOME</a>
						</p>
						<a href="#" class="item_add"><p class="number item_price">
								<i> </i>$500.00
							</p></a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!----->
	</div>
	<!---->
</div>
<footer>
	<%@include file="Footer.jsp"%>
</footer>
</body>
</html>
