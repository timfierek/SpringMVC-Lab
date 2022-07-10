<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tim's Pizzeria: Custom Pie Summary</title>
	<link rel="stylesheet" href="/style.css"/>
</head>
<body>
	<h1>Your Pizza</h1>
	
	<p>Size: ${size}</p>
	
	<p>Toppings: ${toppingsCount}</p>
	
	<p>Gluten-Free Crust: ${gf}</p>
	
	<p>Specialty Instructions: ${instructions}</p>
	
	<p>Price: $${price}</p>
	
	<a href = "/custom-pie-builder">Build another pizza</a>
	<a href = "/"> | Back to Homepage</a>
</body>
</html>