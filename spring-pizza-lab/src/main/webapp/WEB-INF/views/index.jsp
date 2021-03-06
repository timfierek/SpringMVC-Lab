<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tim's Pizzeria</title>
	<link rel="stylesheet" href="/style.css"/>
</head>

<body>

	<header>
		<h1>Welcome to Tim's Pizzeria</h1>
	</header>
	
	<div class="specialty">
		<h3>Specialty Pizzas</h3>
		
		<ul class="specialtylist">
			<li><a href="/specialty-pizza?type=Anchovy%20Lover's&price=15.0">Anchovy Lover's</a></li>
			<li><a href="/specialty-pizza?type=Paleo&price=15.0">Paleo Pizza</a></li>
			<li><a href="/specialty-pizza?type=Dessert&price=15.0">Dessert Pizza</a></li>
		</ul>
	</div>
	
	<div class="custom">
		<h3>Custom Pizza</h3>
		
		<a href="/custom-pie-builder">Build your own!</a>
	</div>
	
	<div class="review">
		<h3>Leave a review</h3>
		
		<a href="/review">Click here to leave a review</a>
	</div>

</body>
</html>