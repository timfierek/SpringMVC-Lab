<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tim's Pizzeria: Custom Pizza Configurator</title>
	<link rel="stylesheet" href="/style.css"/>
</head>
<body>
	<h1>Build Your Own Pizza</h1>
	
	<form id="pizzaform" action="submit-custom-pie-builder" method="get">
		
		<label for="size">Size</label>
	 	<select name="size"> 
			<option value="small">Small</option>
			<option value="medium">Medium</option>
			<option value="large">Large</option>
		</select><br><br>
		
		How many toppings? <input required name="toppingsCount"/><br><br>
		
		<input type="checkbox" name="gf" value="true"/>Gluten-Free Crust? ($2.00 extra) <br><br>
		
		Special Instructions (Optional)<br>
		<textarea rows="4" cols="35" name="instructions"></textarea><br><br>
	
		<input type="submit" form="pizzaform" value="Calculate Price"/>
		<a href="/"> Never Mind</a>
		
		
		
	</form>
	
	
</body>
</html>