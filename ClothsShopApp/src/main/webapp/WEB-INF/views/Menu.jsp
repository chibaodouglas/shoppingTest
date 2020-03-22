<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cloths Shop App</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/pc_reset.css"/>"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/pc_home.css"/>"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/pc_styles1.css?v=12423122"/>"
	rel="stylesheet" />

<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<%@ page isELIgnored="false"%>
</head>
<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h1>This is the main menu. You are NOT an admin.</h1>
			<hr />
			<table class="table table-striped table-bordered">
				<tr>
					<td><b>Email </b>: ${user.email}</td>
				</tr>
				<tr>
					<td><b>Name </b> : ${user.userName}</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- Header: horizontal ul li for navigation & controls -->
	<ul class="control-menu">
		<li><a href="home">Home</a></li>
		<li><a href="browse">Browse</a></li>
		<li><a href="account">Account</a></li>
		<li><a href="logout">Log Out</a></li>
	</ul>

	<!-- Display: All items in stock -->
	<div class="grid-container">
		<!-- Each slot links to the page itemDetail?id=[productID] -->
		<c:forEach var="product" items="${allProducts}">
			<div class="grid-slot">
				<a href="/itemDetail?id=${product.productID}">					
					<img src="<c:url value="/resources/img/${product.imgURL}"/>" alt="imgNOTFOUND"> <!-- image -->
					${product.productName}<!-- name -->
				</a>
			</div>
		</c:forEach>
	</div>

</body>
</html>
