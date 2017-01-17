<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%><link href="${css}/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${js}/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${css}/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
<!-- start menu -->
<link href="${css}/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${js}/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="${js}/simpleCart.min.js"> </script>
<!-- <meta charset="utf-8"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<%-- <link rel="stylesheet" href="${css}/bootstrap.min.css"> --%>
<%-- <script src="${js}/jquery.min.js"></script> --%>
<%-- <script src="${js}/bootstrap.min.js"></script> --%>
</head>
<body>
<!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
                           <div class="social">
				<ul>
					<li><a href="https://www.facebook.com/"><i class="facebok"> </i></a></li>
					<li><a href="https://twitter.com/"><i class="twiter"> </i></a></li>
					<li><a href="https://accounts.google.com/"><i class="inst"> </i></a></li>
					<li><a href="https://www.instagram.com/"><i class="goog"> </i></a></li>
						<div class="clearfix"></div>	
				</ul>
			</div>
			<div class="header-left">
                                            <ul>
                                        	
					 <c:if test="${pageContext.request.userPrincipal.name != null }">

							<li><a>Welcome:
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value='/Logout'/>">Logout</a></li>

						</c:if>




						<!-- when user not logged in -->
						<c:if test="${pageContext.request.userPrincipal.name == null }">
							<li><a href="<c:url value='/Login'/>">Login</a></li>
							<li><a href="<c:url value='/register'/>"> Create Account
							</a></li>
						</c:if>

					</ul>
			
<!-- 				<div class="search-box"> -->
<!-- 					<div id="sb-search" class="sb-search"> -->
<%-- 						<form action="#" method="post"> --%>
<!-- 							<input class="sb-search-input" placeholder="Enter your search term..." type="search"  id="search"> -->
<!-- 							<input class="sb-search-submit" type="submit" value=""> -->
<!-- 							<span class="sb-icon-search"> </span> -->
<%-- 						</form> --%>
                                            
<!-- 					</div> -->
<!-- 				</div> -->
			
<!-- search-scripts -->
					<script src="${js}/classie.js"></script>
					<script src="${js}/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->

				<div class="ca-r">
					<div class="cart box_1">
						<a href="checkout">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> </div>
							<img src="${img }/cart.png" alt=""/></h3>
						</a>
						

					          
                                       </div>
				</div>
					<div class="clearfix"> </div>
			</div>
				
		</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<h1><a href="index">Mattress</a></h1>
				</div>
		  <div class=" h_menu4">
				<ul class="memenu skyblue">
					  <li><a class="color8" href="index">HOME</a></li>	
				      <li><a class="color1" href="listproducts">PRODUCTS</a></li>
 				      					
				    <security:authorize access="hasRole('ROLE_ADMIN')">
				    <li><a class="color1" href="product">ADMIN</a>
				    
				      	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="listproducts">Product list</a></li>
										<li><a href="listsuppliers">Supplier List</a></li>
										<li><a href="#">Category List</a></li>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="product">Add Product</a></li>
										<li><a href="supplier">Add Supplier</a></li>
										<li><a href="category">Add Category</a></li>
										
									</ul>	
								</div>							
							</div>
							</div>
							</div>
						
							</li>
				   </security:authorize>
				<li><a class="color4" href="AboutUs">ABOUT US</a></li>	
			
				<li><a class="color6" href="contact">CONTACT</a></li>
			  </ul> 
			</div>
				
				<div class="clearfix"> </div>
		</div>
		</div>
	</div>
	
	<script src="${js}/angular.min.js"></script>