<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/home.css" />
<meta charset="ISO-8859-1">
<title>project1</title>
</head>
<body>
	<div class="container">
		<header class="header">
			<h1>Pizza Place</h1>
		</header>
		<nav class="nav">
			<a href="/newOrder">Start Order</a>
		</nav>
		<div class="content">
			<div class="food">
				<a href="/newOrder" id="image"><img src="/img/lunch2.jfif" alt="picture of a pizza" class="special"></a>
				<div>
					<h3>Try our Lunch Special!</h3>
					<p>Two slices of pizza, one side, and a drink for only 9.99.</p>
				</div>
			</div>
			<div class="food">	
				<a href="/newOrder" id="image"><img src="/img/specialty.jfif" alt="picture of a pizza" class="special"></a>
				<div>
					<h3>Specialty pizza's</h3>
					<p>Chef made Pizza's oven grilled to perfection 9.99 everyday.</p>
				</div>
			</div>
			<div class="food">	
				<a href="/newOrder" id="image"><img src="/img/family.jfif" alt="picture of a pizza" class="special"></a>
				<div>
					<h3>Family Special</h3>
					<p>Three large pizza's of your choice, and a choice of salad, breadsticks or a desert for only 34.99.</p>
				</div>
			</div>
		</div>
		<footer class="footer">
			<img src="/img/github.png" alt="github logo" class="github" />
			<p>cv-bit.github</p>
		</footer>
	</div>
</body>
</html>