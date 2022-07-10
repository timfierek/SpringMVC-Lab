<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tim's Pizzeria: ${type}</title>
	<link rel="stylesheet" href="/style.css"/>
</head>
<body>
	<h1>Specialty Pizza: ${type}</h1>

	<p>Name: ${type}</p>
	<p>Price: $${price}</p>
	
	<a href="/">Back to Homepage</a>
</body>
</html>