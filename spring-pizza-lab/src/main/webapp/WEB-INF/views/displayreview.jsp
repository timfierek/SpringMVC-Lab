<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tim's Pizzeria: Leave a Review</title>
	<link rel="stylesheet" href="/style.css"/>
</head>
<body>

	<h1>Leave a Review</h1>
	
	<form action="submit-review" method="get" id="reviewform">
		Your Name <input required type="text" name="name"><br><br>
		
		Comment<br>
		
		<textarea minlength="5"rows="6" cols="55" name="body" required></textarea><br><br>
		
		Rating<br><br>
		<input type="radio" name="rating" value="5" required> 5 (best) -
		<input type="radio" name="rating" value="4"> 4 -
		<input type="radio" name="rating" value="3"> 3 -
		<input type="radio" name="rating" value="2"> 2 -
		<input type="radio" name="rating" value="1"> 1 (worst)<br><br>
		
		<input type="submit" form="reviewform">
		<a href="/"> Never Mind</a>
		
	</form>
	
	

</body>
</html>